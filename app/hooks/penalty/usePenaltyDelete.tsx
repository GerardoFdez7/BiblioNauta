import { useState } from 'react';

interface UsePenaltyDeleteResult {
  deletePenalty: (id: number) => Promise<void>;
  loading: boolean;
  error: string | null;
}

export function usePenaltyDelete(onSuccess?: () => void): UsePenaltyDeleteResult {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const deletePenalty = async (id: number) => {
    try {
      setLoading(true);
      const res = await fetch('/api/penalty', {
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({ id }),
      });

      if (res.ok) {
        setError(null);
        if (onSuccess) onSuccess();
      } else {
        const errorData = await res.json();
        setError(errorData.message || 'Error al eliminar la multa');
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return { deletePenalty, loading, error };
}
