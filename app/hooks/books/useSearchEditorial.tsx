
// hooks/books/useSearchEditorial.ts
"use client";
import { useState } from "react";

interface BookEditorial {
  id: number;
  titulo: string;
  isbn: string;
  anioPublicacion: number;
  editorial_nombre: string;
  categoria_nombre: string;
  createdAt: string;
}

export function useSearchEditorial() {
  const [resultados, setResultados] = useState<BookEditorial[]>([]);
  const [loading, setLoading] = useState(false);

  const buscarEditorial = async (nombreEditorial: string) => {
    setLoading(true);
    try {
      const res = await fetch(`/api/books/editorialBook?q=${encodeURIComponent(nombreEditorial)}`);
      const data = await res.json();

      const normalizados: BookEditorial[] = data.map((item: any) => ({
        id: item.id,
        titulo: item.titulo,
        isbn: item.isbn,
        anioPublicacion: item.aniopublicacion,
        editorial_nombre: item.editorial_nombre,
        categoria_nombre: item.categoria_nombre,
        createdAt: item.createdat,
      }));

      setResultados(normalizados);
    } catch (error) {
      console.error("Error al buscar libros por editorial:", error);
      setResultados([]);
    } finally {
      setLoading(false);
    }
  };

  return { resultados, buscarEditorial, loading };
}
