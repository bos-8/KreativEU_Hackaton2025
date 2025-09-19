// @file: app/plan/page.tsx
'use client'

import { useRouter } from 'next/navigation'
import React from 'react'
import { Input } from '@/components/ui/Input'
import { useTranslations } from "next-intl";
import { Save, ArrowClockwise, Send } from 'react-bootstrap-icons'

import {
  CarFrontFill,
  PersonWalking,
  Airplane,
  TrainFront,
  BusFront,
  Bicycle,
  HousesFill
} from 'react-bootstrap-icons'

import {
  Nut,        // Nuts
  Droplet,    // Shellfish (water/sea)
} from 'react-bootstrap-icons'

import {
  SlashCircle,   // Gluten-free (🚫 symbol)
  Moon,     // Halal (crescent moon & stars)
  Star,          // Kosher (star symbol)
  DropletHalf,   // Low sugar (drop/blood sugar symbol)
} from 'react-bootstrap-icons'

import {
  Egg,     // Local Cuisine
  CupStraw,     // Street Food
  Flower2,         // Seafood
  Leaf,         // Vegetarian
  Flower1,      // Vegan
  Cake2,        // Desserts
  Cup
} from 'react-bootstrap-icons'

import {
  Building,       // Churches & Cathedrals
  Award,          // Monuments
  Bank,           // Museums

  House,          // Palaces
  Layers,         // Archaeological Sites
  Bezier,         // Bridges

  BuildingFillUp, // Modern Landmarks
} from 'react-bootstrap-icons'

const COUNTRIES = [
  { code: 'IT', name: 'Italy' },
  { code: 'PT', name: 'Portugal' },
  { code: 'DE', name: 'Germany' },
  { code: 'NL', name: 'Netherlands' },
  { code: 'CZ', name: 'Czech Republic' },
  { code: 'PL', name: 'Poland' },
  { code: 'AT', name: 'Austria' },
  { code: 'SK', name: 'Slovakia' },
  { code: 'RO', name: 'Romania' },
  { code: 'BG', name: 'Bulgaria' },
  { code: 'TR', name: 'Turkey' },
  { code: 'SE', name: 'Sweden' },
]

const CURRENCIES = ['EUR', 'CZK', 'PLN', 'RON', 'BGN', 'TRY', 'SEK', 'GBP', 'USD']

import { Wifi, Snow, Bug } from 'react-bootstrap-icons'

import {
  EggFried,
  Palette,
  Tree,
  MoonStars,
  People,
  Compass,
  CupHot,
  Bag,
  Book,
  Trophy,
} from 'react-bootstrap-icons'

