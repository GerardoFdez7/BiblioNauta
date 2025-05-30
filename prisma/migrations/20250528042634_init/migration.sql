-- CreateEnum
CREATE TYPE "TipoUsuario" AS ENUM ('ESTUDIANTE', 'PROFESOR', 'ADMINISTRATIVO', 'BIBLIOTECARIO');

-- CreateEnum
CREATE TYPE "EstadoEjemplar" AS ENUM ('DISPONIBLE', 'PRESTADO', 'RESERVADO', 'DANIADO');

-- CreateEnum
CREATE TYPE "EstadoSugerencia" AS ENUM ('PENDIENTE', 'ACEPTADA', 'RECHAZADA');

-- CreateTable
CREATE TABLE "Usuario" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telefono" TEXT,
    "direccion" TEXT,
    "tipo" "TipoUsuario" NOT NULL DEFAULT 'ESTUDIANTE',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Usuario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Libro" (
    "id" SERIAL NOT NULL,
    "titulo" TEXT NOT NULL,
    "isbn" TEXT NOT NULL,
    "anioPublicacion" INTEGER NOT NULL,
    "editorialId" INTEGER NOT NULL,
    "categoriaId" INTEGER NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Libro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Editorial" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "pais" TEXT,

    CONSTRAINT "Editorial_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Categoria" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "descripcion" TEXT,

    CONSTRAINT "Categoria_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Autor" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "nacionalidad" TEXT,

    CONSTRAINT "Autor_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "LibroAutor" (
    "libroId" INTEGER NOT NULL,
    "autorId" INTEGER NOT NULL,

    CONSTRAINT "LibroAutor_pkey" PRIMARY KEY ("libroId","autorId")
);

