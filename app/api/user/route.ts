import { NextResponse } from "next/server";
import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

// GET all users
export async function GET() {
  try {
    const users = await prisma.usuario.findMany();
    return NextResponse.json(users);
  } catch (error) {
    return NextResponse.json(
      { error: "Error fetching users" },
      { status: 500 }
    );
  }
}

// CREATE a new user
export async function POST(request: Request) {
  try {
    const body = await request.json();
    const newUser = await prisma.usuario.create({
      data: body,
    });
    return NextResponse.json(newUser, { status: 201 });
  } catch (error) {
    return NextResponse.json({ error: "Error creating user" }, { status: 500 });
  }
}

// UPDATE a user
export async function PUT(request: Request) {
  try {
    const { id, ...data } = await request.json();
    const updatedUser = await prisma.usuario.update({
      where: { id: Number(id) },
      data,
    });
    return NextResponse.json(updatedUser);
  } catch (error) {
    return NextResponse.json({ error: "Error updating user" }, { status: 500 });
  }
}

// DELETE a user
export async function DELETE(request: Request) {
  try {
    const { id } = await request.json();
    await prisma.usuario.delete({
      where: { id: Number(id) },
    });
    return new NextResponse(null, { status: 204 });
  } catch (error) {
    return NextResponse.json({ error: "Error deleting user" }, { status: 500 });
  }
}
