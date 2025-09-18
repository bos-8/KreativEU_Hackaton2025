// @file: components/ui/Input.tsx
'use client'

import { cn } from '@/lib/utils/cn'
import React from 'react'

interface InputProps extends React.InputHTMLAttributes<HTMLInputElement> {
  label?: string
  error?: string
  readOnly?: boolean
  value?: string | number // ✅ explicit value prop
}

export function Input({
  label,
  error,
  className,
  type = 'text',
  placeholder,
  disabled = false,
  readOnly = false,
  value,
  ...props
}: InputProps) {
  return (
    <div className="w-full space-y-1">
      {label && (
        <label
          className={cn(
            'block text-sm font-medium',
            disabled
              ? 'text-gray-400 dark:text-gray-500'
              : 'text-gray-700 dark:text-gray-300'
          )}
        >
          {label}
        </label>
      )}

      <input
        type={type}
        defaultValue={value} // ✅ explicit controlled value
        placeholder={placeholder || label}
        disabled={disabled}
        readOnly={readOnly}
        {...props}
        className={cn(
          'w-full rounded-lg border px-3 py-1 shadow-sm',
          'bg-white text-gray-900 border-gray-300 focus:ring-2 focus:ring-blue-500 focus:border-blue-500',
          'dark:bg-gray-700 dark:border-gray-600 dark:text-white dark:focus:ring-blue-400',
          error ? 'border-red-500 dark:border-red-400' : '',
          disabled
            ? 'cursor-not-allowed bg-gray-100 text-gray-400 dark:bg-gray-800 dark:text-gray-500'
            : '',
          readOnly && !disabled
            ? 'bg-gray-50 dark:bg-gray-800 text-gray-500 dark:text-gray-400'
            : '',
          className
        )}
      />

      {error && (
        <p className="text-xs text-red-600 dark:text-red-400">{error}</p>
      )}
    </div>
  )
}
