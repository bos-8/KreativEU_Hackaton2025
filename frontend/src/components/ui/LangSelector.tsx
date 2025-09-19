'use client';

import { useLocale } from 'next-intl';
import { usePathname, useRouter } from 'next/navigation';
import { useTransition, useCallback, useEffect, useRef, useState } from 'react';
import { Translate } from 'react-bootstrap-icons';

type LocaleDef = { code: string; label: string; flag?: string };

const LOCALES: LocaleDef[] = [
  { code: 'en', label: 'English', flag: '🇬🇧' },
  { code: 'it', label: 'Italiano', flag: '🇮🇹' },
  { code: 'pt', label: 'Português', flag: '🇵🇹' },
  { code: 'pl', label: 'Polski', flag: '🇵🇱' },
  { code: 'es', label: 'Español', flag: '🇪🇸' },
  { code: 'cs', label: 'Čeština', flag: '🇨🇿' },
  { code: 'de', label: 'Deutsch', flag: '🇩🇪' },
  { code: 'nl', label: 'Nederlands', flag: '🇳🇱' },
  { code: 'at', label: 'Deutsch (Österreich)', flag: '🇦🇹' },
  { code: 'sk', label: 'Slovenčina', flag: '🇸🇰' },
  { code: 'ro', label: 'Română', flag: '🇷🇴' },
  { code: 'bg', label: 'Български', flag: '🇧🇬' },
  { code: 'tr', label: 'Türkçe', flag: '🇹🇷' },
  { code: 'se', label: 'Svenska', flag: '🇸🇪' }
];

function replaceLocaleInPath(pathname: string, newLocale: string): string {
  const raw = pathname || '/';
  const parts = raw.split('/');
  if (parts[0] !== '') parts.unshift('');
  const known = new Set(LOCALES.map(l => l.code));
  if (parts.length > 1 && known.has(parts[1])) {
    parts[1] = newLocale;
  } else {
    parts.splice(1, 0, newLocale);
  }
  return parts.join('/').replace(/\/{2,}/g, '/');
}

export const LangSelector = () => {
  const locale = useLocale();
  const router = useRouter();
  const pathname = usePathname();
  const [isPending, startTransition] = useTransition();
  const [open, setOpen] = useState(false);
  const [dropUp, setDropUp] = useState(false); // 👈 NEW state
  const buttonRef = useRef<HTMLButtonElement | null>(null);
  const menuRef = useRef<HTMLDivElement | null>(null);

  const current = LOCALES.find(l => l.code === locale) ?? LOCALES[0];

  const navigateTo = useCallback(
    (code: string) => {
      const newPath = replaceLocaleInPath(pathname, code);
      startTransition(() => router.replace(newPath));
      setOpen(false);
    },
    [pathname, router]
  );

  // Handle open/close + detect space
  const toggleOpen = () => {
    if (!open && buttonRef.current) {
      const rect = buttonRef.current.getBoundingClientRect();
      const spaceBelow = window.innerHeight - rect.bottom;
      const spaceAbove = rect.top;
      // If not enough space below (e.g. < 200px), flip up
      setDropUp(spaceBelow < 200 && spaceAbove > spaceBelow);
    }
    setOpen(o => !o);
  };

  // Close on outside click / ESC
  useEffect(() => {
    function onDocClick(e: MouseEvent) {
      if (!open) return;
      const t = e.target as Node;
      if (menuRef.current?.contains(t) || buttonRef.current?.contains(t)) return;
      setOpen(false);
    }
    function onKey(e: KeyboardEvent) {
      if (e.key === 'Escape') setOpen(false);
    }
    document.addEventListener('mousedown', onDocClick);
    document.addEventListener('keydown', onKey);
    return () => {
      document.removeEventListener('mousedown', onDocClick);
      document.removeEventListener('keydown', onKey);
    };
  }, [open]);

  return (
    <div className="relative inline-block text-left">
      <button
        ref={buttonRef}
        type="button"
        onClick={toggleOpen}
        aria-haspopup="menu"
        aria-expanded={open}
        aria-label="Change language"
        disabled={isPending}
        className="flex items-center gap-2 px-3 py-2 rounded-xl border border-gray-300 dark:border-gray-600 bg-white dark:bg-gray-800 text-gray-800 dark:text-gray-100 hover:bg-gray-100 dark:hover:bg-gray-700 transition-colors text-sm"
      >
        <Translate className="w-5 h-5" />
        <span className="flex items-center gap-1">
          {current.flag && <span aria-hidden>{current.flag}</span>}
          <span className="font-medium uppercase">{current.code}</span>
        </span>
        <svg
          className="ml-1 h-4 w-4 opacity-70"
          viewBox="0 0 20 20"
          fill="currentColor"
          aria-hidden
        >
          <path d="M5.23 7.21a.75.75 0 011.06.02L10 10.94l3.71-3.71a.75.75 0 111.06 1.06l-4.24 4.24a.75.75 0 01-1.06 0L5.21 8.29a.75.75 0 01.02-1.08z" />
        </svg>
      </button>

      {open && (
        <div
          ref={menuRef}
          role="menu"
          aria-label="Select language"
          className={[
            'absolute z-50 w-44 origin-top-right rounded-xl border bg-white dark:bg-gray-800 shadow-lg ring-1 ring-black/5 overflow-hidden',
            'border-gray-200 dark:border-gray-700',
            dropUp ? 'bottom-full mb-2 right-0 origin-bottom-right' : 'top-full mt-2 right-0 origin-top-right'
          ].join(' ')}
        >
          <ul className="max-h-64 overflow-auto py-1">
            {LOCALES.map(l => {
              const active = l.code === locale;
              return (
                <li key={l.code}>
                  <button
                    role="menuitem"
                    onClick={() => navigateTo(l.code)}
                    className={[
                      'w-full flex items-center gap-2 px-3 py-2 text-left text-sm',
                      active
                        ? 'bg-gray-100 dark:bg-gray-700 text-gray-900 dark:text-gray-50'
                        : 'hover:bg-gray-50 dark:hover:bg-gray-700 text-gray-800 dark:text-gray-100',
                    ].join(' ')}
                  >
                    <span className="w-5 text-center" aria-hidden>{l.flag ?? '🏳️'}</span>
                    <span className="flex-1">{l.label}</span>
                    <span className="text-xs uppercase opacity-70">{l.code}</span>
                  </button>
                </li>
              );
            })}
          </ul>
        </div>
      )}
    </div>
  );
};
