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
import { Button } from "@components/ui/button";
import { useState } from "react";
import { usePenaltyDetails } from "@hooks/views/usePenaltyDetails";
import usePendingPenalties from "@hooks/views/usePendingPenalties";

export default function PenaltyDetails() {
  const { data: tableData, loading, error } = usePenaltyDetails();
  const { total, loadingMulta, errorMulta, obtenerMultas } = usePendingPenalties();
  const [userId, setUserId] = useState("");

  const handleBuscar = () => {
    if (userId !== "") {
      obtenerMultas(Number(userId));
    }
  };

  return (
    <div className="w-full space-y-4 p-6">
      <Card>
        <CardHeader className="flex flex-col gap-4 sm:flex-row sm:items-center sm:justify-between">
          <CardTitle className="text-2xl font-bold">Detalle de Multas pendientes</CardTitle>
        </CardHeader>

        <CardContent>
          {/* Total multas por usuario */}
          <div className="mb-4 flex flex-col sm:flex-row sm:items-center sm:space-x-2 gap-2">
            <Input
              type="number"
              placeholder="ID del usuario"
              value={userId}
              onChange={(e) => setUserId(e.target.value)}
              className="max-w-xs"
            />
            <Button onClick={handleBuscar}>Buscar</Button>

            {loadingMulta ? (
              <span className="text-sm text-muted-foreground">Cargando total...</span>
            ) : errorMulta ? (
              <span className="text-sm text-red-500">{errorMulta}</span>
            ) : total !== null ? (
              <span className="text-sm font-semibold text-green-600">
                Total pendiente: Q{Number(total).toFixed(2)}
              </span>
            ) : null}
          </div>

          {/* Tabla de multas */}
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
                    <TableHead>Usuario ID</TableHead>
                    <TableHead>Nombre Usuario</TableHead>
                    <TableHead>Tipo Usuario</TableHead>
                    <TableHead>Email</TableHead>
                    <TableHead>Teléfono</TableHead>
                    <TableHead>Multa ID</TableHead>
                    <TableHead>Monto</TableHead>
                    <TableHead>Pagada</TableHead>
                    <TableHead>Fecha Inicio</TableHead>
                    <TableHead>Fecha Fin</TableHead>
                    <TableHead>Devuelto</TableHead>
                    <TableHead>Libro</TableHead>
                    <TableHead>ISBN</TableHead>
                    <TableHead>Código Ejemplar</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {tableData.map((row, index) => (
                    <TableRow key={index}>
                      <TableCell>{row.usuario_id}</TableCell>
                      <TableCell>{row.nombre_usuario}</TableCell>
                      <TableCell>{row.tipo_usuario}</TableCell>
                      <TableCell>{row.email}</TableCell>
                      <TableCell>{row.telefono}</TableCell>
                      <TableCell>{row.multa_id}</TableCell>
                      <TableCell>Q{row.monto.toFixed(2)}</TableCell>
                      <TableCell>{row.pagada ? "Sí" : "No"}</TableCell>
                      <TableCell>{row.fechaInicio.split("T")[0]}</TableCell>
                      <TableCell>{row.fechaFin.split("T")[0]}</TableCell>
                      <TableCell>{row.devuelto ? "Sí" : "No"}</TableCell>
                      <TableCell>{row.libro}</TableCell>
                      <TableCell>{row.isbn}</TableCell>
                      <TableCell>{row.codigo_ejemplar}</TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
