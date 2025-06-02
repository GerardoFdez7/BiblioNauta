import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// GET all penalties
export async function GET() {
  try {
    const penalties = await prisma.multa.findMany({
      include: {
        usuario: true,
        prestamo: {
          include: {
            ejemplar: true,
          },
        },
      },
      orderBy: {
        id: "asc",
      },
    });

    return NextResponse.json({
      success: true,
      data: penalties,
    });
  } catch (error) {
    return NextResponse.json(
      { success: false, message: "Error fetching penalties" },
      { status: 500 }
    );
  }
}

// CREATE a new penalty
export async function POST(request: Request) {
  try {
    const body = await request.json();
    const newPenalty = await prisma.multa.create({
      data: body,
    });
    return NextResponse.json(
      {
        success: true,
        message: "Multa creada exitosamente",
        data: newPenalty,
      },
      { status: 201 }
    );
  } catch (error) {
    console.error("Error creating penalty:", error);

    return NextResponse.json(
      { success: false, message: "Ya existe una multa con ese código de préstamo" },
      { status: 500 }
    );
  }
}

// UPDATE a penalty
export async function PUT(request: Request) {
  try {
    const { id, ...data } = await request.json();
    const updatedPenalty = await prisma.multa.update({
      where: { id: Number(id) },
      data,
    });
    return NextResponse.json({
      success: true,
      message: "Multa actualizada exitosamente",
      data: updatedPenalty,
    });
  } catch (error) {
    return NextResponse.json(
      { error: "Error updating penalty" },
      { status: 500 }
    );
  }
}

// DELETE a penalty
export async function DELETE(request: Request) {
  try {
    const { id } = await request.json();
    await prisma.multa.delete({
      where: { id: Number(id) },
    });
    return new NextResponse(null, { status: 204 });
  } catch (error) {
    return NextResponse.json(
      { error: "Error deleting penalty" },
      { status: 500 }
    );
  }
}
