import { defineRouting } from 'next-intl/routing';

export const routing = defineRouting({
  // A list of all locales that are supported
  locales: ['en', 'pl', 'es', 'it', 'cs', 'pt', 'de', 'nl', 'at', 'sk', 'ro', 'bg', 'tr', 'se'],

  // Used when no locale matches
  defaultLocale: 'en'
});