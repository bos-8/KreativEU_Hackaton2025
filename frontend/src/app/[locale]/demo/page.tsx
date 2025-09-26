// @file: src/app/page.tsx
'use client';
import { useTranslations, useLocale } from "next-intl";
import { useState } from 'react';
import { api } from "@/lib/api/axios"  // not used yet (no sending logic)
export const dynamic = "force-static";
type CountryOption = { code: string; name: string };

type PreviewData = {
  country: string;
  days: number;
  lang: string;
};

export default function Home() {
  const t = useTranslations('Demo');
  const locale = useLocale();

  const tc = useTranslations('CountryNames');
  const COUNTRIES: CountryOption[] = [
    { code: 'IT', name: tc('IT') },
    { code: 'PT', name: tc('PT') },
    { code: 'DE', name: tc('DE') },
    { code: 'NL', name: tc('NL') },
    { code: 'CZ', name: tc('CZ') },
    { code: 'PL', name: tc('PL') },
    { code: 'AT', name: tc('AT') },
    { code: 'SK', name: tc('SK') },
    { code: 'RO', name: tc('RO') },
    { code: 'BG', name: tc('BG') },
    { code: 'TR', name: tc('TR') },
    { code: 'SE', name: tc('SE') },
  ];

  const [country, setCountry] = useState<string>('IT');
  const [days, setDays] = useState<string>('14');
  const [formError, setFormError] = useState<string | null>(null);
  const [apiResponse, setApiResponse] = useState<any>(null);

  function validate(): string | null {
    if (!days.trim()) return t('info1');
    const n = Number(days);
    if (!Number.isFinite(n) || !Number.isInteger(n) || n <= 0) {
      return t('info2');
    }
    if (n > 30) return t('info3');
    if (!country) return t('info4');
    return null;
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    const err = validate();
    if (err) {
      setFormError(err);
      setApiResponse(null);
      return;
    }
    setFormError(null);

    const allowedLocales = ["en", "pl", "it", "pt"];
    const safeLocale = allowedLocales.includes(locale) ? locale : "en";

    const payload: PreviewData = {
      country,
      days: Number(days),
      lang: safeLocale,
    };

    try {
      const res = await api.post("/itinerary", payload);
      setApiResponse(res.data);
    } catch (error: any) {
      console.error(error);
      setApiResponse({ error: "Failed to contact backend" });
    }
  }

  // async function handleSubmit(e: React.FormEvent) {
  //   e.preventDefault();
  //   const err = validate();
  //   if (err) {
  //     setFormError(err);
  //     setApiResponse(null);
  //     return;
  //   }
  //   setFormError(null);

  //   // Instead of sending request to backend, just show demo message
  //   const demoResponse = {
  //     message: "For exhibition purposes this feature is not working.",
  //     info: "You can download the full project on GitHub to try the itinerary planner.",
  //   };

  //   setApiResponse(demoResponse);
  // }

  function handleReset() {
    setApiResponse(null);
    setFormError(null);
  }

  return (
    <main className="flex flex-col items-center justify-center px-6 py-12 bg-gray-50 dark:bg-gray-900 transition-colors">
      {/* Light/Dark ready heading */}
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-800 dark:text-white">WandrEU</h1>
        <p className="text-lg text-gray-600 dark:text-gray-300 mt-2">
          {t('subtitle')}
        </p>
      </div>

      <div className="mt-10 max-w-2xl w-full bg-white dark:bg-gray-800 shadow-md border border-gray-200 dark:border-gray-700 rounded-xl p-6">
        <h2 className="text-2xl font-semibold text-gray-700 dark:text-gray-200 mb-4">
          {t('text2')}
        </h2>
        <p className="text-gray-600 dark:text-gray-300 leading-relaxed">
          {t.rich('text3', {
            strong: (chunks) => (
              <span className="font-semibold text-yellow-300">{chunks}</span>
            ),
          })}
        </p>
      </div>

      {/* --- Form Card (no translations for labels as requested) --- */}
      <form
        onSubmit={handleSubmit}
        className="mt-8 w-full max-w-2xl bg-white dark:bg-gray-800 shadow-md border border-gray-200 dark:border-gray-700 rounded-xl p-6"
      >
        <h3 className="text-xl font-semibold text-gray-800 dark:text-gray-100 mb-4">
          {t('text4')}
        </h3>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {/* Country selector (light/dark aware) */}
          <div>
            <label htmlFor="country" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              {t('country')}
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
              {t('days')}
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
            <p className="mt-1 text-xs text-gray-500 dark:text-gray-400">{t('daysHint')}</p>
          </div>
        </div>

        {formError && (
          <p className="mt-4 text-sm text-red-600">{formError}</p>
        )}

        <div className="mt-6 flex items-center gap-3">
          {/* Submit button */}
          <button
            type="submit"
            className="inline-flex items-center justify-center rounded-md bg-black text-white px-4 py-2 hover:opacity-90 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-black dark:focus:ring-white dark:focus:ring-offset-gray-800 transition"
          >
            {t('submit')}
          </button>

          {/* Reset button */}
          <button
            type="button"
            onClick={handleReset}
            className="inline-flex items-center justify-center rounded-md bg-gray-200 dark:bg-gray-700 text-gray-500 dark:text-gray-400 px-4 py-2"
          >
            {t('reset')}
          </button>
        </div>

        {/* API response */}
        {/* API response */}
        {apiResponse && apiResponse.best_path && (
          <div className="mt-6">
            <h4 className="text-sm font-semibold mb-3">Itinerary</h4>
            <div className="overflow-x-auto">
              <table className="min-w-full border border-gray-200 dark:border-gray-700 rounded-lg text-sm">
                <thead className="bg-gray-100 dark:bg-gray-700">
                  <tr>
                    <th className="px-3 py-2 text-left">#</th>
                    <th className="px-3 py-2 text-left">{t('name')}</th>
                    <th className="px-3 py-2 text-left">{t('description')}</th>
                    <th className="px-3 py-2 text-left">{t('visit')}</th>
                    {/* <th className="px-3 py-2 text-left">{t('travel')}</th>
                    <th className="px-3 py-2 text-left">{t('cumulative')}</th> */}
                  </tr>
                </thead>
                <tbody>
                  {apiResponse.best_path.map((poi: any, idx: number) => (
                    <tr
                      key={poi.id}
                      className="border-t border-gray-200 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-800"
                    >
                      <td className="px-3 py-2">{idx + 1}</td>
                      <td className="px-3 py-2 font-medium">{poi.name}</td>
                      <td className="px-3 py-2 text-gray-600 dark:text-gray-300">{poi.desc}</td>
                      <td className="px-3 py-2">{poi.visit_minutes}</td>
                      {/* <td className="px-3 py-2">{poi.travel_minutes}</td>
                      <td className="px-3 py-2">{poi.cumulative_time}</td> */}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </div>
        )}

        {/* fallback for errors or unexpected response */}
        {apiResponse && !apiResponse.best_path && (
          <div className="mt-6">
            <h4 className="text-sm font-semibold mb-2">{t('error')}</h4>
            <pre className="bg-gray-100 dark:bg-gray-900 p-3 rounded-md text-sm">
              {JSON.stringify(apiResponse, null, 2)}
            </pre>
          </div>
        )}

      </form>
      {/* End form card */}
    </main>
  );
}
