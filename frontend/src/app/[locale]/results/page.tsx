// @file: src/app/results/page.tsx
'use client';

import {
  PersonWalking,
  Wifi,
  Snow,
  Bug,
  Award,
  Bank,
  Book,
  House,
  Tree,
  Cup,
  EggFried,
  DropletHalf,
  Nut,
} from 'react-bootstrap-icons';

export default function ResultsPage() {
  // Mocked data based on your current selection screen
  const result = {
    country: 'Italy',
    city: 'Rome',
    days: 7,
    pace: 4,
    travelers: { adults: 2, children: 0, pets: 1 },
    budget: { min: 4000, max: 6000, currency: 'EUR' },
    stay: { type: 'Hotel', minRating: 4, location: 'City center' },
    amenities: ['Wi-Fi', 'A/C', 'Pet-friendly'],
    interests: ['Food', 'Nature', 'History'],
    foodPrefs: ['Local Cuisine', 'Wine/Beer'],
    dietary: ['Low sugar'],
    allergies: ['Nuts'],
    transport: ['On Foot'],
    pois: ['Monuments', 'Museums', 'Historical Sites', 'Palaces', 'Parks & Gardens'],
  };

  const chip = (label: string, className = '') => (
    <span
      key={label}
      className={`inline-flex items-center rounded-full px-3 py-1 text-sm font-medium border shadow-sm ${className}`}
    >
      {label}
    </span>
  );

  const iconChip = (label: string, icon: React.ReactNode, className = '') => (
    <span
      key={label}
      className={`inline-flex items-center gap-2 rounded-full px-3 py-1 text-sm font-medium border shadow-sm ${className}`}
    >
      {icon}
      {label}
    </span>
  );

  const section = 'rounded-2xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 p-6 shadow-sm';

  return (
    <main className="flex flex-col items-center justify-start px-6 py-12 bg-gray-50 dark:bg-gray-900 transition-colors">
      {/* Header */}
      <div className="text-center">
        <h1 className="text-4xl font-bold text-gray-800 dark:text-white">WandrEU</h1>
        <p className="text-lg text-gray-600 dark:text-gray-300 mt-2">Your tailored Rome itinerary</p>
      </div>

      <div className="mt-10 max-w-4xl w-full space-y-6">
        {/* Summary */}
        <section className={section}>
          <h2 className="text-2xl font-semibold text-gray-800 dark:text-gray-100 mb-2">
            Rome, Italy — {result.days} days
          </h2>
          <p className="text-gray-600 dark:text-gray-300">
            Built from your selections: Food, Nature, History; Hotel (4★, center), Wi-Fi, A/C, Pet-friendly; On foot,
            low sugar diet, nut allergy noted.
          </p>

          {/* Destination chips */}
          <div className="mt-4 flex flex-wrap gap-2">
            {chip('Italy', 'bg-blue-50 dark:bg-blue-900/40 text-blue-800 dark:text-blue-100 border-blue-200 dark:border-blue-700')}
            {chip('Rome', 'bg-amber-50 dark:bg-amber-900/40 text-amber-800 dark:text-amber-100 border-amber-200 dark:border-amber-700')}
            {chip(`${result.days} days`, 'bg-gray-50 dark:bg-gray-800 text-gray-800 dark:text-gray-200 border-gray-200 dark:border-gray-700')}
            {chip(`Pace ${result.pace}/5`, 'bg-gray-50 dark:bg-gray-800 text-gray-800 dark:text-gray-200 border-gray-200 dark:border-gray-700')}
            {chip(`Budget ${result.budget.min}–${result.budget.max} ${result.budget.currency}`, 'bg-green-50 dark:bg-green-900/40 text-green-800 dark:text-green-100 border-green-200 dark:border-green-700')}
          </div>
        </section>

        {/* Preferences snapshot */}
        <section className={section}>
          <h3 className="text-lg font-semibold text-gray-800 dark:text-gray-100">Your preferences</h3>

          <div className="mt-4 grid grid-cols-1 md:grid-cols-2 gap-4">
            {/* Stay */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Stay</p>
              <div className="flex flex-wrap gap-2">
                {chip(`${result.stay.type} · ${result.stay.minRating}★+`, 'bg-gray-100 dark:bg-gray-800 text-gray-800 dark:text-gray-200 border-gray-200 dark:border-gray-700')}
                {chip(result.stay.location, 'bg-gray-100 dark:bg-gray-800 text-gray-800 dark:text-gray-200 border-gray-200 dark:border-gray-700')}
              </div>
              <p className="mt-3 text-sm text-gray-600 dark:text-gray-400">
                Travelers: {result.travelers.adults} adults{result.travelers.children ? `, ${result.travelers.children} children` : ''}{' '}
                {result.travelers.pets ? `, ${result.travelers.pets} pet` : ''}
              </p>
            </div>

            {/* Amenities */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Amenities</p>
              <div className="flex flex-wrap gap-2">
                {iconChip('Wi-Fi', <Wifi />, 'bg-blue-50 dark:bg-blue-900/40 text-blue-800 dark:text-blue-100 border-blue-200 dark:border-blue-700')}
                {iconChip('A/C', <Snow />, 'bg-cyan-50 dark:bg-cyan-900/40 text-cyan-800 dark:text-cyan-100 border-cyan-200 dark:border-cyan-700')}
                {iconChip('Pet-friendly', <Bug />, 'bg-pink-50 dark:bg-pink-900/40 text-pink-800 dark:text-pink-100 border-pink-200 dark:border-pink-700')}
              </div>
            </div>

            {/* Food */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Food</p>
              <div className="flex flex-wrap gap-2">
                {iconChip('Local Cuisine', <EggFried />, 'bg-amber-50 dark:bg-amber-900/40 text-amber-800 dark:text-amber-100 border-amber-200 dark:border-amber-700')}
                {iconChip('Wine/Beer', <Cup />, 'bg-purple-50 dark:bg-purple-900/40 text-purple-800 dark:text-purple-100 border-purple-200 dark:border-purple-700')}
              </div>
            </div>

            {/* Dietary / Allergies */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Dietary & Allergies</p>
              <div className="flex flex-wrap gap-2">
                {iconChip('Low sugar', <DropletHalf />, 'bg-slate-50 dark:bg-slate-900/40 text-slate-800 dark:text-slate-100 border-slate-200 dark:border-slate-700')}
                {iconChip('Nuts', <Nut />, 'bg-red-50 dark:bg-red-900/40 text-red-800 dark:text-red-100 border-red-200 dark:border-red-700')}
              </div>
            </div>

            {/* Transport */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4 md:col-span-2">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Transportation</p>
              <div className="flex flex-wrap gap-2">
                {iconChip('On Foot', <PersonWalking />, 'bg-green-50 dark:bg-green-900/40 text-green-800 dark:text-green-100 border-green-200 dark:border-green-700')}
              </div>
            </div>

            {/* POIs */}
            <div className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4 md:col-span-2">
              <p className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">Points of Interest</p>
              <div className="flex flex-wrap gap-2">
                {iconChip('Monuments', <Award />, 'bg-gray-50 dark:bg-gray-800 text-gray-800 dark:text-gray-200 border-gray-200 dark:border-gray-700')}
                {iconChip('Museums', <Bank />, 'bg-blue-50 dark:bg-blue-900/40 text-blue-800 dark:text-blue-100 border-blue-200 dark:border-blue-700')}
                {iconChip('Historical Sites', <Book />, 'bg-yellow-50 dark:bg-yellow-900/40 text-yellow-800 dark:text-yellow-100 border-yellow-200 dark:border-yellow-700')}
                {iconChip('Palaces', <House />, 'bg-pink-50 dark:bg-pink-900/40 text-pink-800 dark:text-pink-100 border-pink-200 dark:border-pink-700')}
                {iconChip('Parks & Gardens', <Tree />, 'bg-green-50 dark:bg-green-900/40 text-green-800 dark:text-green-100 border-green-200 dark:border-green-700')}
              </div>
            </div>
          </div>
        </section>

        {/* Suggested 7-day plan */}
        <section className={section}>
          <h3 className="text-lg font-semibold text-gray-800 dark:text-gray-100">Suggested plan (7 days)</h3>
          <div className="mt-4 grid gap-4 md:grid-cols-2">
            {[
              { d: 1, t: 'Ancient Rome', h: ['Colosseum', 'Roman Forum', 'Palatine Hill'] },
              { d: 2, t: 'Vatican & Borgo', h: ['St. Peter’s Basilica', 'Vatican Museums', 'Sistine Chapel'] },
              { d: 3, t: 'Centro Storico', h: ['Pantheon', 'Trevi Fountain', 'Piazza Navona'] },
              { d: 4, t: 'Palaces & Galleries', h: ['Palazzo Barberini', 'Galleria Borghese', 'Villa Borghese Gardens'] },
              { d: 5, t: 'Monuments & Views', h: ['Altare della Patria', 'Capitoline Museums', 'Gianicolo Hill sunset'] },
              { d: 6, t: 'Food & Trastevere', h: ['Campo de’ Fiori market', 'Cacio e pepe tasting', 'Trastevere walk'] },
              { d: 7, t: 'Relax Day', h: ['Appian Way Park', 'Baths of Caracalla (ruins)', 'Gelato crawl'] },
            ].map((day) => (
              <div key={day.d} className="rounded-lg border border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900 p-4">
                <h4 className="font-semibold text-gray-800 dark:text-gray-100">Day {day.d}: {day.t}</h4>
                <ul className="mt-2 list-disc list-inside text-gray-600 dark:text-gray-300 space-y-1">
                  {day.h.map((x) => <li key={x}>{x}</li>)}
                </ul>
              </div>
            ))}
          </div>

          {/* Tips box */}
          <div className="mt-6 p-4 rounded-lg bg-blue-50 dark:bg-blue-900 border border-blue-200 dark:border-blue-700">
            <p className="text-sm text-blue-800 dark:text-blue-100">
              Dining: prioritize <strong>local cuisine</strong> spots; ask for <strong>low-sugar</strong> options and check for
              <strong> nut traces</strong>. Many museums are walkable — your preference for traveling <strong>on foot</strong> fits perfectly.
            </p>
          </div>
        </section>
      </div>
    </main>
  );
}
