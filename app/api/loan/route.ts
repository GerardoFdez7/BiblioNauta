import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// GET all loans
export async function GET() {
  try {
    const loans = await prisma.prestamo.findMany({
      where: {
        multa: null
      }
    });
    return NextResponse.json({ success: true, data: loans });
  } catch (error) {
    return NextResponse.json(
      { success: false, message: "Error fetching loans" },
      { status: 500 }
    );
  }
}


// CREATE a new loan
export async function POST(request: Request) {
  try {
    const body = await request.json();
    const newLoan = await prisma.prestamo.create({
      data: body,
    });
    return NextResponse.json(newLoan, { status: 201 });
  } catch (error) {
    return NextResponse.json({ error: "Error creating loan" }, { status: 500 });
  }
}

// UPDATE a loan
export async function PUT(request: Request) {
  try {
    const { id, ...data } = await request.json();
    const updatedLoan = await prisma.prestamo.update({
      where: { id: Number(id) },
      data,
    });
    return NextResponse.json(updatedLoan);
  } catch (error) {
    return NextResponse.json({ error: "Error updating loan" }, { status: 500 });
  }
}

// DELETE a loan
export async function DELETE(request: Request) {
  try {
    const { id } = await request.json();
    await prisma.prestamo.delete({
      where: { id: Number(id) },
    });
    return new NextResponse(null, { status: 204 });
  } catch (error) {
    return NextResponse.json({ error: "Error deleting loan" }, { status: 500 });
  }
}