-- CreateTable
CREATE TABLE "Ejemplar" (
    "id" SERIAL NOT NULL,
    "codigo" TEXT NOT NULL,
    "estado" "EstadoEjemplar" NOT NULL DEFAULT 'DISPONIBLE',
    "libroId" INTEGER NOT NULL,

    CONSTRAINT "Ejemplar_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Prestamo" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "ejemplarId" INTEGER NOT NULL,
    "fechaInicio" TIMESTAMP(3) NOT NULL,
    "fechaFin" TIMESTAMP(3) NOT NULL,
    "devuelto" BOOLEAN NOT NULL DEFAULT false,

    CONSTRAINT "Prestamo_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Reserva" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "ejemplarId" INTEGER NOT NULL,
    "fecha" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Reserva_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Multa" (
    "id" SERIAL NOT NULL,
    "monto" DOUBLE PRECISION NOT NULL,
    "pagada" BOOLEAN NOT NULL DEFAULT false,
    "prestamoId" INTEGER NOT NULL,
    "usuarioId" INTEGER NOT NULL,

    CONSTRAINT "Multa_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Empleado" (
    "id" SERIAL NOT NULL,
    "nombre" TEXT NOT NULL,
    "puesto" TEXT NOT NULL,
    "email" TEXT NOT NULL,

    CONSTRAINT "Empleado_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Horario" (
    "id" SERIAL NOT NULL,
    "empleadoId" INTEGER NOT NULL,
    "dias" TEXT NOT NULL,
    "horaInicio" TEXT NOT NULL,
    "horaFin" TEXT NOT NULL,

    CONSTRAINT "Horario_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "SugerenciaLibro" (
    "id" SERIAL NOT NULL,
    "titulo" TEXT NOT NULL,
    "autor" TEXT NOT NULL,
    "editorial" TEXT,
    "motivo" TEXT NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "estado" "EstadoSugerencia" NOT NULL DEFAULT 'PENDIENTE',
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SugerenciaLibro_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "HistorialAcceso" (
    "id" SERIAL NOT NULL,
    "usuarioId" INTEGER NOT NULL,
    "fechaHora" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "accion" TEXT NOT NULL,
    "ip" TEXT,

    CONSTRAINT "HistorialAcceso_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuario_email_key" ON "Usuario"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Libro_isbn_key" ON "Libro"("isbn");

-- CreateIndex
CREATE UNIQUE INDEX "Ejemplar_codigo_key" ON "Ejemplar"("codigo");

-- CreateIndex
CREATE UNIQUE INDEX "Multa_prestamoId_key" ON "Multa"("prestamoId");

-- CreateIndex
CREATE UNIQUE INDEX "Empleado_email_key" ON "Empleado"("email");

-- CreateIndex
CREATE UNIQUE INDEX "Horario_empleadoId_key" ON "Horario"("empleadoId");

-- AddForeignKey
ALTER TABLE "Libro" ADD CONSTRAINT "Libro_editorialId_fkey" FOREIGN KEY ("editorialId") REFERENCES "Editorial"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Libro" ADD CONSTRAINT "Libro_categoriaId_fkey" FOREIGN KEY ("categoriaId") REFERENCES "Categoria"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LibroAutor" ADD CONSTRAINT "LibroAutor_libroId_fkey" FOREIGN KEY ("libroId") REFERENCES "Libro"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "LibroAutor" ADD CONSTRAINT "LibroAutor_autorId_fkey" FOREIGN KEY ("autorId") REFERENCES "Autor"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Ejemplar" ADD CONSTRAINT "Ejemplar_libroId_fkey" FOREIGN KEY ("libroId") REFERENCES "Libro"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Prestamo" ADD CONSTRAINT "Prestamo_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Prestamo" ADD CONSTRAINT "Prestamo_ejemplarId_fkey" FOREIGN KEY ("ejemplarId") REFERENCES "Ejemplar"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reserva" ADD CONSTRAINT "Reserva_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Reserva" ADD CONSTRAINT "Reserva_ejemplarId_fkey" FOREIGN KEY ("ejemplarId") REFERENCES "Ejemplar"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Multa" ADD CONSTRAINT "Multa_prestamoId_fkey" FOREIGN KEY ("prestamoId") REFERENCES "Prestamo"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Multa" ADD CONSTRAINT "Multa_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Horario" ADD CONSTRAINT "Horario_empleadoId_fkey" FOREIGN KEY ("empleadoId") REFERENCES "Empleado"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "SugerenciaLibro" ADD CONSTRAINT "SugerenciaLibro_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "HistorialAcceso" ADD CONSTRAINT "HistorialAcceso_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;


-- VIEWS SQL
---- Detalle multas pendientes
CREATE OR REPLACE VIEW Vista_Detalle_Multas_Pendientes AS
SELECT 
    u.id AS usuario_id,
    u.nombre AS nombre_usuario,
    u.tipo AS tipo_usuario,
    u.email,
    u.telefono,
    m.id AS multa_id,
    m.monto,
    m.pagada,
    p."fechaInicio",
    p."fechaFin",
    p.devuelto,
    l.titulo AS libro,
    l.isbn,
    e.codigo AS codigo_ejemplar
FROM "Multa" m
JOIN "Usuario" u ON m."usuarioId" = u.id
JOIN "Prestamo" p ON m."prestamoId" = p.id
JOIN "Ejemplar" e ON p."ejemplarId" = e.id
JOIN "Libro" l ON e."libroId" = l.id
WHERE m.pagada = false
ORDER BY m.monto DESC, p."fechaFin";

----- Vista historial de prestamos
CREATE OR REPLACE VIEW Vista_Historial_Prestamos_Detallado AS
SELECT
    u.id AS usuario_id,
    u.nombre AS nombre_usuario,
    u.tipo AS tipo_usuario,
    u.email,
    u.telefono,

    p.id AS prestamo_id,
    p."fechaInicio",
    p."fechaFin",
    p.devuelto,

    CASE 
        WHEN p.devuelto = true THEN 'Devuelto'
        WHEN p."fechaFin" < CURRENT_DATE THEN 'Vencido'
        ELSE 'En curso'
    END AS estado_prestamo,

    e.codigo AS codigo_ejemplar,
    e.estado AS estado_ejemplar,

    l.id AS libro_id,
    l.titulo AS titulo_libro,
    l.isbn,
    STRING_AGG(DISTINCT a.nombre, ', ') AS autores,
    c.nombre AS categoria,
    ed.nombre AS editorial,

    m.id AS multa_id,
    m.monto,
    m.pagada

FROM "Prestamo" p
JOIN "Usuario" u ON p."usuarioId" = u.id
JOIN "Ejemplar" e ON p."ejemplarId" = e.id
JOIN "Libro" l ON e."libroId" = l.id
LEFT JOIN "LibroAutor" al ON al."libroId" = l.id
LEFT JOIN "Autor" a ON a.id = al."autorId"
JOIN "Categoria" c ON l."categoriaId" = c.id
JOIN "Editorial" ed ON l."editorialId" = ed.id
LEFT JOIN "Multa" m ON m."prestamoId" = p.id

GROUP BY 
    u.id, u.nombre, u.tipo, u.email, u.telefono,
    p.id, p."fechaInicio", p."fechaFin", p.devuelto,
    e.codigo, e.estado,
    l.id, l.titulo, l.isbn,
    c.nombre, ed.nombre,
    m.id, m.monto, m.pagada

ORDER BY p."fechaInicio" DESC;

-- vw_libros_index
CREATE OR REPLACE VIEW vw_libros_index AS
SELECT
    L.id,
    L.titulo,
    L.isbn,
    L."anioPublicacion",
    E.nombre AS editorial_nombre,
    C.nombre AS categoria_nombre,
    L."createdAt"
FROM
    "Libro" L
JOIN
    "Editorial" E ON L."editorialId" = E.id
JOIN
    "Categoria" C ON L."categoriaId" = C.id;

-- Funciones SQL
CREATE OR REPLACE FUNCTION fn_total_multas_pendientes_usuario(usuario_id INT)
RETURNS NUMERIC AS $$
DECLARE
    total NUMERIC := 0;
BEGIN
    SELECT COALESCE(SUM(m.monto), 0)
    INTO total
    FROM "Multa" m
    WHERE m."usuarioId" = usuario_id AND m.pagada = false;

    RETURN total;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION fn_buscar_libros_por_editorial(editorial_nombre_param TEXT)
RETURNS TABLE (
    id INT,
    titulo TEXT,
    isbn TEXT,
    anioPublicacion INT,
    editorial_nombre TEXT,
    categoria_nombre TEXT,
    createdAt TIMESTAMP
) AS $$
BEGIN
    RETURN QUERY
    SELECT
        L.id,
        L.titulo,
        L.isbn,
        L."anioPublicacion",
        E.nombre,
        C.nombre,
        L."createdAt"
    FROM "Libro" L
    JOIN "Editorial" E ON L."editorialId" = E.id
    JOIN "Categoria" C ON L."categoriaId" = C.id
    WHERE E.nombre ILIKE '%' || editorial_nombre_param || '%';
END;
$$ LANGUAGE plpgsql;