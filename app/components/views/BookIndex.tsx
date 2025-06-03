"use client";

import { useState } from "react";
import useBookIndex from "@hooks/views/useBookIndex";
import { useSearchEditorial } from "@hooks/books/useSearchEditorial";
import { Card, CardHeader, CardTitle, CardContent } from "@components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@components/ui/table";
import { Input } from "@components/ui/input";
import { Button } from "@components/ui/button";
import { Search } from "lucide-react";

export default function BookIndexTable() {
  const { books, isLoading } = useBookIndex();
  const { resultados, buscarEditorial, loading } = useSearchEditorial();
  const [editorial, setEditorial] = useState("");
  const [filtrando, setFiltrando] = useState(false);

  const handleBuscar = () => {
    if (editorial.trim() !== "") {
      buscarEditorial(editorial);
      setFiltrando(true);
    } else {
      setFiltrando(false);
    }
  };

  const booksToShow = filtrando ? resultados : books;

  return (
    <div className="w-full space-y-4 p-6">
      <Card>
        <CardHeader className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
          <CardTitle className="text-2xl font-bold">Índice de Libros</CardTitle>
          <div className="flex gap-2 w-full max-w-sm">
            <Input
              placeholder="Buscar por editorial..."
              value={editorial}
              onChange={(e) => setEditorial(e.target.value)}
              onKeyDown={(e) => e.key === "Enter" && handleBuscar()}
            />
            <Button onClick={handleBuscar}>
              <Search className="w-4 h-4 mr-2" />
              Buscar
            </Button>
          </div>
        </CardHeader>
        <CardContent>
          <div className="rounded-md border overflow-x-auto">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>ID</TableHead>
                  <TableHead>Título</TableHead>
                  <TableHead>ISBN</TableHead>
                  <TableHead>Año</TableHead>
                  <TableHead>Editorial</TableHead>
                  <TableHead>Categoría</TableHead>
                  <TableHead>Agregado</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {(isLoading || loading) ? (
                  <TableRow>
                    <TableCell colSpan={7}>Cargando...</TableCell>
                  </TableRow>
                ) : booksToShow.length === 0 ? (
                  <TableRow>
                    <TableCell colSpan={7}>No hay libros coincidentes</TableCell>
                  </TableRow>
                ) : (
                  booksToShow.map((book, index) => (
                    <TableRow key={index}>
                      <TableCell>{book.id}</TableCell>
                      <TableCell>{book.titulo}</TableCell>
                      <TableCell>{book.isbn}</TableCell>
                      <TableCell>{book.anioPublicacion ?? "N/A"}</TableCell>
                      <TableCell>{book.editorial_nombre}</TableCell>
                      <TableCell>{book.categoria_nombre}</TableCell>
                      <TableCell>{book.createdAt ? book.createdAt.split("T")[0] : "N/A"}</TableCell>
                    </TableRow>
                  ))
                )}
              </TableBody>
            </Table>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
