"use client";

import { useState } from "react";
import useLoanHistory from "@hooks/views/useLoanHistory";
import { Card, CardContent, CardHeader, CardTitle } from "@components/ui/card";
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

export default function LoanHistoryTable() {
  const { loanHistory, isLoading, isError } = useLoanHistory();
  const [searchTerm, setSearchTerm] = useState("");

  const filteredData =
    loanHistory?.filter(
      (row) =>
        row.nombre_usuario.toLowerCase().includes(searchTerm.toLowerCase()) ||
        row.titulo_libro.toLowerCase().includes(searchTerm.toLowerCase())
    ) || [];

  return (
    <div className="w-full space-y-4 p-6">
      <Card>
        <CardHeader className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
          <CardTitle className="text-2xl font-bold">
            Historial de Préstamos
          </CardTitle>
          <div className="relative w-full max-w-sm">
            <Search className="absolute left-2 top-2.5 h-4 w-4 text-muted-foreground" />
            <Input
              placeholder="Buscar por usuario o libro..."
              className="pl-8"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </CardHeader>
        <CardContent>
          <div className="rounded-md border overflow-x-auto">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead>Usuario ID</TableHead>
                  <TableHead>Nombre</TableHead>
                  <TableHead>Tipo</TableHead>
                  <TableHead>Email</TableHead>
                  <TableHead>Teléfono</TableHead>
                  <TableHead>Préstamo ID</TableHead>
                  <TableHead>Fecha Inicio</TableHead>
                  <TableHead>Fecha Fin</TableHead>
                  <TableHead>Devuelto</TableHead>
                  <TableHead>Estado Préstamo</TableHead>
                  <TableHead>Código Ejemplar</TableHead>
                  <TableHead>Estado Ejemplar</TableHead>
                  <TableHead>Libro ID</TableHead>
                  <TableHead>Título</TableHead>
                  <TableHead>ISBN</TableHead>
                  <TableHead>Autores</TableHead>
                  <TableHead>Categoría</TableHead>
                  <TableHead>Editorial</TableHead>
                  <TableHead>Multa ID</TableHead>
                  <TableHead>Monto</TableHead>
                  <TableHead>Pagada</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {isLoading ? (
                  <TableRow>
                    <TableCell colSpan={21}>Cargando...</TableCell>
                  </TableRow>
                ) : isError ? (
                  <TableRow>
                    <TableCell colSpan={21}>Error al cargar datos</TableCell>
                  </TableRow>
                ) : (
                  filteredData.map((row, index) => (
                    <TableRow key={index}>
                      <TableCell>{row.usuario_id}</TableCell>
                      <TableCell>{row.nombre_usuario}</TableCell>
                      <TableCell>{row.tipo_usuario}</TableCell>
                      <TableCell>{row.email}</TableCell>
                      <TableCell>{row.telefono}</TableCell>
                      <TableCell>{row.prestamo_id}</TableCell>
                      <TableCell>{row.fechaInicio?.split("T")[0]}</TableCell>
                      <TableCell>{row.fechaFin?.split("T")[0]}</TableCell>
                      <TableCell>{row.devuelto ? "Sí" : "No"}</TableCell>
                      <TableCell>{row.estado_prestamo}</TableCell>
                      <TableCell>{row.codigo_ejemplar}</TableCell>
                      <TableCell>{row.estado_ejemplar}</TableCell>
                      <TableCell>{row.libro_id}</TableCell>
                      <TableCell>{row.titulo_libro}</TableCell>
                      <TableCell>{row.isbn}</TableCell>
                      <TableCell>{row.autores || "Sin autor"}</TableCell>
                      <TableCell>{row.categoria}</TableCell>
                      <TableCell>{row.editorial}</TableCell>
                      <TableCell>{row.multa_id ?? "-"}</TableCell>
                      <TableCell>
                        {row.monto !== null ? `Q${row.monto.toFixed(2)}` : "-"}
                      </TableCell>
                      <TableCell>
                        {row.pagada === true
                          ? "Sí"
                          : row.pagada === false
                          ? "No"
                          : "-"}
                      </TableCell>
                    </TableRow>
                  ))
                )}
              </TableBody>
            </Table>
          </div>

          <div className="flex items-center justify-between space-x-2 py-4">
            <div className="text-sm text-muted-foreground">
              Mostrando {filteredData.length} de {loanHistory?.length || 0}{" "}
              registros
            </div>
            <div className="flex items-center space-x-2">
              <Button variant="outline" size="sm" disabled>
                Anterior
              </Button>
              <Button variant="outline" size="sm" disabled>
                Siguiente
              </Button>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
