import { useEffect, useState } from "react";

interface Ejemplar{
  id: number;
  codigo: string;
}
export interface Prestamo{
  id:number;
  ejemplar: Ejemplar;
  ejemplarId: number;
}

export interface Usuario{
  id:number;
  nombre: string;
}
export interface Penalty {
  id: number;
  monto: number;
  pagada: boolean;
  prestamo: Prestamo;
  usuario: Usuario;
  prestamoId: number;
  usuarioId: number;
}

interface UsePenaltyResult {
  penalties: Penalty[] | null;
  loading: boolean;
  error: string | null;
  getPenalties: () => void;
}

export function usePenalty(): UsePenaltyResult {
  const [penalties, setPenalties] = useState<Penalty[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  const getPenalties = async () => {
    try {
      setLoading(true);
      const res = await fetch("/api/penalty");
      const json = await res.json();
      if (json.success) {
        setPenalties(json.data);
        setError(null);
      } else {
        setError(json.message || "Error al obtener multas");
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    getPenalties();
  }, []);

  return { penalties, loading, error, getPenalties };
};
