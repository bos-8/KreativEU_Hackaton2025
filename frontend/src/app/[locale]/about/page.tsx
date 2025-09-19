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
              <p className="text-sm text-gray-300">{t('lead')}</p>
              <p className="text-xs text-gray-400">{t('strategy')}</p>
            </div>

            {/* Member 2 */}
            <div className="flex flex-col items-center">
              <img
                src="/jesus.png"
                alt="Member 2"
                className="w-24 h-24 rounded-full border-2 border-white shadow-md object-cover"
              />
              <h3 className="mt-4 text-lg font-semibold text-white">André de Jesus Elias Costa</h3>
              <p className="text-sm text-gray-300">{t('consultant')}</p>
              <p className="text-xs text-gray-400">{t('aiWebDev')}</p>
            </div>

            {/* Member 3 */}
            <div className="flex flex-col items-center">
              <img
                src="/bos.jpg"
                alt="Member 3"
                className="w-24 h-24 rounded-full border-2 border-white shadow-md object-cover"
              />
              <h3 className="mt-4 text-lg font-semibold text-white">Kacper Boś</h3>
              <p className="text-sm text-gray-300">{t('architect')}</p>
              <p className="text-xs text-gray-400">{t('nextJsReact')}</p>
            </div>
          </div>
        </section>

        <div className="relative z-10 max-w-4xl mx-auto p-10 mt-12 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl text-center">
          <h1 className="text-5xl font-extrabold text-white drop-shadow-lg">{t('card.title')}</h1>

          {/* Intro */}
          <p className="mt-6 text-lg text-gray-200 leading-relaxed">
            {t.rich('card.intro', {
              y: (chunks) => <span className="font-semibold text-yellow-300">{chunks}</span>,
              i: (chunks) => <span className="italic text-indigo-300">{chunks}</span>
            })}
          </p>

          {/* Trip pitch */}
          <p className="mt-4 text-base text-gray-300">
            {t.rich('card.pitch', {
              i: (chunks) => <span className="italic text-indigo-300">{chunks}</span>
            })}
          </p>

          {/* European Values */}
          <div className="mt-8 text-left text-gray-200">
            <h2 className="text-2xl font-bold text-white mb-3">{t('card.valuesTitle')}</h2>
            <p className="mb-2">{t('card.valuesIntro')}</p>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-300">
              <li>{t('card.valuesList.1')}</li>
              <li>{t('card.valuesList.2')}</li>
              <li>{t('card.valuesList.3')}</li>
              <li>{t('card.valuesList.4')}</li>
            </ul>
            <p className="mt-3 text-sm text-gray-400">
              {t.rich('card.valuesOutro', {
                b: (chunks) => <strong>{chunks}</strong>
              })}
            </p>
          </div>

          {/* Sustainability */}
          <div className="mt-8 text-left text-gray-200">
            <h2 className="text-2xl font-bold text-white mb-3">{t('card.sustainTitle')}</h2>
            <p className="mb-2 text-sm">
              {t.rich('card.sustainIntro', {
                g: (chunks) => <span className="font-semibold text-green-300">{chunks}</span>
              })}
            </p>
            <ul className="list-disc list-inside space-y-1 text-sm text-gray-300">
              <li>{t('card.sustainList.1')}</li>
              <li>{t('card.sustainList.2')}</li>
              <li>{t('card.sustainList.3')}</li>
              <li>{t('card.sustainList.4')}</li>
            </ul>
            <p className="mt-3 text-sm text-gray-400">
              {t.rich('card.sustainOutro', {
                i: (chunks) => <em>{chunks}</em>
              })}
            </p>
          </div>
        </div>


      </main >
    </>
  );
}
