import { useState } from "react";

export function useBookUpdate(onUpdated: () => void) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  const updateLibro = async (id: number, data: any) => {
    setLoading(true);
    setError(null);
    setSuccess(null);
    try {
      const res = await fetch(`/api/books?id=${id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data),
      });

      const json = await res.json();
      if (!json.success) throw new Error(json.message);
      setSuccess(json.message);
      onUpdated();
    } catch (err: any) {
      setError(err.message || "Error al actualizar");
    } finally {
      setLoading(false);
    }
  };

  return { updateLibro, loading, error, success };
}
