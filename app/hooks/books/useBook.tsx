import { useEffect, useState } from 'react';

export interface Editorial {
  id: number;
  nombre: string;
  pais?: string;
}

export interface Categoria {
  id: number;
  nombre: string;
  descripcion?: string;
}

export interface Libro {
  id: number;
  titulo: string;
  isbn: string;
  anioPublicacion: number;
  editorial: Editorial;
  categoria: Categoria;
  editorialId: number;
  categoriaId: number;
  createdAt: string;
}

interface UseBookResult {
  libros: Libro[] | null;
  libro: Libro | null;
  loading: boolean;
  error: string | null;
  getLibro: (id: number) => void;
  getLibros: () => void;
}

export function useBook(): UseBookResult {
  const [libros, setLibros] = useState<Libro[] | null>(null);
  const [libro, setLibro] = useState<Libro | null>(null);
  const [loading, setLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);

  const getLibros = async () => {
    try {
      setLoading(true);
      const res = await fetch('/api/books');
      const json = await res.json();
      if (json.success) {
        setLibros(json.data);
        setLibro(null);
        setError(null);
      } else {
        setError(json.message || 'Error al obtener libros');
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const getLibro = async (id: number) => {
    try {
      setLoading(true);
      const res = await fetch(`/api/books?id=${id}`);
      const json = await res.json();
      if (json.success) {
        setLibro(json.data);
        setError(null);
      } else {
        setError(json.message || 'Libro no encontrado');
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    getLibros(); // carga todos al inicio
  }, []);

  return { libros, libro, loading, error, getLibro, getLibros };
}
