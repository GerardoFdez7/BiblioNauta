import { useState } from 'react';
import { Libro } from './useBook';

interface UseBookCreateResult {
  createLibro: (libroData: Omit<Libro, 'id' | 'editorial' | 'categoria' | 'createdAt'>) => Promise<void>;
  loading: boolean;
  error: string | null;
  success: string | null;
}

export function useBookCreate(onSuccess?: () => void): UseBookCreateResult {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  const createLibro = async (
    libroData: Omit<Libro, 'id' | 'editorial' | 'categoria' | 'createdAt'>
  ) => {
    try {
      setLoading(true);
      setError(null);
      setSuccess(null);

      const res = await fetch('/api/books', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(libroData),
      });

      const json = await res.json();

      if (json.success) {
        setSuccess(json.message);
        if (onSuccess) onSuccess();
      } else {
        setError(json.message || 'Error al crear libro');
      }
    } catch (err: any) {
      setError(err.message || 'Error inesperado');
    } finally {
      setLoading(false);
    }
  };

  return { createLibro, loading, error, success };
}
