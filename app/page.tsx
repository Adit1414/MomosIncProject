'use client';

import { useState, useEffect } from 'react';
import Header from './components/Header';
import BranchCard from './components/BranchCard';

interface Branch {
  branchid: number;
  branch_name: string;
  address: string;
  states: string;
  contact: string;
}

export default function Home() {
  const [branches, setBranches] = useState<Branch[]>([]);
  const [filteredBranches, setFilteredBranches] = useState<Branch[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchBranches = async () => {
      try {
        const response = await fetch('/api/branches');
        if (!response.ok) {
          throw new Error('Failed to fetch branches');
        }
        const data = await response.json();
        setBranches(data);
        setFilteredBranches(data);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    };

    fetchBranches();
  }, []);

  const handleLocationChange = (state: string) => {
    if (!state) {
      setFilteredBranches(branches);
    } else {
      const filtered = branches.filter(branch => branch.states === state);
      setFilteredBranches(filtered);
    }
  };

  const handleSearch = (query: string) => {
    if (!query) {
      setFilteredBranches(branches);
    } else {
      const filtered = branches.filter(branch =>
        branch.branch_name.toLowerCase().includes(query.toLowerCase()) ||
        branch.address.toLowerCase().includes(query.toLowerCase())
      );
      setFilteredBranches(filtered);
    }
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
      <Header
        branches={branches}
        onLocationChange={handleLocationChange}
        onSearch={handleSearch}
      />

      <main className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          {filteredBranches.map((branch) => (
            <BranchCard
              key={branch.branchid}
              branchid={branch.branchid}
              branch_name={branch.branch_name}
              address={branch.address}
              states={branch.states}
              contact={branch.contact}
            />
          ))}
        </div>

        {filteredBranches.length === 0 && (
          <div className="text-center py-12">
            <h3 className="text-xl font-semibold text-gray-600">No branches found</h3>
            <p className="text-gray-500 mt-2">Try adjusting your search or location filter</p>
          </div>
        )}
      </main>
    </div>
  );
}
