import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// GET all ejemplares
export async function GET() {
  try {
    const ejemplares = await prisma.ejemplar.findMany({
      include: {
        libro: true, // Incluye datos del libro relacionado (opcional)
      },
    });

    return NextResponse.json({
      success: true,
      data: ejemplares,
    });
  } catch (error) {
    return NextResponse.json(
      { success: false, message: "Error fetching ejemplares" },
      { status: 500 }
    );
  }
}
