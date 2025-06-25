'use client';

import Link from 'next/link';

interface BranchCardProps {
    branchid: number;
    branch_name: string;
    address: string;
    states: string;
    contact: string;
}

export default function BranchCard({ branchid, branch_name, address, states, contact }: BranchCardProps) {
    return (
        <div className="bg-white rounded-xl shadow-lg overflow-hidden transform transition-all duration-300 hover:scale-105 hover:shadow-xl">
            <div className="p-6">
                <h2 className="text-xl font-semibold text-gray-800 mb-2">{branch_name}</h2>
                <p className="text-gray-600 mb-4">{address}</p>
                <div className="flex items-center justify-between">
                    <span className="text-sm text-gray-500">{states}</span>
                    <span className="text-sm text-gray-500">{contact}</span>
                </div>
                <div className="mt-6">
                    <Link
                        href={`/branch/${branchid}`}
                        className="block w-full text-center px-4 py-2 bg-red-600 text-white rounded-lg hover:bg-red-700 transition-colors"
                    >
                        View Menu
                    </Link>
                </div>
            </div>
        </div>
    );
} 