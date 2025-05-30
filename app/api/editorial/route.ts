import { PrismaClient } from '@prisma/client';
import { NextRequest } from 'next/server';

const prisma = new PrismaClient();

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (id) {
      const editorial = await prisma.editorial.findUnique({
        where: { id: Number(id) },
      });

      if (!editorial) {
        return new Response(JSON.stringify({ success: false, message: 'Editorial no encontrada' }), { status: 404 });
      }

      return new Response(JSON.stringify({ success: true, data: editorial }), { status: 200 });
    }

    const editoriales = await prisma.editorial.findMany();
    return new Response(JSON.stringify({ success: true, data: editoriales }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al obtener las editoriales', error: error.message }), { status: 500 });
  }
}

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const { nombre, pais } = body;

    if (!nombre) {
      return new Response(JSON.stringify({ success: false, message: 'El campo "nombre" es obligatorio' }), { status: 400 });
    }

    const nuevaEditorial = await prisma.editorial.create({
      data: { nombre, pais },
    });

    return new Response(JSON.stringify({ success: true, message: 'Editorial creada exitosamente', data: nuevaEditorial }), { status: 201 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al crear la editorial', error: error.message }), { status: 500 });
  }
}

export async function PUT(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (!id) {
      return new Response(JSON.stringify({ success: false, message: 'Falta id para actualizar' }), { status: 400 });
    }

    const editorialExistente = await prisma.editorial.findUnique({ where: { id: Number(id) } });
    if (!editorialExistente) {
      return new Response(JSON.stringify({ success: false, message: 'Editorial no encontrada' }), { status: 404 });
    }

    const body = await req.json();

    const editorialActualizada = await prisma.editorial.update({
      where: { id: Number(id) },
      data: body,
    });

    return new Response(JSON.stringify({ success: true, message: 'Editorial actualizada correctamente', data: editorialActualizada }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al actualizar la editorial', error: error.message }), { status: 500 });
  }
}

export async function DELETE(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (!id) {
      return new Response(JSON.stringify({ success: false, message: 'Falta id para borrar' }), { status: 400 });
    }

    const editorial = await prisma.editorial.findUnique({ where: { id: Number(id) } });
    if (!editorial) {
      return new Response(JSON.stringify({ success: false, message: 'Editorial no encontrada' }), { status: 404 });
    }

    await prisma.editorial.delete({ where: { id: Number(id) } });

    return new Response(JSON.stringify({ success: true, message: 'Editorial eliminada exitosamente' }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al eliminar la editorial', error: error.message }), { status: 500 });
  }
}
