'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';

export default function QueryPage() {
    // Custom Query States
    const [query, setQuery] = useState('');
    const [customResult, setCustomResult] = useState<any[]>([]);
    const [customLoading, setCustomLoading] = useState(false);
    const [customError, setCustomError] = useState<string | null>(null);

    // Query 1 States
    const [selectedKind, setSelectedKind] = useState<string>('breakfast');
    const [menuKinds, setMenuKinds] = useState<string[]>([]);
    const [query1Result, setQuery1Result] = useState<any[]>([]);
    const [query1Loading, setQuery1Loading] = useState(false);
    const [query1Error, setQuery1Error] = useState<string | null>(null);

    // Query 2 States
    const [selectedMomoType, setSelectedMomoType] = useState<string>('Kurkure');
    const [query2Result, setQuery2Result] = useState<any[]>([]);
    const [query2Loading, setQuery2Loading] = useState(false);
    const [query2Error, setQuery2Error] = useState<string | null>(null);

    // Query 3 States
    const [branches, setBranches] = useState<{ branchid: number; branch_name: string }[]>([]);
    const [selectedBranches, setSelectedBranches] = useState<number[]>([]);
    const [query3Result, setQuery3Result] = useState<any[]>([]);
    const [query3Loading, setQuery3Loading] = useState(false);
    const [query3Error, setQuery3Error] = useState<string | null>(null);

    // Query 4 States
    const [selectedDish, setSelectedDish] = useState('');
    const [dishes, setDishes] = useState<string[]>([]);
    const [query4Result, setQuery4Result] = useState<any[]>([]);
    const [query4Loading, setQuery4Loading] = useState(false);
    const [query4Error, setQuery4Error] = useState<string | null>(null);

    // Query 5 States
    const [query5Result, setQuery5Result] = useState<any[]>([]);
    const [query5Loading, setQuery5Loading] = useState(false);
    const [query5Error, setQuery5Error] = useState<string | null>(null);
    const [numberOfOrders, setNumberOfOrders] = useState<number>(20);

    // Query 6 States (was Query 7)
    const [inventoryItems, setInventoryItems] = useState<string[]>([]);
    const [selectedInventoryItem, setSelectedInventoryItem] = useState('');
    const [query6Result, setQuery6Result] = useState<any[]>([]);
    const [query6Loading, setQuery6Loading] = useState(false);
    const [query6Error, setQuery6Error] = useState<string | null>(null);

    // Query 7 States
    const [salaryIncrement, setSalaryIncrement] = useState<number>(10000);
    const [yearsThreshold, setYearsThreshold] = useState<number>(2);
    const [query7Result, setQuery7Result] = useState<any[]>([]);
    const [query7Loading, setQuery7Loading] = useState(false);
    const [query7Error, setQuery7Error] = useState<string | null>(null);

    // Query 8 States
    const [query8Result, setQuery8Result] = useState<any[]>([]);
    const [query8Loading, setQuery8Loading] = useState(false);
    const [query8Error, setQuery8Error] = useState<string | null>(null);

    // Query 9 States
    const [query9Result, setQuery9Result] = useState<any[]>([]);
    const [query9Loading, setQuery9Loading] = useState(false);
    const [query9Error, setQuery9Error] = useState<string | null>(null);
    const [sortOrder, setSortOrder] = useState<'asc' | 'desc'>('desc');

    // Query 10 States
    const [query10Result, setQuery10Result] = useState<any[]>([]);
    const [query10Loading, setQuery10Loading] = useState(false);
    const [query10Error, setQuery10Error] = useState<string | null>(null);
    const [selectedPaymentMethod, setSelectedPaymentMethod] = useState<string>('');
    const [paymentMethods, setPaymentMethods] = useState<string[]>([]);

    const momoTypes = ['Kurkure', 'Fried', 'Steam', 'Gravy'];

    useEffect(() => {
        // Fetch available menu kinds when component mounts
        const fetchMenuKinds = async () => {
            try {
                const response = await fetch('/api/query', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        query: "SELECT DISTINCT kind FROM menu ORDER BY kind;"
                    }),
                });

                const data = await response.json();
                if (response.ok) {
                    setMenuKinds(data.map((row: any) => row.kind));
                }
            } catch (err) {
                console.error('Error fetching menu kinds:', err);
            }
        };

        // Fetch branches for Query 3
        const fetchBranches = async () => {
            try {
                const response = await fetch('/api/query', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        query: "SELECT branchid, branch_name FROM branch ORDER BY branch_name;"
                    }),
                });

                const data = await response.json();
                if (response.ok) {
                    setBranches(data);
                }
            } catch (err) {
                console.error('Error fetching branches:', err);
            }
        };

        // Fetch distinct dishes for Query 4
        const fetchDishes = async () => {
            try {
                const response = await fetch('/api/query', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        query: "SELECT DISTINCT dishname FROM menuitem ORDER BY dishname;"
                    }),
                });

                const data = await response.json();
                if (response.ok) {
                    setDishes(data.map((row: any) => row.dishname));
                }
            } catch (err) {
                console.error('Error fetching dishes:', err);
            }
        };

        // Fetch inventory items for Query 6 (was Query 7)
        const fetchInventoryItems = async () => {
            try {
                const response = await fetch('/api/query', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        query: "SELECT DISTINCT item FROM inventory ORDER BY item;"
                    }),
                });

                const data = await response.json();
                if (response.ok) {
                    setInventoryItems(data.map((row: any) => row.item));
                }
            } catch (err) {
                console.error('Error fetching inventory items:', err);
            }
        };

        // Fetch payment methods from the database
        const fetchPaymentMethods = async () => {
            try {
                const response = await fetch('/api/query', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({
                        query: "SELECT DISTINCT payment_method FROM orders ORDER BY payment_method;"
                    }),
                });

                const data = await response.json();
                if (response.ok) {
                    setPaymentMethods(data.map((row: any) => row.payment_method));
                    if (data.length > 0) {
                        setSelectedPaymentMethod(data[0].payment_method);
                    }
                }
            } catch (err) {
                console.error('Error fetching payment methods:', err);
            }
        };

        fetchMenuKinds();
        fetchBranches();
        fetchDishes();
        fetchInventoryItems();
        fetchPaymentMethods();
    }, []);

    const handleKindChange = async (kind: string) => {
        setSelectedKind(kind);
        setQuery1Loading(true);
        setQuery1Error(null);
        setQuery1Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT DISTINCT e.ename, e.erole, b.branch_name
                           FROM employee e
                           JOIN worksin w ON e.employee_id = w.employee_id
                           JOIN branch b ON w.branchid = b.branchid
                           JOIN offers o ON b.branchid = o.branchid
                           JOIN menu m ON o.menuid = m.menuid
                           WHERE m.kind = '${kind}'
                           ORDER BY e.ename;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery1Result(data);
        } catch (err) {
            setQuery1Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery1Loading(false);
        }
    };

    const handleMomoTypeChange = async (type: string) => {
        setSelectedMomoType(type);
        setQuery2Loading(true);
        setQuery2Error(null);
        setQuery2Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT DISTINCT c.cname, c.address, c.states, c.phone_no
                           FROM customer c
                           JOIN orders o ON c.customerid = o.customerid
                           JOIN has h ON o.orderid = h.orderid
                           JOIN menuitem m ON h.dishname = m.dishname
                           WHERE m.category = '${type}'
                           ORDER BY c.cname;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery2Result(data);
        } catch (err) {
            setQuery2Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery2Loading(false);
        }
    };

    const handleSubmit = async (e: React.FormEvent) => {
        e.preventDefault();
        setCustomLoading(true);
        setCustomError(null);
        setCustomResult([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({ query }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setCustomResult(data);
        } catch (err) {
            setCustomError(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setCustomLoading(false);
        }
    };

    const handleBranchToggle = (branchId: number) => {
        setSelectedBranches(prev => {
            if (prev.includes(branchId)) {
                return prev.filter(id => id !== branchId);
            } else {
                return [...prev, branchId];
            }
        });
    };

    const handleSelectAllBranches = () => {
        if (selectedBranches.length === branches.length) {
            setSelectedBranches([]);
        } else {
            setSelectedBranches(branches.map(b => b.branchid));
        }
    };

    const handleBranchQuery = async () => {
        if (selectedBranches.length === 0) {
            setQuery3Error('Please select at least one branch');
            return;
        }

        setQuery3Loading(true);
        setQuery3Error(null);
        setQuery3Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT b.branch_name, ROUND(AVG(o.totalprice)::numeric, 2) as average_order_value
                           FROM branch b
                           JOIN orders o ON b.branchid = o.branchid
                           WHERE b.branchid IN (${selectedBranches.join(',')})
                           GROUP BY b.branch_name
                           ORDER BY b.branch_name;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery3Result(data);
        } catch (err) {
            setQuery3Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery3Loading(false);
        }
    };

    const handleDishQuery = async () => {
        if (!selectedDish) {
            setQuery4Error('Please select a dish');
            return;
        }

        setQuery4Loading(true);
        setQuery4Error(null);
        setQuery4Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT o.orderid, o.orderdate, o.totalprice, c.cname as customer_name, b.branch_name
                           FROM orders o
                           JOIN customer c ON o.customerid = c.customerid
                           JOIN branch b ON o.branchid = b.branchid
                           JOIN has h ON o.orderid = h.orderid
                           WHERE h.dishname = '${selectedDish}'
                           ORDER BY o.orderdate DESC;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery4Result(data);
        } catch (err) {
            setQuery4Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery4Loading(false);
        }
    };

    const handleTopOrdersQuery = async () => {
        if (numberOfOrders <= 0) {
            setQuery5Error('Please enter a valid number of orders (greater than 0)');
            return;
        }

        setQuery5Loading(true);
        setQuery5Error(null);
        setQuery5Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT o.orderid, o.orderdate, o.totalprice, c.cname as customer_name, b.branch_name, 
                           COUNT(h.dishname) as total_items
                           FROM orders o
                           JOIN customer c ON o.customerid = c.customerid
                           JOIN branch b ON o.branchid = b.branchid
                           JOIN has h ON o.orderid = h.orderid
                           GROUP BY o.orderid, o.orderdate, o.totalprice, c.cname, b.branch_name
                           ORDER BY total_items DESC
                           LIMIT ${numberOfOrders};`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery5Result(data);
        } catch (err) {
            setQuery5Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery5Loading(false);
        }
    };

    const handleInventoryQuery = async () => {
        if (!selectedInventoryItem) {
            setQuery6Error('Please select an inventory item');
            return;
        }

        setQuery6Loading(true);
        setQuery6Error(null);
        setQuery6Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT b.branchid, b.branch_name, b.address, b.states
                           FROM branch b
                           WHERE b.branchid NOT IN (
                               SELECT i.branchid
                               FROM inventory i
                               WHERE i.item = '${selectedInventoryItem}'
                           )
                           ORDER BY b.branchid;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery6Result(data);
        } catch (err) {
            setQuery6Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery6Loading(false);
        }
    };

    const handleManagerSalaryUpdate = async () => {
        if (salaryIncrement <= 0) {
            setQuery7Error('Please enter a valid salary increment (greater than 0)');
            return;
        }
        if (yearsThreshold <= 0) {
            setQuery7Error('Please enter a valid number of years (greater than 0)');
            return;
        }

        setQuery7Loading(true);
        setQuery7Error(null);
        setQuery7Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `UPDATE employee e
                           SET salary = salary + ${salaryIncrement}
                           FROM worksin w
                           WHERE w.employee_id = e.employee_id
                             AND e.erole = 'manager'
                             AND CURRENT_DATE - w.doj >= ${yearsThreshold * 365}
                           RETURNING 
                             e.employee_id,
                             e.ename,
                             e.erole,
                             e.shift_start,
                             e.shift_end,
                             e.salary;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery7Result(data);
        } catch (err) {
            setQuery7Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery7Loading(false);
        }
    };

    const handleMostOrderedQuery = async () => {
        setQuery8Loading(true);
        setQuery8Error(null);
        setQuery8Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `WITH DishSales AS (
                               SELECT 
                                   b.branchid,
                                   mi.dishname,
                                   SUM(h.quantity) AS total_sold
                               FROM Orders o
                               JOIN Has h ON o.orderid = h.orderid
                               JOIN Menuitem mi ON h.dishname = mi.dishname
                               JOIN Branch b ON o.branchid = b.branchid
                               GROUP BY b.branchid, mi.dishname
                           ),
                           RankedSales AS (
                               SELECT *,
                                      RANK() OVER (PARTITION BY branchid ORDER BY total_sold DESC) AS rnk
                               FROM DishSales
                           )
                           SELECT branchid, dishname, total_sold
                           FROM RankedSales
                           WHERE rnk = 1
                           ORDER BY branchid;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery8Result(data);
        } catch (err) {
            setQuery8Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery8Loading(false);
        }
    };

    const handleBranchSalesQuery = async () => {
        setQuery9Loading(true);
        setQuery9Error(null);
        setQuery9Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT b.branchid, b.branch_name, 
                           SUM(o.totalprice) as total_sales
                           FROM branch b
                           JOIN orders o ON b.branchid = o.branchid
                           GROUP BY b.branchid, b.branch_name
                           ORDER BY total_sales ${sortOrder.toUpperCase()};`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery9Result(data);
        } catch (err) {
            setQuery9Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery9Loading(false);
        }
    };

    const handlePaymentMethodQuery = async () => {
        setQuery10Loading(true);
        setQuery10Error(null);
        setQuery10Result([]);

        try {
            const response = await fetch('/api/query', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                },
                body: JSON.stringify({
                    query: `SELECT DISTINCT c.customerid, c.cname, c.phone_no
                           FROM customer c
                           JOIN orders o ON c.customerid = o.customerid
                           GROUP BY c.customerid, c.cname, c.phone_no
                           HAVING NOT EXISTS (
                               SELECT 1 FROM orders o2
                               WHERE o2.customerid = c.customerid
                               AND o2.payment_method != '${selectedPaymentMethod}'
                           )
                           ORDER BY c.customerid;`
                }),
            });

            const data = await response.json();

            if (!response.ok) {
                throw new Error(data.error || 'Failed to execute query');
            }

            setQuery10Result(data);
        } catch (err) {
            setQuery10Error(err instanceof Error ? err.message : 'An error occurred');
        } finally {
            setQuery10Loading(false);
        }
    };

    const formatDate = (dateString: string) => {
        const date = new Date(dateString);
        return date.toLocaleString('en-US', {
            year: 'numeric',
            month: 'short',
            day: 'numeric',
            hour: '2-digit',
            minute: '2-digit',
            hour12: true
        });
    };

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
                        <h1 className="text-4xl font-bold bg-gradient-to-r from-red-600 to-red-800 bg-clip-text text-transparent">
                            Query Page
                        </h1>
                        <div className="h-12 w-1 bg-gradient-to-b from-red-600 to-red-800 rounded-full"></div>
                    </div>
                </div>

                {/* Quick Navigation Menu */}
                <div className="sticky top-0 z-10 bg-white shadow-md rounded-lg mb-8 p-4">
                    <div className="flex flex-wrap gap-2 justify-center">
                        <a href="#custom-query" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Custom Query
                        </a>
                        <a href="#query-1" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 1
                        </a>
                        <a href="#query-2" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 2
                        </a>
                        <a href="#query-3" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 3
                        </a>
                        <a href="#query-4" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 4
                        </a>
                        <a href="#query-5" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 5
                        </a>
                        <a href="#query-6" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 6
                        </a>
                        <a href="#query-7" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 7
                        </a>
                        <a href="#query-8" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 8
                        </a>
                        <a href="#query-9" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 9
                        </a>
                        <a href="#query-10" className="px-3 py-1 bg-gray-100 hover:bg-gray-200 rounded-md text-sm font-medium text-gray-700 transition-colors">
                            Query 10
                        </a>
                    </div>
                </div>

                {/* Custom Query Section */}
                <div id="custom-query" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Custom Query
                    </h2>
                    <form onSubmit={handleSubmit} className="space-y-4">
                        <div>
                            <label htmlFor="query" className="block text-sm font-medium text-gray-700 mb-2">
                                Enter your SQL query
                            </label>
                            <textarea
                                id="query"
                                value={query}
                                onChange={(e) => setQuery(e.target.value)}
                                className="w-full h-32 px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black font-mono"
                                placeholder="SELECT * FROM branch;"
                            />
                        </div>
                        <button
                            type="submit"
                            disabled={customLoading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {customLoading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </form>

                    {customError && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{customError}</p>
                        </div>
                    )}

                    {customResult.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(customResult[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {customResult.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.values(row).map((value, i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 1 Section */}
                <div id="query-1" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 1: Name all employees who work in a branch which offers a menu of the kind breakfast/lunch/snacks/dinner
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="menuKind" className="block text-sm font-medium text-gray-700 mb-2">
                                Select Menu Kind
                            </label>
                            <select
                                id="menuKind"
                                value={selectedKind}
                                onChange={(e) => setSelectedKind(e.target.value)}
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            >
                                {menuKinds.map((kind) => (
                                    <option key={kind} value={kind}>
                                        {kind.charAt(0).toUpperCase() + kind.slice(1)}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT DISTINCT e.ename, e.erole, b.branch_name<br />
                                FROM employee e<br />
                                JOIN worksin w ON e.employee_id = w.employee_id<br />
                                JOIN branch b ON w.branchid = b.branchid<br />
                                JOIN offers o ON b.branchid = o.branchid<br />
                                JOIN menu m ON o.menuid = m.menuid<br />
                                WHERE m.kind = '{selectedKind}'<br />
                                ORDER BY e.ename;
                            </div>
                        </div>

                        <button
                            onClick={() => handleKindChange(selectedKind)}
                            disabled={query1Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query1Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query1Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query1Error}</p>
                        </div>
                    )}

                    {query1Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query1Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query1Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.values(row).map((value, i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 2 Section */}
                <div id="query-2" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 2: List the details of the customers who have ordered any momo of type Kurkure/Fried/Steam/Gravy
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="momoType" className="block text-sm font-medium text-gray-700 mb-2">
                                Select Momo Type
                            </label>
                            <select
                                id="momoType"
                                value={selectedMomoType}
                                onChange={(e) => setSelectedMomoType(e.target.value)}
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            >
                                {momoTypes.map((type) => (
                                    <option key={type} value={type}>
                                        {type}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT DISTINCT c.cname, c.address, c.states, c.phone_no<br />
                                FROM customer c<br />
                                JOIN orders o ON c.customerid = o.customerid<br />
                                JOIN has h ON o.orderid = h.orderid<br />
                                JOIN menuitem m ON h.dishname = m.dishname<br />
                                WHERE m.category = '{selectedMomoType}'<br />
                                ORDER BY c.cname;
                            </div>
                        </div>

                        <button
                            onClick={() => handleMomoTypeChange(selectedMomoType)}
                            disabled={query2Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query2Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query2Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query2Error}</p>
                        </div>
                    )}

                    {query2Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query2Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query2Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.values(row).map((value, i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 3 Section */}
                <div id="query-3" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 3: Getting an average order value for all the orders placed till now by branch
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Select Branches
                            </label>
                            <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
                                <div
                                    onClick={handleSelectAllBranches}
                                    className={`flex items-center space-x-2 p-2 border-2 rounded-lg cursor-pointer transition-all ${selectedBranches.length === branches.length
                                        ? 'border-green-500 bg-green-50'
                                        : 'border-gray-200 hover:border-gray-300'
                                        }`}
                                >
                                    <input
                                        type="checkbox"
                                        checked={selectedBranches.length === branches.length}
                                        onChange={handleSelectAllBranches}
                                        className="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded cursor-pointer"
                                    />
                                    <label className="text-sm text-gray-700 cursor-pointer">Select All</label>
                                </div>
                                {branches.map((branch) => (
                                    <div
                                        key={branch.branchid}
                                        onClick={() => handleBranchToggle(branch.branchid)}
                                        className={`flex items-center space-x-2 p-2 border-2 rounded-lg cursor-pointer transition-all ${selectedBranches.includes(branch.branchid)
                                            ? 'border-green-500 bg-green-50'
                                            : 'border-gray-200 hover:border-gray-300'
                                            }`}
                                    >
                                        <input
                                            type="checkbox"
                                            checked={selectedBranches.includes(branch.branchid)}
                                            onChange={() => handleBranchToggle(branch.branchid)}
                                            className="h-4 w-4 text-green-600 focus:ring-green-500 border-gray-300 rounded cursor-pointer"
                                        />
                                        <label className="text-sm text-gray-700 cursor-pointer">{branch.branch_name}</label>
                                    </div>
                                ))}
                            </div>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT b.branch_name, ROUND(AVG(o.totalprice)::numeric, 2) as average_order_value<br />
                                FROM branch b<br />
                                JOIN orders o ON b.branchid = o.branchid<br />
                                WHERE b.branchid IN ({selectedBranches.join(',')})<br />
                                GROUP BY b.branch_name<br />
                                ORDER BY b.branch_name;
                            </div>
                        </div>

                        <button
                            onClick={handleBranchQuery}
                            disabled={query3Loading || selectedBranches.length === 0}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query3Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query3Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query3Error}</p>
                        </div>
                    )}

                    {query3Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query3Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query3Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.values(row).map((value, i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 4 Section */}
                <div id="query-4" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 4: View all orders containing specific menu items
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="dishSelect" className="block text-sm font-medium text-gray-700 mb-2">
                                Select Dish
                            </label>
                            <select
                                id="dishSelect"
                                value={selectedDish}
                                onChange={(e) => setSelectedDish(e.target.value)}
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            >
                                <option value="">Select a dish</option>
                                {dishes.map((dish) => (
                                    <option key={dish} value={dish}>
                                        {dish}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT o.orderid, o.orderdate, o.totalprice, c.cname as customer_name, b.branch_name<br />
                                FROM orders o<br />
                                JOIN customer c ON o.customerid = c.customerid<br />
                                JOIN branch b ON o.branchid = b.branchid<br />
                                JOIN has h ON o.orderid = h.orderid<br />
                                WHERE h.dishname = '{selectedDish}'<br />
                                ORDER BY o.orderdate DESC;
                            </div>
                        </div>

                        <button
                            onClick={handleDishQuery}
                            disabled={query4Loading || !selectedDish}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query4Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query4Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query4Error}</p>
                        </div>
                    )}

                    {query4Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query4Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query4Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.entries(row).map(([key, value], i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {key === 'orderdate' ? formatDate(String(value)) : String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 5 Section */}
                <div id="query-5" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 5: Top Orders with Most Items
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="numberOfOrders" className="block text-sm font-medium text-gray-700 mb-2">
                                Number of Orders to Display
                            </label>
                            <input
                                type="number"
                                id="numberOfOrders"
                                value={numberOfOrders}
                                onChange={(e) => setNumberOfOrders(Number(e.target.value))}
                                min="1"
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            />
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT o.orderid, o.orderdate, o.totalprice, c.cname as customer_name, b.branch_name,<br />
                                COUNT(h.dishname) as total_items<br />
                                FROM orders o<br />
                                JOIN customer c ON o.customerid = c.customerid<br />
                                JOIN branch b ON o.branchid = b.branchid<br />
                                JOIN has h ON o.orderid = h.orderid<br />
                                GROUP BY o.orderid, o.orderdate, o.totalprice, c.cname, b.branch_name<br />
                                ORDER BY total_items DESC<br />
                                LIMIT {numberOfOrders};
                            </div>
                        </div>

                        <button
                            onClick={handleTopOrdersQuery}
                            disabled={query5Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query5Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query5Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query5Error}</p>
                        </div>
                    )}

                    {query5Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query5Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key === 'total_items' ? 'Total Items' : key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query5Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.entries(row).map(([key, value], i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {key === 'orderdate' ? formatDate(String(value)) : String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 6 Section (was Query 7) */}
                <div id="query-6" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 6: Branches Without Specific Inventory Item
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="inventoryItemSelect" className="block text-sm font-medium text-gray-700 mb-2">
                                Select Inventory Item
                            </label>
                            <select
                                id="inventoryItemSelect"
                                value={selectedInventoryItem}
                                onChange={(e) => setSelectedInventoryItem(e.target.value)}
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            >
                                <option value="">Select an inventory item</option>
                                {inventoryItems.map((item) => (
                                    <option key={item} value={item}>
                                        {item}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT b.branchid, b.branch_name, b.address, b.states<br />
                                FROM branch b<br />
                                WHERE b.branchid NOT IN (<br />
                                &nbsp;&nbsp;SELECT i.branchid<br />
                                &nbsp;&nbsp;FROM inventory i<br />
                                &nbsp;&nbsp;WHERE i.item = '{selectedInventoryItem}'<br />
                                )<br />
                                ORDER BY b.branchid;
                            </div>
                        </div>

                        <button
                            onClick={handleInventoryQuery}
                            disabled={query6Loading || !selectedInventoryItem}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query6Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query6Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query6Error}</p>
                        </div>
                    )}

                    {query6Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query6Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query6Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.values(row).map((value, i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 7 Section */}
                <div id="query-7" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 7: Update Manager Salaries
                    </h2>
                    <div className="space-y-4">
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div>
                                <label htmlFor="salaryIncrement" className="block text-sm font-medium text-gray-700 mb-2">
                                    Salary Increment Amount
                                </label>
                                <input
                                    type="number"
                                    id="salaryIncrement"
                                    value={salaryIncrement}
                                    onChange={(e) => setSalaryIncrement(Number(e.target.value))}
                                    min="1"
                                    className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                                />
                            </div>
                            <div>
                                <label htmlFor="yearsThreshold" className="block text-sm font-medium text-gray-700 mb-2">
                                    Years Since Joining
                                </label>
                                <input
                                    type="number"
                                    id="yearsThreshold"
                                    value={yearsThreshold}
                                    onChange={(e) => setYearsThreshold(Number(e.target.value))}
                                    min="1"
                                    className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                                />
                            </div>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                UPDATE employee e<br />
                                SET salary = salary + {salaryIncrement}<br />
                                FROM worksin w<br />
                                WHERE w.employee_id = e.employee_id<br />
                                &nbsp;&nbsp;AND e.erole = 'manager'<br />
                                &nbsp;&nbsp;AND CURRENT_DATE - w.doj &gt;= {yearsThreshold * 365}<br />
                                RETURNING<br />
                                &nbsp;&nbsp;e.employee_id,<br />
                                &nbsp;&nbsp;e.ename,<br />
                                &nbsp;&nbsp;e.erole,<br />
                                &nbsp;&nbsp;e.shift_start,<br />
                                &nbsp;&nbsp;e.shift_end,<br />
                                &nbsp;&nbsp;e.salary;
                            </div>
                        </div>

                        <button
                            onClick={handleManagerSalaryUpdate}
                            disabled={query7Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query7Loading ? 'Updating...' : 'Update Salaries'}
                        </button>
                    </div>

                    {query7Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query7Error}</p>
                        </div>
                    )}

                    {query7Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query7Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key === 'employee_id' ? 'Employee ID' :
                                                        key === 'ename' ? 'Name' :
                                                            key === 'erole' ? 'Role' :
                                                                key === 'shift_start' ? 'Shift Start' :
                                                                    key === 'shift_end' ? 'Shift End' :
                                                                        key === 'salary' ? 'New Salary' : key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query7Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.entries(row).map(([key, value], i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {key === 'shift_start' || key === 'shift_end' ? formatDate(String(value)) : String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 8 Section */}
                <div id="query-8" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 8: Most Ordered Menu Item by Branch
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                WITH DishSales AS (<br />
                                &nbsp;&nbsp;SELECT<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;b.branchid,<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;mi.dishname,<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;SUM(h.quantity) AS total_sold<br />
                                &nbsp;&nbsp;FROM Orders o<br />
                                &nbsp;&nbsp;JOIN Has h ON o.orderid = h.orderid<br />
                                &nbsp;&nbsp;JOIN Menuitem mi ON h.dishname = mi.dishname<br />
                                &nbsp;&nbsp;JOIN Branch b ON o.branchid = b.branchid<br />
                                &nbsp;&nbsp;GROUP BY b.branchid, mi.dishname<br />
                                ),<br />
                                RankedSales AS (<br />
                                &nbsp;&nbsp;SELECT *,<br />
                                &nbsp;&nbsp;&nbsp;&nbsp;RANK() OVER (PARTITION BY branchid ORDER BY total_sold DESC) AS rnk<br />
                                &nbsp;&nbsp;FROM DishSales<br />
                                )<br />
                                SELECT branchid, dishname, total_sold<br />
                                FROM RankedSales<br />
                                WHERE rnk = 1<br />
                                ORDER BY branchid;
                            </div>
                        </div>

                        <button
                            onClick={handleMostOrderedQuery}
                            disabled={query8Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query8Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query8Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query8Error}</p>
                        </div>
                    )}

                    {query8Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            {Object.keys(query8Result[0]).map((key) => (
                                                <th
                                                    key={key}
                                                    className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider"
                                                >
                                                    {key === 'branchid' ? 'Branch ID' :
                                                        key === 'dishname' ? 'Most Ordered Item' :
                                                            key === 'total_sold' ? 'Total Quantity Sold' : key}
                                                </th>
                                            ))}
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query8Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                {Object.entries(row).map(([key, value], i) => (
                                                    <td
                                                        key={i}
                                                        className="px-6 py-4 whitespace-nowrap text-sm text-gray-600"
                                                    >
                                                        {String(value)}
                                                    </td>
                                                ))}
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 9 Section */}
                <div id="query-9" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 9: Branch Sales Summary
                    </h2>
                    <div className="space-y-4">
                        <div className="flex space-x-4">
                            <button
                                onClick={() => setSortOrder('desc')}
                                className={`px-4 py-2 rounded-lg transition-colors ${sortOrder === 'desc'
                                    ? 'bg-red-600 text-white'
                                    : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                                    }`}
                            >
                                Highest to Lowest
                            </button>
                            <button
                                onClick={() => setSortOrder('asc')}
                                className={`px-4 py-2 rounded-lg transition-colors ${sortOrder === 'asc'
                                    ? 'bg-red-600 text-white'
                                    : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
                                    }`}
                            >
                                Lowest to Highest
                            </button>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT b.branchid, b.branch_name,<br />
                                &nbsp;&nbsp;SUM(o.totalprice) as total_sales<br />
                                FROM branch b<br />
                                JOIN orders o ON b.branchid = o.branchid<br />
                                GROUP BY b.branchid, b.branch_name<br />
                                ORDER BY total_sales {sortOrder.toUpperCase()};
                            </div>
                        </div>

                        <button
                            onClick={handleBranchSalesQuery}
                            disabled={query9Loading}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query9Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query9Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query9Error}</p>
                        </div>
                    )}

                    {query9Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Total Sales
                                            </th>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Branch ID
                                            </th>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Branch Name
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query9Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    ₹{Number(row.total_sales).toLocaleString('en-IN')}
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    {row.branchid}
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    {row.branch_name}
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>

                {/* Query 10 Section */}
                <div id="query-10" className="bg-white rounded-xl shadow-lg p-6 mb-8 border-2 border-gray-100 hover:border-green-500 transition-colors scroll-mt-24">
                    <h2 className="text-xl font-semibold text-gray-800 mb-4">
                        Query 10: Customers Using Specific Payment Method
                    </h2>
                    <div className="space-y-4">
                        <div>
                            <label htmlFor="paymentMethod" className="block text-sm font-medium text-gray-700 mb-2">
                                Select Payment Method
                            </label>
                            <select
                                id="paymentMethod"
                                value={selectedPaymentMethod}
                                onChange={(e) => setSelectedPaymentMethod(e.target.value)}
                                className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg focus:outline-none focus:ring-2 focus:ring-red-500 focus:border-transparent text-black"
                            >
                                {paymentMethods.map((method) => (
                                    <option key={method} value={method}>
                                        {method}
                                    </option>
                                ))}
                            </select>
                        </div>

                        <div>
                            <label className="block text-sm font-medium text-gray-700 mb-2">
                                Query
                            </label>
                            <div className="w-full px-4 py-2 border-2 border-gray-200 rounded-lg bg-gray-50 text-black font-mono text-sm hover:border-green-500 transition-colors">
                                SELECT DISTINCT c.customerid, c.cname, c.phone_no<br />
                                FROM customer c<br />
                                JOIN orders o ON c.customerid = o.customerid<br />
                                GROUP BY c.customerid, c.cname, c.phone_no<br />
                                HAVING NOT EXISTS (<br />
                                &nbsp;&nbsp;SELECT 1 FROM orders o2<br />
                                &nbsp;&nbsp;WHERE o2.customerid = c.customerid<br />
                                &nbsp;&nbsp;AND o2.payment_method != '{selectedPaymentMethod}'<br />
                                )<br />
                                ORDER BY c.customerid;
                            </div>
                        </div>

                        <button
                            onClick={handlePaymentMethodQuery}
                            disabled={query10Loading || !selectedPaymentMethod}
                            className="w-full px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 transition-colors disabled:opacity-50 disabled:cursor-not-allowed"
                        >
                            {query10Loading ? 'Executing...' : 'Execute Query'}
                        </button>
                    </div>

                    {query10Error && (
                        <div className="mt-4 bg-red-50 border-2 border-red-200 rounded-lg p-4">
                            <p className="text-red-600 font-mono">{query10Error}</p>
                        </div>
                    )}

                    {query10Result.length > 0 && (
                        <div className="mt-4 bg-white rounded-xl shadow-lg overflow-hidden border-2 border-gray-100">
                            <div className="overflow-x-auto">
                                <table className="min-w-full divide-y divide-gray-200">
                                    <thead className="bg-gradient-to-r from-red-50 to-red-100">
                                        <tr>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Customer ID
                                            </th>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Customer Name
                                            </th>
                                            <th className="px-6 py-3 text-left text-xs font-medium text-gray-700 uppercase tracking-wider">
                                                Phone Number
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody className="bg-white divide-y divide-gray-200">
                                        {query10Result.map((row, index) => (
                                            <tr key={index} className="hover:bg-gray-50 transition-colors">
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    {row.customerid}
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    {row.cname}
                                                </td>
                                                <td className="px-6 py-4 whitespace-nowrap text-sm text-gray-600">
                                                    {row.phone_no}
                                                </td>
                                            </tr>
                                        ))}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    )}
                </div>
            </div>
        </div>
    );
} 