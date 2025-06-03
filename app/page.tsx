
"use client";

import { useState } from "react";
import Navbar from "./components/ui/navbar";
import BookIndexTable from "./components/book/Books";
import PenaltyDetails from "./components/penalty/Penalty";
import LoanHistoryTable from "./components/views/LoanHistory";
import BookIndex from "./components/views/BookIndex";
import Component from "@components/views/PenaltyDetails";


type Vista = "libros" | "prestamos" | "multas" | "indice libros" | "historial multas";

export default function Home() {
  const [vista, setVista] = useState<Vista>("libros");

  return (
    <div>
      <Navbar setVista={setVista} vistaActual={vista} />
      <main className="p-6 space-y-6">
        {vista === "libros" && <BookIndexTable />}
        {vista === "multas" && <PenaltyDetails />}
        {vista === "prestamos" && < LoanHistoryTable/>}
        {vista === "indice libros" && <BookIndex />}
        {vista === "historial multas" && <Component />}
      </main>
    </div>
  );
}