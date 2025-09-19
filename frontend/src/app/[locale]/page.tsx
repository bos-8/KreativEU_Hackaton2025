// @file: src/app/page.tsx
'use client';
import { useTranslations } from "next-intl";
import Hyperspeed from './Hyperspeed';
export default function Home() {
  const t = useTranslations('HomePage');

  return (
    <main className="flex flex-col items-center justify-center px-6 py-12 bg-gray-50 dark:bg-gray-900 height-80vh transition-colors">
      <div
        className="absolute inset-0 z-0 opacity-70" // 👈 opacity darkens
        aria-hidden="true"
      >

        <Hyperspeed
          effectOptions={{
            onSpeedUp: () => { },
            onSlowDown: () => { },
            distortion: 'turbulentDistortion',
            length: 400,
            roadWidth: 10,
            islandWidth: 2,
            lanesPerRoad: 4,
            fov: 90,
            fovSpeedUp: 100,
            speedUp: 0.8,
            carLightsFade: 0.4,
            totalSideLightSticks: 20,
            lightPairsPerRoadWay: 40,
            shoulderLinesWidthPercentage: 0.05,
            brokenLinesWidthPercentage: 0.1,
            brokenLinesLengthPercentage: 0.5,
            lightStickWidth: [0.12, 0.5],
            lightStickHeight: [1.3, 1.7],
            movingAwaySpeed: [60, 80],
            movingCloserSpeed: [-120, -180],
            carLightsLength: [400 * 0.03, 400 * 0.2],
            carLightsRadius: [0.05, 0.14],
            carWidthPercentage: [0.3, 0.5],
            carShiftX: [-0.8, 0.8],
            carFloorSeparation: [0, 5],
            colors: {
              roadColor: 0x080808,
              islandColor: 0x0a0a0a,
              background: 0x000000,
              shoulderLines: 0xFFFFFF,
              brokenLines: 0xFFFFFF,
              leftCars: [0xFFD700, 0xc8fc37, 0x00fa00],
              rightCars: [0x03B3C3, 0x0E5EA5, 0x324555],
              sticks: 0x03B3C3,
            }
          }}
        />
      </div>
      {/* === Glass effect card with text === */}
      <div className="relative z-10 max-w-3xl mx-auto mt-35 p-10 rounded-2xl bg-white/10 dark:bg-black/40 backdrop-blur-md shadow-xl text-center flex flex-col items-center">
        {/* Title with logo */}
        <div className="flex items-center justify-center gap-3">
          <img
            src="/logo.png"
            alt="WandrEU Logo"
            className="w-36 h-36 object-contain drop-shadow-lg"
          />
          <h1 className="text-5xl font-extrabold text-white drop-shadow-lg">WandrEU</h1>
        </div>

        {/* Intro */}
        <p className="mt-6 text-lg text-gray-200 leading-relaxed">
          {t.rich('text1', {
            bold: (chunks) => <span className="font-semibold text-yellow-300">{chunks}</span>,
            italic: (chunks) => <span className="italic text-indigo-300">{chunks}</span>
          })}
        </p>

        <p className="mt-4 text-base text-gray-300">
          {t.rich('text2', {
            italic: (chunks) => <span className="italic text-indigo-300">{chunks}</span>
          })}
        </p>
      </div>

    </main>
  );
}
