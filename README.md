# BiblioNauta

BiblioNauta is a comprehensive web application designed for the management of a library system. It facilitates the administration of books, user accounts, loans, reservations, and penalties. Users can browse available books, manage their loans and reservations, and suggest new books. Administrators have the tools to oversee the entire catalog, user base, and transaction history. The backend is powered by PostgreSQL and Prisma ORM, with a modern frontend built using Next.js and Tailwind CSS.

<div align="center">
  <img src="prisma/erd.svg" alt="Database ERD" width="600"/>
</div>

## Getting Started

Follow these steps to set up and run the project locally:

1. Install dependencies:
```bash
npm install
```

2. Run database migrations:
```bash
npx prisma migrate dev
```

> [!IMPORTANT]
> To test the project correctly, you must manually execute the `prisma/data.sql` file using pgAdmin or your preferred PostgreSQL database manager. This step is required to populate the database with users, instructors, workshops, and reservations.

3. Start the development server:
```bash
npm run dev
```
## API Documentation

Explore the API endpoints using our Postman collection:
[BiblioNauta Postman Collection](https://universal-trinity-319957.postman.co/workspace/Rutas-Control-Comercial~03feaf0c-efa7-437c-b3e8-ec17647d833b/collection/19281513-0a612228-e94e-4120-b567-701b3a4bc5b9?action=share&creator=19281513&active-environment=19281513-d4ca6da2-e887-4319-be7e-7f6e0e22bdb8)

Enjoy exploring and managing books with BiblioNauta!