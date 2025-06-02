import { PrismaClient } from "@prisma/client";
import { NextRequest } from "next/server";

const prisma = new PrismaClient();

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get("id");

    if (id) {
      const libro = await prisma.libro.findUnique({
        where: { id: Number(id) },
        include: { editorial: true, categoria: true },
      });
      if (!libro) {
        return new Response(
          JSON.stringify({ success: false, message: "Libro no encontrado" }),
          { status: 404 }
        );
      }
      return new Response(JSON.stringify({ success: true, data: libro }), {
        status: 200,
      });
    }

    const libros = await prisma.libro.findMany({
      include: { editorial: true, categoria: true },
      orderBy: {
        id: "asc",
      },
    });
    return new Response(JSON.stringify({ success: true, data: libros }), {
      status: 200,
    });
  } catch (error: any) {
    return new Response(
      JSON.stringify({
        success: false,
        message: "Error en el servidor",
        error: error.message,
      }),
      { status: 500 }
    );
  }
}

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const { titulo, isbn, anioPublicacion, editorialId, categoriaId } = body;

    if (!titulo || !isbn || !anioPublicacion || !editorialId || !categoriaId) {
      return new Response(
        JSON.stringify({
          success: false,
          message: "Faltan campos obligatorios",
        }),
        { status: 400 }
      );
    }

    const nuevoLibro = await prisma.libro.create({
      data: { titulo, isbn, anioPublicacion, editorialId, categoriaId },
    });

    return new Response(
      JSON.stringify({
        success: true,
        message: "Libro creado exitosamente",
        data: nuevoLibro,
      }),
      { status: 201 }
    );
  } catch (error: any) {
    return new Response(
      JSON.stringify({
        success: false,
        message: "Error al crear el libro",
        error: error.message,
      }),
      { status: 500 }
    );
  }
}

export async function PUT(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get("id");
    if (!id) {
      return new Response(
        JSON.stringify({ success: false, message: "Falta id para actualizar" }),
        { status: 400 }
      );
    }

    const libroExistente = await prisma.libro.findUnique({
      where: { id: Number(id) },
    });
    if (!libroExistente) {
      return new Response(
        JSON.stringify({ success: false, message: "Libro no encontrado" }),
        { status: 404 }
      );
    }

    const body = await req.json();
    const libroActualizado = await prisma.libro.update({
      where: { id: Number(id) },
      data: body,
    });

    return new Response(
      JSON.stringify({
        success: true,
        message: "Libro actualizado correctamente",
        data: libroActualizado,
      }),
      { status: 200 }
    );
  } catch (error: any) {
    return new Response(
      JSON.stringify({
        success: false,
        message: "Error al actualizar el libro",
        error: error.message,
      }),
      { status: 500 }
    );
  }
}

export async function DELETE(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get("id");
    if (!id) {
      return new Response(
        JSON.stringify({ success: false, message: "Falta id para borrar" }),
        { status: 400 }
      );
    }

    const libro = await prisma.libro.findUnique({ where: { id: Number(id) } });
    if (!libro) {
      return new Response(
        JSON.stringify({ success: false, message: "Libro no encontrado" }),
        { status: 404 }
      );
    }

    await prisma.libro.delete({ where: { id: Number(id) } });
    return new Response(
      JSON.stringify({
        success: true,
        message: "Libro eliminado exitosamente",
      }),
      { status: 200 }
    );
  } catch (error: any) {
    return new Response(
      JSON.stringify({
        success: false,
        message: "Error al eliminar el libro",
        error: error.message,
      }),
      { status: 500 }
    );
  }
}
