import { useEffect, useState } from "react";

interface PenaltyDetail {
  usuario_id: number;
  nombre_usuario: string;
  tipo_usuario: string;
  email: string;
  telefono: string;
  multa_id: number;
  monto: number;
  pagada: boolean;
  fechaInicio: string;
  fechaFin: string;
  devuelto: boolean;
  libro: string;
  isbn: string;
  codigo_ejemplar: string;
}

export function usePenaltyDetails() {
  const [data, setData] = useState<PenaltyDetail[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    const fetchPenaltyDetails = async () => {
      try {
        const res = await fetch("/api/views/penalty-details");
        if (!res.ok) throw new Error("Error al cargar detalles de multas");
        const json = await res.json();
        setData(json);
      } catch (err: any) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchPenaltyDetails();
  }, []);

  return { data, loading, error };
}