export default function TripPlannerPage() {
  const [withChildren, setWithChildren] = React.useState(false)
  const [withPets, setWithPets] = React.useState(true)
  const router = useRouter()
  const [carSelected, setCarSelected] = React.useState(false)

  const transports = [
    { key: 'car', name: 'Car', icon: <CarFrontFill />, color: 'bg-amber-100 text-amber-800 dark:bg-amber-900 dark:text-amber-100', checked: false },
    { key: 'foot', name: 'On Foot', icon: <PersonWalking />, color: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100', checked: true },
    { key: 'plane', name: 'Plane', icon: <Airplane />, color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100', checked: false },
    { key: 'train', name: 'Train', icon: <TrainFront />, color: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-100', checked: false },
    { key: 'bus', name: 'Bus/Coach', icon: <BusFront />, color: 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-100', checked: false },
    { key: 'bike', name: 'Bicycle', icon: <Bicycle />, color: 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-100', checked: false },
  ]

  const interests = [
    { name: 'Food', icon: <EggFried />, checked: true, color: 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-100' },
    { name: 'Culture', icon: <Palette />, checked: false, color: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-100' },
    { name: 'Nature', icon: <Tree />, checked: true, color: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100' },
    { name: 'Nightlife', icon: <MoonStars />, checked: false, color: 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-100' },
    { name: 'Family', icon: <People />, checked: false, color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100' },
    { name: 'Adventure', icon: <Compass />, checked: false, color: 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-100' },
    { name: 'Relaxation', icon: <CupHot />, checked: false, color: 'bg-teal-100 text-teal-800 dark:bg-teal-900 dark:text-teal-100' },
    { name: 'Shopping', icon: <Bag />, checked: false, color: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-100' },
    { name: 'History', icon: <Book />, checked: true, color: 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-100' },
    { name: 'Sports', icon: <Trophy />, checked: false, color: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-100' },
  ]


  function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault()
    router.push('/results')
  }

  const card =
    'rounded-2xl border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-800 p-6 shadow-sm'

  const selectBase =
    'w-full rounded-lg border px-3 py-2 bg-white text-gray-900 border-gray-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500 ' +
    'dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:focus:ring-blue-400'

  const checkboxBase =
    'h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600'

  const sectionTitle =
    'text-lg font-semibold text-gray-900 dark:text-gray-100'
  const sectionDesc = 'text-sm text-gray-600 dark:text-gray-400'

  const [duration, setDuration] = React.useState(7)

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 py-10 px-4 sm:px-6">
      <div className="mx-auto max-w-4xl space-y-6">
        {/* 1) Title & description */}
        <header className={`${card}`}>
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white">
            Trip Planner
          </h1>
          <p className="mt-2 text-gray-600 dark:text-gray-300">
            Plan your perfect getaway. Fill the form, and we’ll suggest a
            day-by-day itinerary tailored to your preferences.
          </p>
        </header>

        <form onSubmit={handleSubmit} className="space-y-6">
          {/* Destination */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Destination</h2>
            <p className={sectionDesc}>
              Select the country and specify the target city.
            </p>

            <div className="mt-4 grid grid-cols-1 gap-4 sm:grid-cols-2">
              <div>
                <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Country
                </label>
                <select className={selectBase} defaultValue="">
                  <option value="Italy" disabled>
                    Select a country
                  </option>
                  {COUNTRIES.map((c) => (
                    <option key={c.code} value={c.code}>
                      {c.name}
                    </option>
                  ))}
                </select>
              </div>

              <Input label="City" placeholder="e.g., Rome" value="Rome" />
            </div>
          </section>

          {/* Travelers */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Travelers</h2>
            <p className={sectionDesc}>
              How many people are going? Include children and pets if applicable.
            </p>

            <div className="mt-4 space-y-4">
              {/* Adults + Children + Pets */}
              <div className="grid grid-cols-1 gap-4 sm:grid-cols-3">
                <Input label="Adults" type="number" min={1} placeholder="e.g., 2" value={2} />

                {withChildren && (
                  <Input label="Children" type="number" min={0} placeholder="e.g., 1" />
                )}

                {withPets && (
                  <Input label="Pets" type="number" min={0} placeholder="e.g., 1" value={1} />
                )}
              </div>

              {/* Children checkbox */}
              <div className="flex items-center gap-3 rounded-xl border border-gray-200 dark:border-gray-700 p-4">
                <input
                  id="with-children"
                  type="checkbox"
                  className={checkboxBase}
                  checked={withChildren}
                  onChange={(e) => setWithChildren(e.target.checked)}
                />
                <label
                  htmlFor="with-children"
                  className="text-sm font-medium text-gray-800 dark:text-gray-200"
                >
                  Traveling with children
                </label>
              </div>

              {/* Pets checkbox */}
              <div className="flex items-center gap-3 rounded-xl border border-gray-200 dark:border-gray-700 p-4">
                <input
                  id="with-pets"
                  type="checkbox"
                  className={checkboxBase}
                  checked={withPets}
                  onChange={(e) => setWithPets(e.target.checked)}
                />
                <label
                  htmlFor="with-pets"
                  className="text-sm font-medium text-gray-800 dark:text-gray-200"
                >
                  Traveling with pets
                </label>
              </div>

              {/* Summary (helper text) */}
              <p className="text-xs text-gray-500 dark:text-gray-400">
                Tip: Include everyone who needs transport and accommodation — adults,
                children, and pets.
              </p>
            </div>
          </section>

          {/* Budget */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Budget</h2>
            <p className={sectionDesc}>
              Choose currency and set your minimum/maximum budget.
            </p>

            <div className="mt-4 grid grid-cols-1 gap-4 sm:grid-cols-3">
              <div className="sm:col-span-1">
                <Input label="Min" type="number" placeholder="e.g., 500" value={4000} />
              </div>

              <div className="sm:col-span-1">
                <Input label="Max" type="number" placeholder="e.g., 2000" value={6000} />
              </div>

              <div className="sm:col-span-1">
                <label className="mb-1 block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Currency
                </label>
                <select className={selectBase} defaultValue="EUR">
                  {CURRENCIES.map((cur) => (
                    <option key={cur} value={cur}>
                      {cur}
                    </option>
                  ))}
                </select>
              </div>
            </div>
          </section>

          {/* Duration */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Time</h2>
            <p className={sectionDesc}>How long can you travel?</p>

            <div className="mt-4 space-y-4">
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Days
                </label>
                <input
                  type="number"
                  min={1}
                  value={duration}
                  onChange={(e) => setDuration(Number(e.target.value))}
                  placeholder="e.g., 5"
                  className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-800 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
                />
              </div>

              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Trip pace
                </label>
                <input
                  type="range"
                  min={1}
                  max={5}
                  defaultValue={4}
                  className="w-full accent-blue-600"
                />
                <p className="mt-1 text-xs text-gray-500 dark:text-gray-400">
                  1 = relaxed · 5 = packed
                </p>
              </div>
            </div>
          </section>

          {/* Interests */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Interests</h2>
            <p className={sectionDesc}>
              Select what you care about most for this trip.
            </p>

            <div className="mt-4 flex flex-wrap gap-3">
              {interests.map(({ name, icon, color, checked }) => (
                <label
                  key={name}
                  className={`inline-flex items-center gap-2 rounded-full border border-gray-200 px-3 py-1 text-sm font-medium shadow-sm cursor-pointer ${color} dark:border-gray-700`}
                >
                  <input
                    type="checkbox"
                    defaultChecked={checked}
                    className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                  />
                  {icon}
                  <span>{name}</span>
                </label>
              ))}
            </div>
          </section>

          {/* Accommodation */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Accommodation</h2>
            <p className={sectionDesc}>Tell us what kind of stay you prefer.</p>

            <div className="mt-4 space-y-6">
              {/* Stay type */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Stay type
                </label>
                <div className="mt-2 flex flex-wrap gap-3">
                  {['Hotel', 'Apartment', 'Hostel', 'Guesthouse', 'B&B'].map((name) => (
                    <label
                      key={name}
                      className="inline-flex items-center gap-2 rounded-full border border-gray-200 bg-gray-50 px-3 py-1 text-sm text-gray-800 shadow-sm hover:bg-gray-100 dark:border-gray-700 dark:bg-gray-800 dark:text-gray-100 dark:hover:bg-gray-700"
                    >
                      <input
                        type="checkbox"
                        defaultChecked={name === 'Hotel'}
                        className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                      />
                      <span>{name}</span>
                    </label>
                  ))}
                </div>

              </div>

              {/* Budget per night */}
              <div className="grid grid-cols-1 gap-3 sm:grid-cols-3">


                {/* Star rating */}
                <div className="sm:col-span-1">
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                    Minimum rating
                  </label>
                  <select
                    className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-800 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
                    defaultValue="4"
                  >
                    <option value="any">Any</option>
                    <option value="3">3★+</option>
                    <option value="4">4★+</option>
                    <option value="5">5★</option>
                  </select>
                </div>

                {/* Location preference */}
                <div className="sm:col-span-1">
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                    Location preference
                  </label>
                  <select
                    className="mt-1 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-800 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
                    defaultValue="center"
                  >
                    <option value="center">City center</option>
                    <option value="transport">Near public transport</option>
                    <option value="nature">Close to nature</option>
                    <option value="quiet">Quiet area</option>
                  </select>
                </div>
              </div>

              {/* Amenities */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Amenities
                </label>
                <div className="mt-2 flex flex-wrap gap-3">
                  {[
                    { name: 'Wi-Fi', icon: <Wifi />, color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100', checked: true },
                    { name: 'Breakfast', icon: null, color: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-100', checked: false },
                    { name: 'Parking', icon: null, color: 'bg-slate-100 text-slate-800 dark:bg-slate-900 dark:text-slate-100', checked: false },
                    { name: 'Kitchen', icon: null, color: 'bg-emerald-100 text-emerald-800 dark:bg-emerald-900 dark:text-emerald-100', checked: false },
                    { name: 'A/C', icon: <Snow />, color: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-100', checked: true },
                    { name: 'Pet-friendly', icon: <Bug />, color: 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-100', checked: true },
                    { name: 'Pool', icon: null, color: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-100', checked: false },
                    { name: 'Gym', icon: null, color: 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-100', checked: false },
                    { name: 'Spa', icon: null, color: 'bg-rose-100 text-rose-800 dark:bg-rose-900 dark:text-rose-100', checked: false },
                  ].map(({ name, icon, color, checked }) => (
                    <label
                      key={name}
                      className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                    >
                      <input
                        type="checkbox"
                        checked={checked}
                        onChange={() => { }}
                        className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                      />
                      {icon && <span className="text-base">{icon}</span>}
                      <span>{name}</span>
                    </label>
                  ))}
                </div>
              </div>

            </div>
          </section>

          {/* Food & Restrictions */}
          <section className={`${card}`}>
            <h2 className={sectionTitle}>Food & Dietary Restrictions</h2>
            <p className={sectionDesc}>
              Share what you love to eat, what you want to avoid, and any allergies.
            </p>

            <div className="mt-4 space-y-6">
              {/* Food Preferences */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Food preferences
                </label>
                <div className="mt-2 flex flex-wrap gap-3">
                  {[
                    { name: 'Local Cuisine', icon: <EggFried />, color: 'bg-amber-100 text-amber-800 dark:bg-amber-900 dark:text-amber-100', checked: true },
                    { name: 'Street Food', icon: <CupStraw />, color: 'bg-rose-100 text-rose-800 dark:bg-rose-900 dark:text-rose-100', checked: false },
                    { name: 'Fine Dining', icon: <Award />, color: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-100', checked: false },
                    { name: 'Seafood', icon: <Flower2 />, color: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-100', checked: false },
                    { name: 'Vegetarian', icon: <Leaf />, color: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100', checked: false },
                    { name: 'Vegan', icon: <Flower1 />, color: 'bg-emerald-100 text-emerald-800 dark:bg-emerald-900 dark:text-emerald-100', checked: false },
                    { name: 'Desserts', icon: <Cake2 />, color: 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-100', checked: false },
                    { name: 'Wine/Beer', icon: <Cup />, color: 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-100', checked: true },
                  ].map(({ name, icon, color, checked }) => (
                    <label
                      key={name}
                      className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                    >
                      <input
                        type="checkbox"
                        checked={checked}
                        onChange={() => { }}
                        className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                      />
                      <span className="text-base">{icon}</span>
                      <span>{name}</span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Dietary Restrictions */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Dietary restrictions
                </label>
                <div className="mt-2 flex flex-wrap gap-3">
                  {[
                    {
                      name: 'Gluten-free',
                      color: 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-100',
                      icon: <SlashCircle />,
                      checked: false,
                    },
                    {
                      name: 'Lactose-free',
                      color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100',
                      icon: <CupStraw />,
                      checked: false,
                    },
                    {
                      name: 'Halal',
                      color: 'bg-teal-100 text-teal-800 dark:bg-teal-900 dark:text-teal-100',
                      icon: <MoonStars />,
                      checked: false,
                    },
                    {
                      name: 'Kosher',
                      color: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-100',
                      icon: <Star />,
                      checked: false,
                    },
                    {
                      name: 'Low sugar',
                      color: 'bg-slate-100 text-slate-800 dark:bg-slate-900 dark:text-slate-100',
                      icon: <DropletHalf />,
                      checked: true,
                    },
                  ].map(({ name, color, icon, checked }) => (
                    <label
                      key={name}
                      className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                    >
                      <input
                        type="checkbox"
                        checked={checked}
                        onChange={() => { }}
                        className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                      />
                      <span className="text-base">{icon}</span>
                      <span>{name}</span>
                    </label>
                  ))}
                </div>
              </div>

              {/* Allergies */}
              <div>
                <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                  Allergies
                </label>
                <div>
                  <label className="block text-sm font-medium text-gray-700 dark:text-gray-300">
                    Allergies
                  </label>
                  <div className="mt-2 flex flex-wrap gap-3">
                    {[
                      {
                        name: 'Nuts',
                        color: 'bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-100',
                        icon: <Nut />,
                        checked: true,
                      },
                      {
                        name: 'Shellfish',
                        color: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-100',
                        icon: <Droplet />,
                        checked: false,
                      },
                      {
                        name: 'Eggs',
                        color: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-100',
                        icon: <Egg />,
                        checked: false,
                      },
                      {
                        name: 'Soy',
                        color: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100',
                        icon: <CupStraw />,
                        checked: false,
                      },
                      {
                        name: 'Dairy',
                        color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100',
                        icon: <CupHot />,
                        checked: false,
                      },
                      {
                        name: 'Wheat',
                        color: 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-100',
                        icon: <SlashCircle />,
                        checked: false,
                      },
                    ].map(({ name, color, icon, checked }) => (
                      <label
                        key={name}
                        className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                      >
                        <input
                          type="checkbox"
                          checked={checked}
                          onChange={() => { }}
                          className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                        />
                        <span className="text-base">{icon}</span>
                        <span>{name}</span>
                      </label>
                    ))}
                  </div>
                </div>
                {/* Custom input */}
                <input
                  type="text"
                  placeholder="Other allergies..."
                  className="mt-3 w-full rounded-md border border-gray-300 px-3 py-2 text-sm text-gray-800 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-100"
                />
              </div>
            </div >
          </section >

          {/* Points of Interest */}
          < section className={`${card}`
          }>
            <h2 className={sectionTitle}>Points of Interest</h2>
            <p className={sectionDesc}>
              Select the landmarks and attractions you’d like to explore.
            </p>

            <div className="mt-4 flex flex-wrap gap-3">
              {[
                { name: 'Castles', icon: <HousesFill />, color: 'bg-amber-100 text-amber-800 dark:bg-amber-900 dark:text-amber-100', checked: false },
                { name: 'Churches & Cathedrals', icon: <Building />, color: 'bg-indigo-100 text-indigo-800 dark:bg-indigo-900 dark:text-indigo-100', checked: false },
                { name: 'Monuments', icon: <Award />, color: 'bg-gray-100 text-gray-800 dark:bg-gray-800 dark:text-gray-100', checked: true },
                { name: 'Museums', icon: <Bank />, color: 'bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100', checked: true },
                { name: 'Historical Sites', icon: <Book />, color: 'bg-yellow-100 text-yellow-800 dark:bg-yellow-900 dark:text-yellow-100', checked: true },
                { name: 'Palaces', icon: <House />, color: 'bg-pink-100 text-pink-800 dark:bg-pink-900 dark:text-pink-100', checked: true },
                { name: 'Archaeological Sites', icon: <Layers />, color: 'bg-orange-100 text-orange-800 dark:bg-orange-900 dark:text-orange-100', checked: false },
                { name: 'Bridges', icon: <Bezier />, color: 'bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-100', checked: false },
                { name: 'Parks & Gardens', icon: <Tree />, color: 'bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100', checked: true },
                { name: 'Modern Landmarks', icon: <BuildingFillUp />, color: 'bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-100', checked: false },

              ].map(({ name, color, icon, checked }) => (
                <label
                  key={name}
                  className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                >
                  <input
                    type="checkbox"
                    checked={checked}
                    onChange={() => { }}
                    className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                  />
                  <span className="text-base">{icon}</span>
                  <span>{name}</span>
                </label>
              ))}
            </div>
          </section >

          {/* Transportation */}
          < section className={`${card}`}>
            <h2 className={sectionTitle}>Transportation</h2>
            <p className={sectionDesc}>
              How do you prefer to move around during your trip?
            </p>

            <div className="mt-4 space-y-4">
              {/* Main transport options */}
              <div className="flex flex-wrap gap-3">
                {transports.map(({ key, name, icon, color, checked }) => (
                  <label
                    key={key}
                    className={`inline-flex items-center gap-2 rounded-full border border-transparent px-3 py-1 text-sm font-medium shadow-sm cursor-pointer hover:opacity-90 ${color}`}
                  >
                    <input
                      type="checkbox"
                      name={`transport-${key}`}
                      checked={checked || (key === 'car' && carSelected)}
                      className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                      onChange={(e) => {
                        if (key === 'car') {
                          setCarSelected(e.target.checked)
                        }
                      }}
                    />
                    {icon}
                    <span>{name}</span>
                  </label>
                ))}
              </div>

              {/* Conditional: Rent a car */}
              {carSelected && (
                <div className="ml-6">
                  <label className="inline-flex items-center gap-2 text-sm text-gray-700 dark:text-gray-300">
                    <input
                      type="checkbox"
                      name="rent-car"
                      className="h-4 w-4 rounded border-gray-300 text-blue-600 focus:ring-blue-500 dark:border-gray-600 dark:bg-gray-800"
                    />
                    <span>Rent a car at destination</span>
                  </label>
                </div>
              )}
            </div>
          </section >

          {/* Form Actions */}
          < section className="mt-8 flex flex-wrap justify-end gap-3 border-t border-gray-200 pt-4 dark:border-gray-700" >
            <button
              type="button"
              className="inline-flex items-center gap-2 rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-200 dark:hover:bg-gray-700"
              onClick={() => {
                // TODO: implement save (e.g., localStorage or API call)
                console.log('Saved for later')
              }}
            >
              <Save className="h-4 w-4" />
              Save for later
            </button>

            <button
              type="reset"
              className="inline-flex items-center gap-2 rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50 dark:border-gray-600 dark:bg-gray-800 dark:text-gray-200 dark:hover:bg-gray-700"
              onClick={() => {
                const form = document.querySelector('form')
                if (form) form.reset()
                console.log('Form reset')
              }}
            >
              <ArrowClockwise className="h-4 w-4" />
              Reset
            </button>

            <button
              type="submit"
              className="inline-flex items-center gap-2 rounded-md border border-transparent bg-blue-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2 dark:focus:ring-offset-gray-900"
              onClick={() => {
                router.push('/results')
              }}
            >
              <Send className="h-4 w-4" />
              Submit
            </button>
          </section >



        </form >
      </div >
    </div >
  )
}
