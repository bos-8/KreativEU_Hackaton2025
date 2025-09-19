// @file: src/app/page.tsx
'use client';
import { useTranslations } from "next-intl";
import LetterGlitch from './LetterGlitch';


export default function Home() {
  const t = useTranslations('About');

  return (
    <>
      <div
        className="fixed top-0 left-0 w-full h-full z-0 opacity-70"
        aria-hidden="true"
      >
        <LetterGlitch
          glitchSpeed={50}
          centerVignette={true}
          outerVignette={false}
          smooth={true}
          glitchColors={["#33D700", "#ffdf20", "#0044fa"]}
          characters="EUEUEUEUEUEUEUwtf??uwuwu"
        />
      </div>

      <main className="flex flex-col items-center justify-center px-6 py-12 bg-gray-50 dark:bg-gray-900 height-80vh transition-colors">

        {/* === Team Section === */}
        <section className="relative z-10 max-w-4xl mx-auto mt-6 p-10 rounded-2xl bg-white/10 dark:bg-black/30 backdrop-blur-md shadow-xl text-center">
          <h2 className="text-3xl font-bold text-white drop-shadow-md mb-2">{t('team')}</h2>

          {/* Meaning of the name */}
          <p className="text-gray-200 leading-relaxed max-w-2xl mx-auto">
            {t.rich("visionText", {
              b: (chunks) => <strong>{chunks}</strong>,
              y: (chunks) => <span className="font-semibold text-yellow-300">{chunks}</span>,
              bl: (chunks) => <span className="font-semibold text-blue-400">{chunks}</span>,
              in: (chunks) => <span className="font-semibold text-indigo-300">{chunks}</span>
            })}
          </p>



          {/* Team members */}
          < div className="mt-8 grid grid-cols-1 md:grid-cols-3 gap-8" >
            {/* Member 1 */}
            < div className="flex flex-col items-center" >
              <img
                src="/claudia.png"
                alt="Member 1"
                className="w-24 h-24 rounded-full border-2 border-white shadow-md object-cover"
              />
              <h3 className="mt-4 text-lg font-semibold text-white">Claudia Germoni</h3>
              <p className="text-sm text-gray-300">Project Lead</p>
              <p className="text-xs text-gray-400">Strategy & Coordination</p>
            </div>

            {/* Member 2 */}
            <div className="flex flex-col items-center">
              <img
                src="/jesus.png"
                alt="Member 2"
                className="w-24 h-24 rounded-full border-2 border-white shadow-md object-cover"
              />
              <h3 className="mt-4 text-lg font-semibold text-white">André de Jesus Elias Costa</h3>
              <p className="text-sm text-gray-300">Selling Consultant</p>
              <p className="text-xs text-gray-400">AI & Web Development</p>
            </div>

            {/* Member 3 */}
            <div className="flex flex-col items-center">
              <img
                src="/bos.jpg"
                alt="Member 3"
                className="w-24 h-24 rounded-full border-2 border-white shadow-md object-cover"
              />
              <h3 className="mt-4 text-lg font-semibold text-white">Kacper Boś</h3>
              <p className="text-sm text-gray-300">Architect</p>
              <p className="text-xs text-gray-400">next.js React, TypeScript, Tailwind CSS</p>
            </div>
          </div>
        </section>

        {/* === Glass effect card with text === */}
        <div className="relative z-10 max-w-4xl mx-auto p-10 mt-12 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl text-center">
          <h1 className="text-5xl font-extrabold text-white drop-shadow-lg">WandrEU</h1>

          {/* Intro */}
          <p className="mt-6 text-lg text-gray-200 leading-relaxed">
            Discover the <span className="font-semibold text-yellow-300">hidden gems</span> of Europe.
            From historic castles to breathtaking coastlines, we craft journeys that let you experience
            culture, nature, and history — <span className="italic text-indigo-300">your way</span>.
          </p>

          {/* Trip pitch */}
          <p className="mt-4 text-base text-gray-300">
            Choose your destination and how long you’d like to explore.
            Our AI-powered planner will build the <span className="italic text-indigo-300">perfect itinerary</span>,
            balancing adventure and relaxation.
          </p>

          {/* EU values */}
          <div className="mt-8 text-left text-gray-200">
            <h2 className="text-2xl font-bold text-white mb-3">🇪🇺 European Values</h2>
            <p className="mb-2">
              The EU is founded on six core values that shape our society:
            </p>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-300">
              <li>Respect for human dignity</li>
              <li>Freedom & Democracy</li>
              <li>Equality & Rule of law</li>
              <li>Respect for human rights, including those of minorities</li>
            </ul>
            <p className="mt-3 text-sm text-gray-400">
              These values ensure pluralism, tolerance, justice, solidarity and non-discrimination across Europe.
            </p>
          </div>

          {/* Sustainability */}
          <div className="mt-8 text-left text-gray-200">
            <h2 className="text-2xl font-bold text-white mb-3">🌱 Sustainability</h2>
            <p className="mb-2 text-sm">
              The European Union is transforming its economy into a <span className="font-semibold text-green-300">circular model</span>,
              where resources are preserved and growth is decoupled from environmental harm.
            </p>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-300">
              <li>Climate-neutral economy with green innovation</li>
              <li>Protection of biodiversity, clean air and water</li>
              <li>Resource efficiency and eco-design standards</li>
              <li>Social inclusion and just transition for all regions</li>
            </ul>
            <p className="mt-3 text-sm text-gray-400">
              By choosing sustainable travel, every itinerary becomes part of a greener, fairer future for Europe.
            </p>
          </div>
        </div>

      </main >
    </>
  );
}
