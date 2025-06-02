import { useState } from "react";

export function usePenaltyUpdate(onUpdated: () => void) {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [success, setSuccess] = useState<string | null>(null);

  const updatePenalty = async (id: number, data: any) => {
    setLoading(true);
    setError(null);
    setSuccess(null);
    try {
      const res = await fetch(`/api/penalty`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ id, ...data }),
      });

      const json = await res.json();
      if (!json.success) throw new Error(json.message);
      setSuccess(json.message);
      onUpdated();
    } catch (err: any) {
      setError(err.message || "Ya existe una multa con ese código de préstamo");
    } finally {
      setLoading(false);
    }
  };

  return { updatePenalty, loading, error, success };
}
