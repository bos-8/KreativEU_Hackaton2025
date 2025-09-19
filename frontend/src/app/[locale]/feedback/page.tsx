// @file: src/app/feedback/page.tsx
'use client';

import * as React from 'react';
import { useSearchParams, useRouter } from 'next/navigation';
import { useTranslations } from 'next-intl';
import { StarFill } from 'react-bootstrap-icons';

type PlanData = {
  country: string;
  city: string;
  days: number;
  minRating: number; // hotel stars
};


export default function FeedbackPage() {
  const t = useTranslations('Feedback');
  const search = useSearchParams();
  const router = useRouter();

  const tc = useTranslations('CountryNames');
  const COUNTRIES = [
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

  // --- Prefill from query -> localStorage -> defaults
  const defaults: PlanData = {
    country: search.get('country') || 'IT',
    city: search.get('city') || 'Rome',
    days: Number(search.get('days') || 7),
    minRating: Number(search.get('stars') || 4),
  };

  // Try localStorage override
  React.useEffect(() => {
    try {
      const raw = localStorage.getItem('wandreu-plan');
      if (!raw) return;
      const parsed = JSON.parse(raw);
      // Only override if not already set via URL
      setCountry((prev) => (search.get('country') ? prev : parsed.country ?? prev));
      setCity((prev) => (search.get('city') ? prev : parsed.city ?? prev));
      setDays((prev) => (search.get('days') ? prev : Number(parsed.days ?? prev)));
      setStars((prev) => (search.get('stars') ? prev : Number(parsed.minRating ?? prev)));
    } catch {
      // ignore
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  // Controlled state (so the user can edit before sending)
  const [country, setCountry] = React.useState<string>(defaults.country);
  const [city, setCity] = React.useState<string>(defaults.city);
  const [days, setDays] = React.useState<number>(defaults.days);
  const [stars, setStars] = React.useState<number>(defaults.minRating);
  const [recommend, setRecommend] = React.useState<boolean>(true);
  const [feedback, setFeedback] = React.useState<string>(
    t('placeholder')
  );

  const [submitted, setSubmitted] = React.useState(false);

  function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setSubmitted(true);
  }

  const section =
    'rounded-xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 p-6 shadow-sm';

  return (
    <main className="flex flex-col items-center justify-center px-6 py-12 bg-gray-50 dark:bg-gray-900 transition-colors">
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-800 dark:text-white">{t('title')}</h1>
        <p className="text-lg text-gray-600 dark:text-gray-300 mt-2">{t('description')}</p>
      </div>

      <div className="mt-10 max-w-2xl w-full space-y-6">

        {/* Feedback Form */}
        <form onSubmit={handleSubmit} className={section}>
          <h3 className="text-lg font-semibold text-gray-800 dark:text-gray-100">{t('tripText')}</h3>

          {/* Trip basics */}
          <div className="mt-4 grid grid-cols-1 gap-4 sm:grid-cols-3">
            <div className="sm:col-span-1">
              <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">{t('country')}</label>
              <select
                className="w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-900 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
                value={country}
                onChange={(e) => setCountry(e.target.value)}
              >
                {COUNTRIES.map((c) => (
                  <option key={c.code} value={c.code}>
                    {c.name}
                  </option>
                ))}
              </select>
            </div>

            <div className="sm:col-span-1">
              <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">{t('city')}</label>
              <input
                type="text"
                value={city}
                onChange={(e) => setCity(e.target.value)}
                className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-900 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
              />
            </div>

            <div className="sm:col-span-1">
              <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">{t('days')}</label>
              <input
                type="number"
                min={1}
                value={days}
                onChange={(e) => setDays(Number(e.target.value))}
                className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-900 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
              />
            </div>
          </div>

          {/* Star rating */}
          <div className="mt-6">
            <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">
              {t('rating')}
            </label>
            <div className="flex items-center gap-2">
              {[1, 2, 3, 4, 5].map((n) => (
                <label key={n} className="inline-flex items-center gap-1 cursor-pointer">
                  <input
                    type="radio"
                    name="rating"
                    value={n}
                    checked={stars === n}
                    onChange={() => setStars(n)}
                    className="sr-only"
                  />
                  <StarFill
                    className={
                      stars >= n
                        ? 'text-yellow-500 h-5 w-5'
                        : 'text-gray-300 dark:text-gray-600 h-5 w-5'
                    }
                  />
                </label>
              ))}
              <span className="ml-2 text-sm text-gray-600 dark:text-gray-300">{stars} / 5</span>
            </div>
          </div>

          {/* Would recommend */}
          <div className="mt-4">
            <label className="inline-flex items-center gap-2">
              <input
                type="checkbox"
                checked={recommend}
                onChange={(e) => setRecommend(e.target.checked)}
                className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
              />
              <span className="text-sm text-gray-800 dark:text-gray-200">{t('recommend')}</span>
            </label>
          </div>

          {/* Feedback text */}
          <div className="mt-4">
            <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">
              Your feedback
            </label>
            <textarea
              rows={5}
              value={feedback}
              onChange={(e) => setFeedback(e.target.value)}
              className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-900 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
            />
            <p className="mt-1 text-xs text-gray-500 dark:text-gray-400">
              {t('exampleText')}
            </p>
          </div>

          {/* Actions */}
          <div className="mt-6 flex items-center justify-end gap-2">
            <button
              type="button"
              className="rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-200 dark:hover:bg-gray-700"
              onClick={() => router.push('/results')}
            >
              {t('back')}
            </button>
            <button
              type="submit"
              className="rounded-md border border-transparent bg-blue-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 dark:focus:ring-offset-gray-900"
            >
              {t('submit')}
            </button>
          </div>
        </form>

        {/* Success message */}
        {submitted && (
          <section className="rounded-xl border border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900 p-4">
            <p className="text-sm text-green-800 dark:text-green-100 font-medium">
              {t('success')}
            </p>

          </section>
        )}
      </div>
    </main>
  );
}
