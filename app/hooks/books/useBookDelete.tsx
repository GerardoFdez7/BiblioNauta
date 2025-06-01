import { useState } from 'react';

interface UseBookDeleteResult {
  deleteLibro: (id: number) => Promise<void>;
  loading: boolean;
  error: string | null;
}

export function useBookDelete(onSuccess?: () => void): UseBookDeleteResult {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const deleteLibro = async (id: number) => {
    try {
      setLoading(true);
      const res = await fetch(`/api/books?id=${id}`, {
        method: 'DELETE',
      });
      const json = await res.json();

      if (json.success) {
        setError(null);
        if (onSuccess) onSuccess();
      } else {
        setError(json.message || 'Error al eliminar libro');
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return { deleteLibro, loading, error };
}
