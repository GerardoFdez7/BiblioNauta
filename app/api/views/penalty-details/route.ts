import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function GET() {
  try {
    const penaltyDetails =
      await prisma.$queryRaw`SELECT * FROM "vista_detalle_multas_pendientes"`;
    return NextResponse.json(penaltyDetails);
  } catch (error) {
    console.error("Error fetching penalty details:", error);
    return NextResponse.json(
      { error: "Error fetching penalty details" },
      { status: 500 }
    );
  }
}
