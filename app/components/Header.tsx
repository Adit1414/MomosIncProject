'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';

interface Branch {
    branchid: number;
    branch_name: string;
    address: string;
    states: string;
    contact: string;
}

interface HeaderProps {
    onLocationChange: (state: string) => void;
    onSearch: (query: string) => void;
    branches: Branch[];
}

export default function Header({ onLocationChange, onSearch, branches }: HeaderProps) {
    const [selectedState, setSelectedState] = useState<string>('States');
    const [searchQuery, setSearchQuery] = useState<string>('');
    const [uniqueStates, setUniqueStates] = useState<string[]>([]);

    useEffect(() => {
        // Extract unique states from branches
        const states = [...new Set(branches.map(branch => branch.states))];
        setUniqueStates(states);
    }, [branches]);

    const handleStateChange = (state: string) => {
        setSelectedState(state);
        if (state !== 'States') {
            onLocationChange(state);
        } else {
            onLocationChange(''); // Empty string to show all branches
        }
    };

    const handleSearch = (query: string) => {
        setSearchQuery(query);
        onSearch(query);
    };

    return (
        <header className="bg-white shadow-md">
            <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                <div className="flex items-center justify-between h-20">
                    <div className="flex items-center space-x-4">
                        <Link href="/query" className="flex items-center space-x-2">
                            <h1 className="text-4xl font-bold bg-gradient-to-r from-red-600 to-red-800 bg-clip-text text-transparent">
                                MOMOs INC
                            </h1>
                            <div className="h-10 w-1 bg-gradient-to-b from-red-600 to-red-800 rounded-full"></div>
                        </Link>
                    </div>

                    <div className="flex-1 flex items-center justify-center px-4">
                        <div className="max-w-md w-full">
                            <div className="relative">
                                <input
                                    type="text"
                                    placeholder="Search for dishes..."
                                    value={searchQuery}
                                    onChange={(e) => handleSearch(e.target.value)}
                                    className="w-full pl-10 pr-4 py-2.5 border border-gray-300 rounded-full focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black placeholder-gray-400 bg-gray-50"
                                />
                                <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                                    <svg className="h-5 w-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                                    </svg>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div className="flex items-center space-x-4">
                        <div className="relative group">
                            <select
                                value={searchQuery ? "disabled" : selectedState}
                                onChange={(e) => handleStateChange(e.target.value)}
                                disabled={!!searchQuery}
                                className={`appearance-none pl-4 pr-10 py-2.5 border rounded-full focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent cursor-pointer transition-colors ${searchQuery
                                    ? 'bg-gray-100 border-gray-200 text-gray-400 cursor-not-allowed'
                                    : 'bg-gray-50 border-gray-300 text-black hover:border-red-300'
                                    }`}
                            >
                                <option value="States">States</option>
                                {uniqueStates.map((state) => (
                                    <option key={state} value={state}>
                                        {state}
                                    </option>
                                ))}
                            </select>
                            <div className="absolute inset-y-0 right-0 flex items-center pr-3 pointer-events-none">
                                <svg className={`h-5 w-5 transition-colors ${searchQuery ? 'text-gray-300' : 'text-gray-400 group-hover:text-red-500'
                                    }`} fill="none" stroke="currentColor" viewBox="0 0 24 24">
                                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth="2" d="M19 9l-7 7-7-7" />
                                </svg>
                            </div>
                        </div>

                        <div className="flex items-center space-x-2">
                            <Link
                                href="/login"
                                className="px-4 py-2 rounded-full text-sm font-medium text-gray-700 hover:text-red-600 transition-colors"
                            >
                                Login
                            </Link>
                            <Link
                                href="/signup"
                                className="px-4 py-2 rounded-full text-sm font-medium text-white bg-red-600 hover:bg-red-700 transition-colors"
                            >
                                Sign Up
                            </Link>
                        </div>
                    </div>
                </div>
            </div>
        </header>
    );
} 