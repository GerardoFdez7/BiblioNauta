import { PrismaClient } from '@prisma/client';
import { NextRequest } from 'next/server';

const prisma = new PrismaClient();

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (id) {
      const categoria = await prisma.categoria.findUnique({
        where: { id: Number(id) },
      });

      if (!categoria) {
        return new Response(JSON.stringify({ success: false, message: 'Categoría no encontrada' }), { status: 404 });
      }

      return new Response(JSON.stringify({ success: true, data: categoria }), { status: 200 });
    }

    const categorias = await prisma.categoria.findMany();
    return new Response(JSON.stringify({ success: true, data: categorias }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al obtener las categorías', error: error.message }), { status: 500 });
  }
}

export async function POST(req: NextRequest) {
  try {
    const body = await req.json();
    const { nombre, descripcion } = body;

    if (!nombre) {
      return new Response(JSON.stringify({ success: false, message: 'El campo "nombre" es obligatorio' }), { status: 400 });
    }

    const nuevaCategoria = await prisma.categoria.create({
      data: { nombre, descripcion },
    });

    return new Response(JSON.stringify({ success: true, message: 'Categoría creada exitosamente', data: nuevaCategoria }), { status: 201 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al crear la categoría', error: error.message }), { status: 500 });
  }
}

export async function PUT(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (!id) {
      return new Response(JSON.stringify({ success: false, message: 'Falta id para actualizar' }), { status: 400 });
    }

    const categoriaExistente = await prisma.categoria.findUnique({ where: { id: Number(id) } });
    if (!categoriaExistente) {
      return new Response(JSON.stringify({ success: false, message: 'Categoría no encontrada' }), { status: 404 });
    }

    const body = await req.json();

    const categoriaActualizada = await prisma.categoria.update({
      where: { id: Number(id) },
      data: body,
    });

    return new Response(JSON.stringify({ success: true, message: 'Categoría actualizada correctamente', data: categoriaActualizada }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al actualizar la categoría', error: error.message }), { status: 500 });
  }
}

export async function DELETE(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const id = searchParams.get('id');

    if (!id) {
      return new Response(JSON.stringify({ success: false, message: 'Falta id para borrar' }), { status: 400 });
    }

    const categoria = await prisma.categoria.findUnique({ where: { id: Number(id) } });
    if (!categoria) {
      return new Response(JSON.stringify({ success: false, message: 'Categoría no encontrada' }), { status: 404 });
    }

    await prisma.categoria.delete({ where: { id: Number(id) } });

    return new Response(JSON.stringify({ success: true, message: 'Categoría eliminada exitosamente' }), { status: 200 });
  } catch (error: any) {
    return new Response(JSON.stringify({ success: false, message: 'Error al eliminar la categoría', error: error.message }), { status: 500 });
  }
}
