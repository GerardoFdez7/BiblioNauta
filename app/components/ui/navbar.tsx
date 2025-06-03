"use client";

type Vista = "libros" | "prestamos" | "multas";

interface Props {
  setVista: (vista: Vista) => void;
  vistaActual: Vista;
}

export default function Navbar({ setVista, vistaActual }: Props) {
  const linkClass = (vista: Vista) =>
    `cursor-pointer hover:text-gray-300 transition ${
      vistaActual === vista ? "text-yellow-400 font-semibold" : ""
    }`;

  return (
    <nav className="bg-gray-900 text-white px-6 py-4 shadow-md sticky top-0 z-50">
      <div className="max-w-7xl mx-auto flex justify-between items-center">
        <span className="text-2xl font-bold">Biblionauta</span>
        <div className="flex space-x-6 text-sm font-medium">
          <span onClick={() => setVista("libros")} className={linkClass("libros")}>
            Libros
          </span>
          <span onClick={() => setVista("prestamos")} className={linkClass("prestamos")}>
            Préstamos
          </span>
          <span onClick={() => setVista("multas")} className={linkClass("multas")}>
            Multas
          </span>
        </div>
      </div>
    </nav>
  );
}