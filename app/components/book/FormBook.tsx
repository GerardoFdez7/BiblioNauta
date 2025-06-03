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
import { useBookCreate } from "@hooks/books/useBookCreate";
import { useBookUpdate } from "@hooks/books/useBookUpdate";

interface BookFormDialogProps {
  mode: "create" | "edit";
  book?: any;
  onFinish: () => void;
  trigger?: React.ReactNode;
}

export function BookFormDialog({
  mode,
  book,
  onFinish,
  trigger,
}: BookFormDialogProps) {
  const [formData, setFormData] = useState({
    titulo: "",
    isbn: "",
    anioPublicacion: "",
    editorialId: "",
    categoriaId: "",
  });

  const [editoriales, setEditoriales] = useState<
    { id: number; nombre: string }[]
  >([]);
  const [categorias, setCategorias] = useState<
    { id: number; nombre: string }[]
  >([]);

  const {
    createLibro,
    loading: creating,
    error: createError,
    success: createSuccess,
  } = useBookCreate(onFinish);
  const {
    updateLibro,
    loading: updating,
    error: updateError,
    success: updateSuccess,
  } = useBookUpdate(onFinish);

  const loading = creating || updating;
  const error = createError || updateError;
  const success = createSuccess || updateSuccess;

  useEffect(() => {
    if (mode === "edit" && book) {
      setFormData({
        titulo: book.titulo,
        isbn: book.isbn,
        anioPublicacion: new Date(book.anioPublicacion)
          .toISOString()
          .split("T")[0],
        editorialId: book.editorialId.toString(),
        categoriaId: book.categoriaId.toString(),
      });
    }
  }, [book, mode]);

  const handleChange = (
    e: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>
  ) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    const isbnRegex = /^\d{3}-\d{3}-\d{4}$/;
    if (!isbnRegex.test(formData.isbn)) {
      alert("El ISBN debe tener el formato correcto (ej: 123-456-7890).");
      return;
    }

    if (!formData.anioPublicacion) {
      alert("Por favor, seleccione una fecha de publicación.");
      return;
    }

    const year = new Date(formData.anioPublicacion).getFullYear();
    const currentYear = new Date().getFullYear();

    if (year >= currentYear) {
      alert("El año de publicación debe ser anterior al año actual.");
      return;
    }

    if (
      !formData.titulo.trim() ||
      !formData.isbn.trim() ||
      !formData.editorialId ||
      !formData.categoriaId
    ) {
      alert("Por favor, complete todos los campos.");
      return;
    }

    const payload = {
      titulo: formData.titulo,
      isbn: formData.isbn,
      anioPublicacion: year,
      editorialId: parseInt(formData.editorialId),
      categoriaId: parseInt(formData.categoriaId),
    };

    if (mode === "create") {
      await createLibro(payload);
    } else if (mode === "edit" && book?.id) {
      await updateLibro(book.id, payload);
    }
  };

  useEffect(() => {
    fetch("/api/editorial")
      .then((res) => res.json())
      .then((json) => json.success && setEditoriales(json.data));
    fetch("/api/categories")
      .then((res) => res.json())
      .then((json) => json.success && setCategorias(json.data));
  }, []);

  return (
    <Dialog>
      <DialogTrigger asChild>
        {trigger || (
          <Button className="flex items-center gap-2">
            <Plus className="h-4 w-4" />
            Agregar Libro
          </Button>
        )}
      </DialogTrigger>
      <DialogContent className="sm:max-w-[500px]">
        <form onSubmit={handleSubmit}>
          <DialogHeader>
            <DialogTitle>
              {mode === "create" ? "Agregar nuevo libro" : "Editar libro"}
            </DialogTitle>
            <DialogDescription>
              {mode === "create"
                ? "Completa los campos para registrar un nuevo libro"
                : "Modifica los campos para actualizar el libro"}
            </DialogDescription>
          </DialogHeader>

          <div className="grid gap-4 py-4">
            <Label>Título</Label>
            <Input
              name="titulo"
              value={formData.titulo}
              onChange={handleChange}
              placeholder="Título"
              required
            />
            <Label>ISBN</Label>
            <Input
              name="isbn"
              value={formData.isbn}
              onChange={handleChange}
              placeholder="000-000-0000"
              required
            />
            <Label>Fecha de publicación</Label>
            <Input
              name="anioPublicacion"
              type="date"
              value={formData.anioPublicacion}
              onChange={handleChange}
              required
            />
            <Label>Editorial</Label>
            <select
              name="editorialId"
              value={formData.editorialId}
              onChange={handleChange}
              required
              className="border px-3 py-2 rounded-md"
            >
              <option value="">Seleccione una editorial</option>
              {editoriales.map((e) => (
                <option key={e.id} value={e.id}>
                  {e.nombre}
                </option>
              ))}
            </select>
            <Label>Categoría</Label>
            <select
              name="categoriaId"
              value={formData.categoriaId}
              onChange={handleChange}
              required
              className="border px-3 py-2 rounded-md"
            >
              <option value="">Seleccione una categoría</option>
              {categorias.map((c) => (
                <option key={c.id} value={c.id}>
                  {c.nombre}
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
          {success && <p className="pt-5 text-lg text-green-600 mt-2">{success}</p>}
        </form>
      </DialogContent>
    </Dialog>
  );
}
