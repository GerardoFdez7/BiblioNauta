import { useState } from 'react';
import { Penalty } from './usePenalty';

interface UsePenaltyCreateResult {
  createPenalty: (penaltyData: Omit<Penalty, 'id' | 'prestamo' | 'usuario'>) => Promise<void>;
  loading: boolean;
  error: string | null;
  success: string | null;
}

export function usePenaltyCreate(onSuccess?: () => void): UsePenaltyCreateResult {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  const createPenalty = async (
    penaltyData: Omit<Penalty, 'id' | 'prestamo' | 'usuario'>
  ) => {
    try {
      setLoading(true);
      setError(null);
      setSuccess(null);

      const res = await fetch('/api/penalty', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(penaltyData),
      });

      const json = await res.json();

      if (json.success) {
        setSuccess(json.message);
        if (onSuccess) onSuccess();
        //alert("ajajajaja")
      } else {
        setError(json.message || 'Error al crear multa');
      }
    } catch (err: any) {
      setError(err.message || 'Error inesperado');
    } finally {
      setLoading(false);
    }
  };

  return { createPenalty, loading, error, success };
}
