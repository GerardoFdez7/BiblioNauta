import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function GET(req: Request) {
  const { searchParams } = new URL(req.url);
  const userId = searchParams.get("q");

  if (!userId) {
    return NextResponse.json({ error: "Falta el parámetro 'q'" }, { status: 400 });
  }

  try {
    const result = await prisma.$queryRawUnsafe<{ total: number }[]>(
      `SELECT fn_total_multas_pendientes_usuario(${userId}) as total`
    );

    return NextResponse.json(result[0]); // { total: 123.45 }
  } catch (error) {
    console.error("Error al ejecutar función:", error);
    return NextResponse.json({ error: "Error al consultar total" }, { status: 500 });
  }
}

