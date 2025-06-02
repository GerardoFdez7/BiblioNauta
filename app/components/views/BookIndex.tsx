"use client";

import { useState } from "react";
import useBookIndex from "@hooks/views/useBookIndex";
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
import { Search } from "lucide-react";

export default function BookIndexTable() {
  const { books, isLoading, isError } = useBookIndex();
  const [search, setSearch] = useState("");

  // Filtra por título (ignora mayúsculas/minúsculas)
  const filteredBooks = books.filter((book) =>
    book.titulo.toLowerCase().includes(search.toLowerCase())
  );

  return (
    <div className="w-full space-y-4 p-6">
      <Card>
        <CardHeader className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
          <CardTitle className="text-2xl font-bold">Índice de Libros</CardTitle>
          <div className="relative w-full max-w-sm">
            <Search className="absolute left-2 top-2.5 h-4 w-4 text-muted-foreground" />
            <Input
              placeholder="Buscar por libro..."
              className="pl-8"
              value={search}
              onChange={(e) => setSearch(e.target.value)}
            />
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
                {isLoading ? (
                  <TableRow>
                    <TableCell colSpan={7}>Cargando...</TableCell>
                  </TableRow>
                ) : isError ? (
                  <TableRow>
                    <TableCell colSpan={7}>Error al cargar datos</TableCell>
                  </TableRow>
                ) : filteredBooks.length === 0 ? (
                  <TableRow>
                    <TableCell colSpan={7}>No hay libros coincidentes</TableCell>
                  </TableRow>
                ) : (
                  filteredBooks.map((book, index) => (
                    <TableRow key={index}>
                      <TableCell>{book.id}</TableCell>
                      <TableCell>{book.titulo || "Sin título"}</TableCell>
                      <TableCell>{book.isbn || "N/A"}</TableCell>
                      <TableCell>{book.anioPublicacion || "N/A"}</TableCell>
                      <TableCell>{book.editorial_nombre || "Sin editorial"}</TableCell>
                      <TableCell>{book.categoria_nombre || "Sin categoría"}</TableCell>
                      <TableCell>{book.createdAt?.split("T")[0]}</TableCell>
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
