import { useState } from "react";

export default function usePendingPenalties() {
  const [total, setTotal] = useState<number | null>(null);
  const [loadingMulta, setLoading] = useState(false);
  const [errorMulta, setError] = useState<string | null>(null);

  const obtenerMultas = async (userId: number) => {
    setLoading(true);
    setError(null);

    try {
      const res = await fetch(`/api/views/penalty-total?q=${userId}`);
      if (!res.ok) throw new Error("Respuesta inválida");

      const json = await res.json();
      if (!json.total && json.total !== 0) throw new Error("Respuesta inválida");

      setTotal(json.total);
    } catch (err: any) {
      console.error(err);
      setError(err.message);
      setTotal(null);
    } finally {
      setLoading(false);
    }
  };

  return { total, loadingMulta, errorMulta, obtenerMultas };
}
