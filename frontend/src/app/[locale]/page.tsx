// @file: src/app/page.tsx
'use client';
import { useTranslations } from "next-intl";
import { useState } from 'react';
// import { api } from "@/lib/api/axios"  // not used yet (no sending logic)

type CountryOption = { code: string; name: string };

// Minimal EU-focused list (extend anytime)
const COUNTRIES: CountryOption[] = [
  { code: 'IT', name: 'Italy' },
  { code: 'PT', name: 'Portugal' },
  { code: 'DE', name: 'Germany' },
  { code: 'NL', name: 'Netherlands' },
  { code: 'CZ', name: 'Czech Republic' },
  { code: 'PL', name: 'Poland' },
  { code: 'SK', name: 'Slovakia' },
  { code: 'RO', name: 'Romania' },
  { code: 'BG', name: 'Bulgaria' },
  { code: 'TR', name: 'Turkey' },
  { code: 'SE', name: 'Sweden' },
];
export default function Home() {
  const t = useTranslations('HomePage'); // keep existing hero copy

  const [country, setCountry] = useState<string>('IT');
  const [days, setDays] = useState<string>('1'); // keep as string for controlled input
  const [formError, setFormError] = useState<string | null>(null);
  const [preview, setPreview] = useState<{ country: string; days: number } | null>(null);

  function validate(): string | null {
    // days: required, positive integer
    if (!days.trim()) return 'Please enter number of days.';
    const n = Number(days);
    if (!Number.isFinite(n) || !Number.isInteger(n) || n <= 0) {
      return 'Days must be a positive integer.';
    }
    // optional: simple upper bound to avoid silly inputs
    if (n > 30) return 'Please choose 30 days or fewer.';
    // country required
    if (!country) return 'Please select a country.';
    return null;
  }

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const err = validate();
    if (err) {
      setFormError(err);
      setPreview(null);
      return;
    }
    setFormError(null);
    setPreview({ country, days: Number(days) });

    // NOTE: No sending yet. When ready, call your API here.
    // const payload = { country, time_budget_min: daysToMinutes(Number(days)), ... }
    // const { data } = await api.post('/itinerary', payload);
  }

  return (
    <main className="flex flex-col items-center justify-center px-6 py-12 bg-gray-50 dark:bg-gray-900 transition-colors">
      {/* Light/Dark ready heading */}
      {/* Light/Dark ready heading */}
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-800 dark:text-white">WandrEU</h1>
        <p className="text-lg text-gray-600 dark:text-gray-300 mt-2">
          Plan your free-time getaway in Europe.
        </p>
      </div>

      <div className="mt-10 max-w-2xl w-full bg-white dark:bg-gray-800 shadow-md border border-gray-200 dark:border-gray-700 rounded-xl p-6">
        <h2 className="text-2xl font-semibold text-gray-700 dark:text-gray-200 mb-4">
          Trip setup
        </h2>
        <p className="text-gray-600 dark:text-gray-300 leading-relaxed">
          Select the <strong>country</strong> you want to visit and enter how many <strong>days</strong> you want to spend there.
          This information will be used to prepare your itinerary.
        </p>
      </div>

      {/* --- Form Card (no translations for labels as requested) --- */}
      <form
        onSubmit={handleSubmit}
        className="mt-8 w-full max-w-2xl bg-white dark:bg-gray-800 shadow-md border border-gray-200 dark:border-gray-700 rounded-xl p-6"
      >
        <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-100 mb-4">
          Plan your itinerary
        </h3>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {/* Country selector (light/dark aware) */}
          <div>
            <label htmlFor="country" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Country
            </label>
            <select
              id="country"
              value={country}
              onChange={(e) => setCountry(e.target.value)}
              className="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-900 text-gray-900 dark:text-gray-100 px-3 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-500"
              required
            >
              {COUNTRIES.map(c => (
                <option key={c.code} value={c.code}>{c.name}</option>
              ))}
            </select>
          </div>

          {/* Days input: positive integers only */}
          <div>
            <label htmlFor="days" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Days
            </label>
            <input
              id="days"
              type="number"
              inputMode="numeric"
              min={1}
              max={30}
              step={1}
              value={days}
              onChange={(e) => setDays(e.target.value)}
              className="w-full rounded-lg border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-900 text-gray-900 dark:text-gray-100 px-3 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-500"
              placeholder="1"
              required
            />
            <p className="mt-1 text-xs text-gray-500 dark:text-gray-400">Enter a positive whole number (max 30).</p>
          </div>
        </div>

        {/* Error / success preview */}
        {formError && (
          <p className="mt-4 text-sm text-red-600 dark:text-red-400" role="alert">
            {formError}
          </p>
        )}

        <div className="mt-6 flex items-center gap-3">
          <button
            type="submit"
            className="inline-flex items-center justify-center rounded-md bg-black text-white px-4 py-2 hover:opacity-90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-black dark:focus:ring-white dark:focus:ring-offset-gray-800 transition"
          >
            Preview selection
          </button>

          {/* Disabled placeholder for future sending */}
          <button
            type="button"
            disabled
            className="inline-flex items-center justify-center rounded-md bg-gray-200 dark:bg-gray-700 text-gray-500 dark:text-gray-400 px-4 py-2 cursor-not-allowed"
            title="Sending to API will be enabled later"
          >
            Send (soon)
          </button>
        </div>

        {preview && (
          <div className="mt-6">
            <h4 className="text-sm font-semibold text-gray-800 dark:text-gray-100 mb-2">Your selection</h4>
            <pre className="bg-gray-50 dark:bg-gray-900 p-3 rounded-md text-sm overflow-x-auto text-gray-800 dark:text-gray-100">
              {JSON.stringify(preview, null, 2)}
            </pre>
          </div>
        )}
      </form>
      {/* End form card */}
    </main>
  );
}
