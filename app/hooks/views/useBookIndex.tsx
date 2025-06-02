"use client";

import { useEffect, useState } from "react";

export interface BookIndex {
  id: number;
  titulo: string;
  isbn: string;
  anioPublicacion: number;
  editorial_nombre: string;
  categoria_nombre: string;
  createdAt: string;
}

export default function useBookIndex() {
  const [books, setBooks] = useState<BookIndex[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [isError, setIsError] = useState(false);

  useEffect(() => {
    const fetchBooks = async () => {
      try {
        const res = await fetch("/api/views/books-index");
        if (!res.ok) throw new Error("Error en la respuesta del servidor");
        const data = await res.json();
        setBooks(data);
      } catch (error) {
        console.error("Error al obtener el índice de libros:", error);
        setIsError(true);
      } finally {
        setIsLoading(false);
      }
    };

    fetchBooks();
  }, []);

  return { books, isLoading, isError };
}
