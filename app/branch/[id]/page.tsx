'use client';

import { useEffect, useState } from 'react';
import Link from 'next/link';
import { useParams } from 'next/navigation';

interface MenuItem {
    dishname: string;
    price: number;
    category: string;
    availability: boolean;
    image_url: string | null;
}

interface Menu {
    menuid: number;
    kind: string;
    items: MenuItem[];
}

const menuOrder = {
    'breakfast': 1,
    'lunch': 2,
    'snacks': 3,
    'dinner': 4
};

const categoryColors = {
    'beverage': {
        text: 'text-blue-600',
        bg: 'bg-blue-50'
    },
    'gravy': {
        text: 'text-orange-600',
        bg: 'bg-orange-50'
    },
    'steam': {
        text: 'text-green-600',
        bg: 'bg-green-50'
    },
    'fried': {
        text: 'text-yellow-600',
        bg: 'bg-yellow-50'
    },
    'soup': {
        text: 'text-purple-600',
        bg: 'bg-purple-50'
    },
    'default': {
        text: 'text-red-600',
        bg: 'bg-red-50'
    }
};

const getCategoryStyle = (category: string) => {
    const lowerCategory = category.toLowerCase();
    const style = Object.entries(categoryColors).find(([key]) =>
        lowerCategory.includes(key)
    );
    return style ? style[1] : categoryColors.default;
};

export default function BranchMenu() {
    const { id } = useParams();
    const [menus, setMenus] = useState<Menu[]>([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);
    const [selectedItems, setSelectedItems] = useState<Set<string>>(new Set());

    useEffect(() => {
        const fetchMenuData = async () => {
            try {
                const response = await fetch(`/api/branch/${id}/menu`);
                if (!response.ok) {
                    throw new Error('Failed to fetch menu data');
                }
                const data = await response.json();
                // Sort menus according to the specified order
                const sortedMenus = data.sort((a: Menu, b: Menu) => {
                    return (menuOrder[a.kind as keyof typeof menuOrder] || 999) -
                        (menuOrder[b.kind as keyof typeof menuOrder] || 999);
                });
                setMenus(sortedMenus);
            } catch (err) {
                setError(err instanceof Error ? err.message : 'An error occurred');
            } finally {
                setLoading(false);
            }
        };

        fetchMenuData();
    }, [id]);

    const handleItemSelect = (dishname: string) => {
        const newSelectedItems = new Set(selectedItems);
        if (newSelectedItems.has(dishname)) {
            newSelectedItems.delete(dishname);
        } else {
            newSelectedItems.add(dishname);
        }
        setSelectedItems(newSelectedItems);
    };

    if (loading) {
        return (
            <div className="min-h-screen flex items-center justify-center">
                <div className="text-xl">Loading...</div>
            </div>
        );
    }

    if (error) {
        return (
            <div className="min-h-screen flex items-center justify-center">
                <div className="text-xl text-red-500">Error: {error}</div>
            </div>
        );
    }

    return (
        <div className="min-h-screen bg-gradient-to-b from-gray-50 to-white">
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
                <div className="flex items-center justify-between mb-12">
                    <div className="flex items-center space-x-4">
                        <Link
                            href="/"
                            className="flex items-center justify-center w-10 h-10 rounded-full bg-red-50 hover:bg-red-100 transition-colors"
                        >
                            <svg
                                className="w-6 h-6 text-red-600"
                                fill="none"
                                stroke="currentColor"
                                viewBox="0 0 24 24"
                            >
                                <path
                                    strokeLinecap="round"
                                    strokeLinejoin="round"
                                    strokeWidth="2"
                                    d="M15 19l-7-7 7-7"
                                />
                            </svg>
                        </Link>
                        <h1 className="text-5xl font-bold bg-gradient-to-r from-red-600 to-red-800 bg-clip-text text-transparent">
                            Menu
                        </h1>
                        <div className="h-12 w-1 bg-gradient-to-b from-red-600 to-red-800 rounded-full"></div>
                    </div>
                    <div className="flex items-center space-x-2 bg-red-50 px-4 py-2 rounded-full">
                        <span className="text-sm font-medium text-gray-600">Selected Items:</span>
                        <span className="text-lg font-bold text-red-600">{selectedItems.size}</span>
                    </div>
                </div>

                {menus.map((menu, index) => (
                    <div key={menu.menuid} className="mb-16">
                        <div className="flex items-center mb-8">
                            <h2 className="text-3xl font-bold bg-gradient-to-r from-gray-800 to-gray-600 bg-clip-text text-transparent capitalize">
                                {menu.kind} Menu
                            </h2>
                            <div className="ml-4 h-px flex-1 bg-gradient-to-r from-gray-200 to-transparent"></div>
                        </div>
                        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                            {menu.items.map((item) => {
                                const categoryStyle = getCategoryStyle(item.category);
                                return (
                                    <button
                                        key={item.dishname}
                                        onClick={() => item.availability && handleItemSelect(item.dishname)}
                                        className={`group w-full bg-white rounded-xl shadow-lg overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-xl p-6 text-left ${!item.availability ? 'opacity-50 cursor-not-allowed' : 'cursor-pointer'
                                            }`}
                                    >
                                        <div className="flex items-start justify-between">
                                            <div className="flex-1">
                                                <h3 className="text-xl font-semibold text-gray-800 group-hover:text-red-600 transition-colors">
                                                    {item.dishname}
                                                </h3>
                                                <p className={`text-sm font-medium mt-1 px-2 py-1 rounded-full inline-block ${categoryStyle.text} ${categoryStyle.bg}`}>
                                                    {item.category}
                                                </p>
                                                <p className="text-xl font-bold text-red-600 mt-3">
                                                    ₹{item.price}
                                                </p>
                                            </div>
                                            <div className="flex items-center">
                                                {item.availability ? (
                                                    <div
                                                        className={`w-7 h-7 rounded-full border-2 flex items-center justify-center transition-colors ${selectedItems.has(item.dishname)
                                                            ? 'border-red-600 bg-red-600'
                                                            : 'border-gray-300 group-hover:border-red-600'
                                                            }`}
                                                    >
                                                        {selectedItems.has(item.dishname) && (
                                                            <svg
                                                                className="w-4 h-4 text-white"
                                                                fill="none"
                                                                stroke="currentColor"
                                                                viewBox="0 0 24 24"
                                                            >
                                                                <path
                                                                    strokeLinecap="round"
                                                                    strokeLinejoin="round"
                                                                    strokeWidth="2"
                                                                    d="M5 13l4 4L19 7"
                                                                />
                                                            </svg>
                                                        )}
                                                    </div>
                                                ) : (
                                                    <span className="text-sm text-red-600">Out of Stock</span>
                                                )}
                                            </div>
                                        </div>
                                    </button>
                                );
                            })}
                        </div>
                        {index < menus.length - 1 && (
                            <div className="my-8">
                                <div className="h-1 bg-gradient-to-r from-transparent via-red-200 to-transparent"></div>
                            </div>
                        )}
                    </div>
                ))}

                <div className="fixed bottom-4 right-4">
                    <Link
                        href={`/order?items=${Array.from(selectedItems).join(',')}`}
                        className={`px-8 py-4 rounded-xl text-white font-semibold text-lg shadow-lg transform transition-all duration-300 ${selectedItems.size > 0
                            ? 'bg-red-600 hover:bg-red-700 hover:scale-105'
                            : 'bg-gray-400 cursor-not-allowed'
                            }`}
                    >
                        Proceed to Order ({selectedItems.size} items)
                    </Link>
                </div>
            </div>
        </div>
    );
} 