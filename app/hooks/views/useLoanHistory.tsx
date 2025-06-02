import { useEffect, useState } from "react";

export interface LoanHistory {
  usuario_id: number;
  nombre_usuario: string;
  tipo_usuario: string;
  email: string;
  telefono: string;
  prestamo_id: number;
  fechaInicio: string;
  fechaFin: string;
  devuelto: boolean;
  estado_prestamo: string;
  codigo_ejemplar: string;
  estado_ejemplar: string;
  libro_id: number;
  titulo_libro: string;
  isbn: string;
  autores: string;
  categoria: string;
  editorial: string;
  multa_id: number | null;
  monto: number | null;
  pagada: boolean | null;
}

export default function useLoanHistory() {
  const [loanHistory, setLoanHistory] = useState<LoanHistory[] | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const [isError, setIsError] = useState(false);

  useEffect(() => {
    const fetchData = async () => {
      try {
        const res = await fetch("/api/views/loan-history");
        const data = await res.json();
        setLoanHistory(data);
      } catch (err) {
        setIsError(true);
      } finally {
        setIsLoading(false);
      }
    };

    fetchData();
  }, []);

  return { loanHistory, isLoading, isError };
}
