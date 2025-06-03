// src/app/api/editorialBook/route.ts
import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const editorial = searchParams.get("q");

  if (!editorial) {
    return NextResponse.json({ error: "Falta el parámetro 'q'" }, { status: 400 });
  }

  try {
    const result = await prisma.$queryRawUnsafe(
      `SELECT * FROM fn_buscar_libros_por_editorial('${editorial}')`
    );
    return NextResponse.json(result);
  } catch (error) {
    console.error("Error en fn_buscar_libros_por_editorial:", error);
    return NextResponse.json({ error: "Error al consultar libros" }, { status: 500 });
  }
}

