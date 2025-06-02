"use client";
import React from "react";
import { Button } from "@components/ui/button";
import { Card, CardContent, CardHeader, CardTitle } from "@components/ui/card";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@components/ui/table";
import { Edit, Trash2 } from "lucide-react";
import { FormPenalty } from "./FormPenalty";
import { usePenalty } from "@hooks/penalty/usePenalty";
import { usePenaltyDelete } from "@hooks/penalty/usePenaltyDelete";
import Swal from 'sweetalert2'

export default function PenaltyTable() {
  const { penalties, loading, getPenalties } = usePenalty();
  const { deletePenalty, loading: deleting } = usePenaltyDelete(getPenalties);

  //Eliminar
  const handleDelete = async (id: number) => {
  const result = await Swal.fire({
    title: '¿Estás seguro?',
    text: "Esta acción no se puede deshacer",
    icon: 'warning',
    showCancelButton: true,
    confirmButtonColor: '#d33',
    cancelButtonColor: '#3085d6',
    confirmButtonText: 'Sí, eliminar',
    cancelButtonText: 'Cancelar',
  })

  if (result.isConfirmed) {
    deletePenalty(id)
  }
}

  if (loading || deleting) return <p>Cargando...</p>;

  return (
    <div className="container mx-auto p-4 space-y-6">
      <Card>
        <CardHeader>
          <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4">
            <div>
              <CardTitle className="text-2xl font-bold">
                Gestión de Multas
              </CardTitle>
              <p className="text-muted-foreground mt-1">
                Administra tu colección de multas
              </p>
            </div>
            <FormPenalty mode="create" onFinish={getPenalties} />
          </div>
        </CardHeader>
        <CardContent>
          {/* Tabla de multas */}
          <div className="rounded-md border">
            <Table>
              <TableHeader>
                <TableRow>
                  <TableHead className="w-[80px]">ID</TableHead>
                  <TableHead>Monto</TableHead>
                  <TableHead className="hidden md:table-cell">Pagada</TableHead>
                  <TableHead className="hidden sm:table-cell">
                    Prestamo
                  </TableHead>
                  <TableHead className="hidden lg:table-cell">
                    Usuario
                  </TableHead>
                  <TableHead className="text-right">Acciones</TableHead>
                </TableRow>
              </TableHeader>
              <TableBody>
                {penalties && penalties.length > 0 ? (
                  penalties.map((penalty) => (
                    <TableRow key={penalty.id}>
                      <TableCell className="font-medium">
                        {penalty.id}
                      </TableCell>
                      <TableCell>
                        <div className="font-medium">{penalty.monto}</div>
                      </TableCell>
                      <TableCell className="hidden md:table-cell font-mono text-sm">
                        {penalty.pagada ? "Sí" : "No"}{" "}
                      </TableCell>
                      <TableCell className="hidden lg:table-cell">
                        {penalty.prestamo?.ejemplar?.codigo}
                      </TableCell>
                      <TableCell>{penalty.usuario?.nombre}</TableCell>
                      <TableCell className="text-right">
                        <div className="flex justify-end gap-2">
                          <FormPenalty
                            mode="edit"
                            penalty={penalty}
                            onFinish={getPenalties}
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
                            onClick={() => handleDelete(penalty.id)}
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
                        No se encontraron multas que coincidan con tu búsqueda.
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
