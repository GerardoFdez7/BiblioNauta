"use client";

import { useState } from "react";
import { Menu, X } from "lucide-react";

type Vista = "libros" | "prestamos" | "multas" | "indice libros" | "historial multas";

interface Props {
  setVista: (vista: Vista) => void;
  vistaActual: Vista;
}

export default function Navbar({ setVista, vistaActual }: Props) {
  const [menuOpen, setMenuOpen] = useState(false);

  const toggleMenu = () => setMenuOpen(!menuOpen);

  const linkClass = (vista: Vista) =>
    `cursor-pointer hover:text-gray-300 transition block py-2 ${
      vistaActual === vista ? "text-yellow-400 font-semibold" : ""
    }`;

  const handleClick = (vista: Vista) => {
    setVista(vista);
    setMenuOpen(false); // Cierra el menú al seleccionar
  };

  return (
    <nav className="bg-gray-900 text-white px-6 py-4 shadow-md sticky top-0 z-50">
      <div className="max-w-7xl mx-auto flex justify-between items-center">
        <span className="text-2xl font-bold">Biblionauta</span>

        {/* Botón hamburguesa */}
        <div className="md:hidden">
          <button onClick={toggleMenu} aria-label="Toggle menu">
            {menuOpen ? <X size={24} /> : <Menu size={24} />}
          </button>
        </div>

        {/* Enlaces en pantallas grandes */}
        <div className="hidden md:flex space-x-6 text-sm font-medium">
          <span onClick={() => handleClick("libros")} className={linkClass("libros")}>
            Libros
          </span>
          <span onClick={() => handleClick("multas")} className={linkClass("multas")}>
            Multas
          </span>
          <span onClick={() => handleClick("indice libros")} className={linkClass("indice libros")}>
            Indice Libros
          </span>
          <span onClick={() => handleClick("prestamos")} className={linkClass("prestamos")}>
            Historial Préstamos
          </span>
          <span onClick={() => handleClick("historial multas")} className={linkClass("historial multas")}>
            Historial Multas
          </span>
        </div>
      </div>

      {/* Enlaces desplegables en pantallas pequeñas */}
      {menuOpen && (
        <div className="md:hidden mt-4 space-y-2 text-sm font-medium">
          <span onClick={() => handleClick("libros")} className={linkClass("libros")}>
            Libros
          </span>
          <span onClick={() => handleClick("multas")} className={linkClass("multas")}>
            Multas
          </span>
          <span onClick={() => handleClick("indice libros")} className={linkClass("indice libros")}>
            Indice Libros
          </span>
          <span onClick={() => handleClick("prestamos")} className={linkClass("prestamos")}>
            Historial Préstamos
          </span>
          <span onClick={() => handleClick("historial multas")} className={linkClass("historial multas")}>
            Historial Multas
          </span>
        </div>
      )}
    </nav>
  );
}
