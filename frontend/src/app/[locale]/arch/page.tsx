'use client';
import { useEffect, useRef } from 'react';
import { useTranslations } from "next-intl";

export default function MatrixBackground() {
  const canvasRef = useRef<HTMLCanvasElement | null>(null);
  const t = useTranslations('Architecture');

  useEffect(() => {
    const canvas = canvasRef.current;
    if (!canvas) return;

    const ctx = canvas.getContext('2d');
    if (!ctx) return;

    const resize = () => {
      canvas.width = window.innerWidth;
      canvas.height = window.innerHeight;
    };
    resize();
    window.addEventListener('resize', resize);

    class Symbol {
      characters = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ';
      x: number;
      y: number;
      fontSize: number;
      canvasHeight: number;
      text: string;

      constructor(x: number, y: number, fontSize: number, canvasHeight: number) {
        this.x = x;
        this.y = y;
        this.fontSize = fontSize;
        this.canvasHeight = canvasHeight;
        this.text = '';
      }
      draw(context: CanvasRenderingContext2D) {
        this.text = this.characters.charAt(Math.floor(Math.random() * this.characters.length));
        context.fillStyle = '#0aff0a';
        context.fillText(this.text, this.x * this.fontSize, this.y * this.fontSize);
        if (this.y * this.fontSize > this.canvasHeight && Math.random() > 0.98) {
          this.y = 0;
        } else {
          this.y += 1;
        }
      }
    }

    class Effect {
      canvasWidth: number;
      canvasHeight: number;
      fontSize: number;
      columns: number;
      symbols: Symbol[] = [];

      constructor(canvasWidth: number, canvasHeight: number) {
        this.canvasWidth = canvasWidth;
        this.canvasHeight = canvasHeight;
        this.fontSize = 20;
        this.columns = this.canvasWidth / this.fontSize;
        this.initialize();
      }

      initialize() {
        for (let i = 0; i < this.columns; i++) {
          this.symbols[i] = new Symbol(i, 0, this.fontSize, this.canvasHeight);
        }
      }
    }

    const effect = new Effect(canvas.width, canvas.height);
    let lastTime = 0;
    const fps = 15;
    const nextFrame = 1000 / fps;
    let timer = 0;

    function animate(timeStamp: number) {
      const deltaTime = timeStamp - lastTime;
      lastTime = timeStamp;
      if (ctx && canvas) {
        if (timer > nextFrame) {
          ctx.fillStyle = 'rgba(0,0,0,0.05)';
          ctx.fillRect(0, 0, canvas.width, canvas.height);
          ctx.font = `${effect.fontSize}px monospace`;
          effect.symbols.forEach((s) => s.draw(ctx));
          timer = 0;
        } else {
          timer += deltaTime;
        }
      }
      requestAnimationFrame(animate);
    }

    animate(0);

    return () => {
      window.removeEventListener('resize', resize);
    };
  }, []);

  return (
    <>
      <canvas
        ref={canvasRef}
        className="fixed top-0 left-0 w-full h-full z-0"
      />

      {/* === Project Architecture === */}
      <section className="mt-16 max-w-5xl mx-auto p-10 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl text-justify">
        <h2 className="text-3xl font-bold text-white mb-6">{t('title')}</h2>

        {/* Current Flow */}
        <div className="mb-10">
          <h3 className="text-xl font-semibold text-yellow-300 mb-3">{t('subtitle')}</h3>
          <p className="text-gray-200 leading-relaxed mb-4">
            {t.rich("clientSide", {
              b: (chunks) => <strong>{chunks}</strong>,
              i: (chunks) => <em>{chunks}</em>,
              f: (chunks) => (
                <span className="font-medium text-indigo-300">{chunks}</span>
              )
            })}
          </p>

          <p className="text-gray-200 leading-relaxed mb-4">
            {t.rich("backendSide", {
              b: (chunks) => <strong>{chunks}</strong>,
              i: (chunks) => <em>{chunks}</em>,
              f: (chunks) => (
                <span className="font-medium text-green-300">{chunks}</span>
              )
            })}
          </p>

          <p className="text-gray-200 leading-relaxed mb-4">
            {t.rich("gaIntro", {
              f: (chunks) => (
                <span className="font-medium text-pink-300">{chunks}</span>
              ),
              i: (chunks) => <em>{chunks}</em>
            })}
          </p>

          <ul className="list-disc list-inside text-sm text-gray-300 space-y-1 mb-4">
            <li>{t.rich("gaPoints.maximizeScore", { b: (chunks) => <strong>{chunks}</strong> })}</li>
            <li>{t.rich("gaPoints.minimizeTravel", { b: (chunks) => <strong>{chunks}</strong> })}</li>
            <li>{t.rich("gaPoints.balanceLimits", { b: (chunks) => <strong>{chunks}</strong> })}</li>
          </ul>

          <p className="text-gray-200 leading-relaxed">
            {t.rich("gaResult", { i: (chunks) => <em>{chunks}</em> })}
          </p>

        </div>
      </section>

      {/* === Architecture Diagram === */}
      <section className="mt-16 max-w-5xl mx-auto p-8 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl text-center">
        <h2 className="text-3xl font-bold text-white mb-6">{t('systemFlow')}</h2>

        <div className="flex justify-center mb-6">
          <div className="p-4 rounded-xl bg-gray-500/10 dark:bg-white">
            <img
              src="/schema1.png"
              alt="System Architecture Diagram"
              className="rounded-lg"
            />
          </div>
        </div>

        <ol className="list-decimal list-inside text-left space-y-3 text-gray-200 text-sm md:text-base">
          {Array.from({ length: 7 }).map((_, i) => (
            <li key={i}>
              {t.rich(`flow.${i + 1}`, {
                b: (chunks) => <strong>{chunks}</strong>,
                i: (chunks) => <em>{chunks}</em>,
              })}
            </li>
          ))}
        </ol>

      </section>

      <section className="mt-16 max-w-5xl mx-auto p-10 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl">
        {/* Future Improvements */}
        <div className="mb-10">
          <h3 className="text-xl font-semibold text-yellow-300 mb-3">{t('aws')}</h3>
          <p className="text-gray-200 leading-relaxed mb-4">
            {t.rich('awsIntro', {
              b: (chunks) => <strong>{chunks}</strong>
            })}
          </p>
          <ul className="list-disc list-inside text-sm text-gray-300 space-y-1">
            {Array.from({ length: 6 }).map((_, i) => (
              <li key={i}>
                {t.rich(`awsPoints.${i + 1}`, {
                  b: (chunks) => <strong>{chunks}</strong>
                })}
              </li>
            ))}
          </ul>
          <p className="text-gray-200 leading-relaxed mt-3">
            {t.rich('awsOutro', {
              i: (chunks) => <em>{chunks}</em>
            })}
          </p>
        </div>

        {/* Functional Improvements */}
        <div>
          <h3 className="text-xl font-semibold text-green-300 mb-3">{t('future')}</h3>
          <p className="text-gray-200 leading-relaxed mb-4">
            {t.rich('futureIntro', {
              b: (chunks) => <strong>{chunks}</strong>
            })}
          </p>
          <ul className="list-disc list-inside text-sm text-gray-300 space-y-1">
            {Array.from({ length: 6 }).map((_, i) => (
              <li key={i}>
                {t.rich(`futurePoints.${i + 1}`, {
                  b: (chunks) => <strong>{chunks}</strong>
                })}
              </li>
            ))}
          </ul>
        </div>
      </section>

      <section className="mt-16 max-w-5xl mx-auto p-10 rounded-2xl bg-white/20 dark:bg-black/60 backdrop-blur-md shadow-xl text-justify">
        <div>
          <h3 className="text-xl font-semibold text-yellow-300 mb-3">{t('qa')}</h3>
          <div className="space-y-6 text-gray-200 text-sm">
            {Array.from({ length: 8 }).map((_, i) => (
              <div key={i}>
                <p className="font-semibold text-white">
                  {t(`qaItems.${i + 1}.q`)}
                </p>
                <p className="text-gray-300">
                  {t.rich(`qaItems.${i + 1}.a`, {
                    b: (chunks) => <strong>{chunks}</strong>,
                    i: (chunks) => <em>{chunks}</em>
                  })}
                </p>
              </div>
            ))}
          </div>
        </div>
      </section>

    </>
  );
}
