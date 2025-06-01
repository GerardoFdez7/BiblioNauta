"use client";
import React from "react";
import { useState } from "react";
import { Button } from "@components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@components/ui/card";
import { Input } from "@components/ui/input";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@components/ui/table";
import { Search, Plus, Edit, Trash2 } from "lucide-react";
import { useBook } from "@hooks/books/useBook";
import { useBookDelete } from "@hooks/books/useBookDelete";
import { BookFormDialog } from "./FormBook";

export default function BooksTable() {
  const { libros, loading, getLibros } = useBook();
  const { deleteLibro, loading: deleting } = useBookDelete(getLibros);

  const [searchTerm, setSearchTerm] = useState("");

  //Eliminar
  const handleDelete = (id: number) => {
    if (confirm("¿Seguro que deseas eliminar este libro?")) {
      deleteLibro(id);
    }
  };

  if (loading || deleting) return <p>Cargando...</p>;

  return (
    <div className="container mx-auto p-4 space-y-6">
      <Card>
        <CardHeader>
          <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
            <div>
              <CardTitle className="text-2xl font-bold">
                Gestión de Libros
              </CardTitle>
              <p className="text-muted-foreground mt-1">
                Administra tu colección de libros
              </p>
            </div>
            <BookFormDialog mode="create" onFinish={getLibros} />
          </div>
        </CardHeader>
        <CardContent>
          {/* Barra de búsqueda usar funcion "fn_buscar_libros_por_editorial" */}
          <div className="flex items-center space-x-2 mb-6">
            <div className="relative flex-1">
              <Search className="absolute left-2.5 top-2.5 h-4 w-4 text-muted-foreground" />
              <Input
                placeholder="Buscar por editorial"
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="pl-8"
              />
            </div>
          </div>

          {/* Tabla de libros */}
          <div className="rounded-md border">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead className="w-[80px]">ID</TableHead>
                  <TableHead>Título</TableHead>
                  <TableHead className="hidden md:table-cell">ISBN</TableHead>
                  <TableHead className="hidden sm:table-cell">Año</TableHead>
                  <TableHead className="hidden lg:table-cell">
                    Editorial
                  </TableHead>
                  <TableHead>Categoría</TableHead>
                  <TableHead className="text-right">Acciones</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {libros && libros.length > 0 ? (
                  libros.map((libro) => (
                    <TableRow key={libro.id}>
                      <TableCell className="font-medium">{libro.id}</TableCell>
                      <TableCell>
                        <div className="font-medium">{libro.titulo}</div>
                      </TableCell>
                      <TableCell className="hidden md:table-cell font-mono text-sm">
                        {libro.isbn}
                      </TableCell>
                      <TableCell className="hidden sm:table-cell">
                        {libro.anioPublicacion}
                      </TableCell>
                      <TableCell className="hidden lg:table-cell">
                        {libro.editorial?.nombre}
                      </TableCell>
                      <TableCell>{libro.categoria?.nombre}</TableCell>
                      <TableCell className="text-right">
                        <div className="flex justify-end gap-2">
                          <BookFormDialog
                            mode="edit"
                            book={libro}
                            onFinish={getLibros}
                            trigger={
                              <Button
                                variant="ghost"
                                size="icon"
                                className="hover:bg-blue-100 hover:text-blue-600"
                              >
                                <Edit className="h-4 w-4" />
                                <span className="sr-only">Editar</span>
                              </Button>
                            }
                          />
                          <Button
                            onClick={() => handleDelete(libro.id)}
                            variant="ghost"
                            size="icon"
                            className="hover:bg-red-100 hover:text-red-600"
                          >
                            <Trash2 className="h-4 w-4" />
                            <span className="sr-only">Eliminar</span>
                          </Button>
                        </div>
                      </TableCell>
                    </TableRow>
                  ))
                ) : (
                  <TableRow>
                    <TableCell colSpan={7} className="text-center py-8">
                      <div className="text-muted-foreground">
                        No se encontraron libros que coincidan con tu búsqueda.
                      </div>
                    </TableCell>
                  </TableRow>
                )}
              </TableBody>
            </Table>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
