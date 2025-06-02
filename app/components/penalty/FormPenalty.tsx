import { useEffect, useState } from "react";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogFooter,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
  DialogClose,
} from "@components/ui/dialog";
import { Input } from "@components/ui/input";
import { Button } from "@components/ui/button";
import { Label } from "@components/ui/label";
import { Plus } from "lucide-react";
import { usePenaltyCreate } from "@hooks/penalty/usePenaltyCreate";
import { usePenaltyUpdate } from "@hooks/penalty/usePenaltyUpdate";

interface PenaltyFormDialogProps {
  mode: "create" | "edit";
  penalty?: any;
  onFinish: () => void;
  trigger?: React.ReactNode;
}

export function FormPenalty({
  mode,
  penalty,
  onFinish,
  trigger,
}: PenaltyFormDialogProps) {
  const [formData, setFormData] = useState({
    monto: "",
    pagada: "",
    prestamoId: "",
    usuarioId: "",
  });

  const [prestamos, setPrestamos] = useState<
    {
      id: number;
      usuarioId: number;
      ejemplarId: number;
    }[]
  >([]);
  const [usuarios, setUsuarios] = useState<{ id: number; nombre: string }[]>(
    []
  );
  const [ejemplares, setEjemplares] = useState<
    { id: number; codigo: string }[]
  >([]);

  const {
    createPenalty,
    loading: creating,
    error: createError,
    success: createSuccess,
  } = usePenaltyCreate(onFinish);
  const {
    updatePenalty,
    loading: updating,
    error: updateError,
    success: updateSuccess,
  } = usePenaltyUpdate(onFinish);

  const loading = creating || updating;
  const error = createError || updateError;
  const success = createSuccess || updateSuccess;

  useEffect(() => {
    if (mode === "edit" && penalty) {
      setFormData({
        monto: penalty.monto.toString(),
        pagada: penalty.pagada.toString(),
        prestamoId: penalty.prestamoId.toString(),
        usuarioId: penalty.usuarioId.toString(),
      });
    }
  }, [penalty, mode]);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>
  ) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    const payload = {
      monto: parseFloat(formData.monto),
      pagada: formData.pagada === "true",
      prestamoId: parseInt(formData.prestamoId),
      usuarioId: parseInt(formData.usuarioId),
    };

    if (mode === "create") {
      await createPenalty(payload);
    } else if (mode === "edit" && penalty?.id) {
      await updatePenalty(penalty.id, payload);
    }
  };

  useEffect(() => {
    fetch("/api/loan")
      .then((res) => res.json())
      .then((json) => json.success && setPrestamos(json.data));
    fetch("/api/user")
      .then((res) => res.json())
      .then((json) => json.success && setUsuarios(json.data));
    fetch("/api/exemplar")
      .then((res) => res.json())
      .then((json) => json.success && setEjemplares(json.data));
  }, []);

  return (
    <Dialog>
      <DialogTrigger asChild>
        {trigger || (
          <Button className="flex items-center gap-2">
            <Plus className="h-4 w-4" />
            Agregar Multa
          </Button>
        )}
      </DialogTrigger>
      <DialogContent className="sm:max-w-[500px]">
        <form onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle>
              {mode === "create" ? "Agregar nueva Multa" : "Editar multa"}
            </DialogTitle>
            <DialogDescription>
              {mode === "create"
                ? "Completa los campos para registrar una nueva multa"
                : "Modifica los campos para actualizar la multa"}
            </DialogDescription>
          </DialogHeader>

          <div className="grid gap-4 py-4">
            <Label>Monto (Quetzales)</Label>
            <Input
              type="number"
              name="monto"
              value={formData.monto}
              onChange={handleChange}
              placeholder="0.00"
              min="1"
              step="any"
              required
            />
            <Label>Pagada</Label>
            <select
              name="pagada"
              value={formData.pagada}
              onChange={handleChange}
              required
              className="border px-3 py-2 rounded-md"
            >
              <option value="false">No</option>
              <option value="true">Sí</option>
            </select>

            <Label>Prestamo</Label>
            <select
              name="prestamoId"
              value={formData.prestamoId}
              onChange={handleChange}
              required
              className="border px-3 py-2 rounded-md"
            >
              <option value="">Seleccione un prestamo</option>
              {prestamos.map((p) => {
                const ejemplar = ejemplares.find((e) => e.id === p.ejemplarId);
                return (
                  <option key={p.id} value={p.id}>
                    {ejemplar
                      ? `Código: ${ejemplar.codigo}`
                      : `Préstamo #${p.id}`}
                  </option>
                );
              })}
            </select>
            <Label>Usuario</Label>
            <select
              name="usuarioId"
              value={formData.usuarioId}
              onChange={handleChange}
              required
              className="border px-3 py-2 rounded-md"
            >
              <option value="">Seleccione un usuario</option>
              {usuarios.map((u) => (
                <option key={u.id} value={u.id}>
                  {u.nombre}
                </option>
              ))}
            </select>
          </div>

          <DialogFooter className="mt-4">
            <DialogClose asChild>
              <Button type="button" variant="outline">
                Cancelar
              </Button>
            </DialogClose>
            <Button type="submit" disabled={loading}>
              {loading ? "Guardando..." : "Guardar"}
            </Button>
          </DialogFooter>
          {error && <p className="pt-5 text-lg text-red-600 mt-2">{error}</p>}
          {success && (
            <p className="pt-5 text-lg text-green-600 mt-2">{success}</p>
          )}
        </form>
      </DialogContent>
    </Dialog>
  );
}
