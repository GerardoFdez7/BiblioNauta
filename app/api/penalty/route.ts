import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// GET all penalties
export async function GET() {
  try {
    const penalties = await prisma.multa.findMany();
    return NextResponse.json(penalties);
  } catch (error) {
    return NextResponse.json(
      { error: "Error fetching penalties" },
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
    return NextResponse.json(newPenalty, { status: 201 });
  } catch (error) {
    return NextResponse.json(
      { error: "Error creating penalty" },
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
    return NextResponse.json(updatedPenalty);
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
