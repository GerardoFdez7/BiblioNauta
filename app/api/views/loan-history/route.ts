import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function GET() {
  try {
    const loanHistory =
      await prisma.$queryRaw`SELECT * FROM "vista_historial_prestamos_detallado"`;
    return NextResponse.json(loanHistory);
  } catch (error) {
    console.error("Error fetching loan history:", error);
    return NextResponse.json(
      { error: "Error fetching loan history" },
      { status: 500 }
    );
  }
}
