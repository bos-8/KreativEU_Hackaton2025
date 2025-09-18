// @file: src/components/layout/Navbar.tsx
'use client';

import Link from 'next/link';
import Image from 'next/image'
import { useTranslations } from 'next-intl';
import { usePathname } from 'next/navigation'
import { useState, useRef, useEffect } from 'react'

const NavbarLink = ({ href, label }: { href: string; label: string }) => {
  const pathname = usePathname()
  const [isActive, setIsActive] = useState(false)

  useEffect(() => {
    setIsActive(pathname === href)
  }, [pathname, href])

  return (
    <div className="relative">
      <Link
        href={href}
        className={`inline-block px-3 py-2 rounded-md text-sm font-medium transition-colors
          ${isActive
            ? 'text-black dark:text-white font-semibold'
            : 'text-gray-600 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-gray-700 hover:text-black dark:hover:text-white'}
        `}
      >
        {label}
      </Link>
      {isActive && (
        <div className="absolute left-0 right-0 bottom-2 h-[2px] bg-green-600 dark:bg-green-400 rounded-full" />
      )}
    </div>
  )
}

export default function Navbar() {
  const t = useTranslations('Navbar');

  return (
    <nav className="bg-white dark:bg-gray-800 shadow-md border-b border-gray-200 dark:border-gray-700 sticky top-0 z-100">
      <div className="max-w-7xl mx-auto px-4 py-1 flex items-center">
        {/* Logo + Name */}
        <Link href="/" className="flex items-center gap-2 text-xl font-bold text-gray-800 dark:text-white">
          <Image src="/logo.png" alt="Logo" width={32} height={32} />
          WandrEU
        </Link>

        {/* Separator */}
        <div className="mx-4 h-6 w-px bg-gray-300 dark:bg-gray-600" />

        {/* Navigation Links */}
        <div className="flex gap-4 text-sm font-medium">
          <NavbarLink href="/" label={t('home')} />
          <NavbarLink href="/feedback" label="Feedback" />
          <NavbarLink href="/planner" label="Trip Planner" />
        </div>

        {/* Spacer */}
        <div className="ml-auto flex items-center gap-4">

          <NavbarLink href="/about" label="About" />
        </div>
      </div>
    </nav>
  );
}
