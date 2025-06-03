
"use client";

import { useState } from "react";
import Navbar from "./components/ui/navbar";
import BookIndexTable from "./components/book/Books";
import LoanHistoryTable from "./components/penalty/Penalty";
import PenaltyDetails from "./components/views/PenaltyDetails";

type Vista = "libros" | "prestamos" | "multas";

export default function Home() {
  const [vista, setVista] = useState<Vista>("libros");

  return (
    <div>
      <Navbar setVista={setVista} vistaActual={vista} />
      <main className="p-6 space-y-6">
        {vista === "libros" && <BookIndexTable />}
        {vista === "prestamos" && <LoanHistoryTable />}
        {vista === "multas" && <PenaltyDetails />}
      </main>
    </div>
  );
}