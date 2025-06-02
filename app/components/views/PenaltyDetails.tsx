"use client";

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
import { Search } from "lucide-react";
import { useState } from "react";
import { usePenaltyDetails } from "@hooks/views/usePenaltyDetails";

export default function Component() {
  const [searchTerm, setSearchTerm] = useState("");
  const { data: tableData, loading, error } = usePenaltyDetails();

  const filteredData = tableData.filter(
    (row) =>
      row.nombre_usuario.toLowerCase().includes(searchTerm.toLowerCase()) ||
      row.libro.toLowerCase().includes(searchTerm.toLowerCase())
  );

  return (
    <div className="w-full space-y-4 p-6">
      <Card>
        <CardHeader className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
          <CardTitle className="text-2xl font-bold">
            Detalle de Multas pendientes
          </CardTitle>
          <div className="relative w-full max-w-sm">
            <Search className="absolute left-2 top-2.5 h-4 w-4 text-muted-foreground" />
            <Input
              placeholder="Buscar por nombre o libro..."
              className="pl-8"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
          </div>
        </CardHeader>
        <CardContent>
          <div className="rounded-md border overflow-x-auto">
            {loading ? (
              <p className="p-4 text-sm">Cargando...</p>
            ) : error ? (
              <p className="p-4 text-sm text-red-500">
                Error al cargar datos: {error}
              </p>
            ) : (
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead className="w-[100px]">Usuario ID</TableHead>
                    <TableHead className="min-w-[150px]">
                      Nombre Usuario
                    </TableHead>
                    <TableHead className="w-[120px]">Tipo Usuario</TableHead>
                    <TableHead className="min-w-[200px]">Email</TableHead>
                    <TableHead className="min-w-[130px]">Teléfono</TableHead>
                    <TableHead className="w-[100px]">Multa ID</TableHead>
                    <TableHead className="w-[80px]">Monto</TableHead>
                    <TableHead className="w-[80px]">Pagada</TableHead>
                    <TableHead className="w-[110px]">Fecha Inicio</TableHead>
                    <TableHead className="w-[110px]">Fecha Fin</TableHead>
                    <TableHead className="w-[80px]">Devuelto</TableHead>
                    <TableHead className="min-w-[180px]">Libro</TableHead>
                    <TableHead className="min-w-[140px]">ISBN</TableHead>
                    <TableHead className="w-[120px]">Código Ejemplar</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {filteredData.map((row, index) => (
                    <TableRow key={index} className="hover:bg-muted/50">
                      <TableCell className="font-medium">
                        {row.usuario_id}
                      </TableCell>
                      <TableCell className="font-medium">
                        {row.nombre_usuario}
                      </TableCell>
                      <TableCell>{row.tipo_usuario}</TableCell>
                      <TableCell className="text-sm">{row.email}</TableCell>
                      <TableCell className="text-sm">{row.telefono}</TableCell>
                      <TableCell className="font-mono text-sm">
                        {row.multa_id}
                      </TableCell>
                      <TableCell className="font-semibold">
                        Q{row.monto.toFixed(2)}
                      </TableCell>
                      <TableCell>{row.pagada ? "Sí" : "No"}</TableCell>
                      <TableCell className="text-sm">
                        {row.fechaInicio.split("T")[0]}
                      </TableCell>
                      <TableCell className="text-sm">
                        {row.fechaFin.split("T")[0]}
                      </TableCell>
                      <TableCell>{row.devuelto ? "Sí" : "No"}</TableCell>
                      <TableCell className="font-medium">{row.libro}</TableCell>
                      <TableCell className="font-mono text-sm">
                        {row.isbn}
                      </TableCell>
                      <TableCell className="font-mono text-sm">
                        {row.codigo_ejemplar}
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </div>

          <div className="flex items-center justify-between space-x-2 py-4">
            <div className="text-sm text-muted-foreground">
              Mostrando {filteredData.length} de {tableData.length} registros
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
