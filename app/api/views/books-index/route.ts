import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

export async function GET() {
  try {
    const booksIndex = await prisma.$queryRaw`SELECT * FROM "vw_libros_index"`;
    return NextResponse.json(booksIndex);
  } catch (error) {
    console.error("Error fetching books index:", error);
    return NextResponse.json(
      { error: "Error fetching books index" },
      { status: 500 }
    );
  }
}
