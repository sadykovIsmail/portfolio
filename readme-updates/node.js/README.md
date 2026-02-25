# Node.js Backend Projects

> 13 progressive backend projects built while following The Odin Project curriculum — from basic Express servers to full authentication systems and social media APIs.

![JavaScript](https://img.shields.io/badge/JavaScript-ES6+-F7DF1E?logo=javascript&logoColor=black)
![Node.js](https://img.shields.io/badge/Node.js-339933?logo=node.js&logoColor=white)
![Express](https://img.shields.io/badge/Express.js-000000?logo=express&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![EJS](https://img.shields.io/badge/EJS-Templating-A91E50)
![License](https://img.shields.io/badge/License-MIT-22c55e)

---

## Overview

This repository is a collection of **13 backend Node.js/Express projects** built while completing [The Odin Project](https://www.theodinproject.com/) curriculum. Projects progress from "Hello World" express apps all the way to a full social media backend with file uploads, authentication, and Prisma ORM.

---

## All Projects

| # | Project | Description | Key Skills |
|---|---------|-------------|------------|
| 01 | **hello-world** | Basic Node.js server setup | Node.js fundamentals |
| 02 | **basic-information-site** | Static multi-page Express site | Express routing, HTML serving |
| 03 | **hello-world-express** | Express "Hello World" | Express basics |
| 04 | **express-ejs-app** | Dynamic views with EJS | EJS templating, layouts |
| 05 | **message-board** | Post and view messages in real time | CRUD, EJS, Express |
| 06 | **profile** | User profile display page | Express, EJS, forms |
| 07 | **express-pg-app** | Express + PostgreSQL integration | `pg` client, SQL queries |
| 08 | **inventory-app** | Full inventory management system | PostgreSQL, RESTful routing, CRUD |
| 09 | **authentication** | Login/signup with sessions | Passport.js, bcrypt, sessions |
| 10 | **members-only** | Route-protected exclusive content | Auth middleware, role-based access |
| 11 | **prisma-demo** | ORM-based database interactions | Prisma, schema modeling |
| 12 | **file-uploader** | File/image upload functionality | Multer, file storage |
| 13 | **social-media-app** | Full social media backend API | REST API, auth, uploads |

---

## Highlighted Projects

### 10 — Members Only

> A route-protected community site where only authenticated members see exclusive content.

```
Features:
  ✓ User registration and login
  ✓ Password hashing with bcryptjs
  ✓ Session-based authentication with Passport.js
  ✓ Protected routes — guests see limited content
  ✓ Member-only message reveal
```

**Tech:** Express.js · Passport.js (local strategy) · bcryptjs · express-session · PostgreSQL · EJS · nodemailer

```bash
cd 10-members-only
npm install
npm run dev       # → http://localhost:3000
```

---

### 08 — Inventory App

> A database-driven inventory management system with full CRUD.

```
Features:
  ✓ Add, edit, and delete inventory items
  ✓ Category management
  ✓ PostgreSQL-backed persistent storage
  ✓ Clean RESTful routing
  ✓ EJS templating with form validation
```

**Tech:** Express.js · PostgreSQL · `pg` client · EJS

```bash
cd 08-inventory-app
npm install
# Configure your PostgreSQL connection in app.js
npm start         # → http://localhost:3000
```

---

### 13 — Social Media App

> A full-featured social media backend API with authentication and file uploads.

```
Features:
  ✓ User authentication (register/login)
  ✓ Create and view posts
  ✓ File/image uploads
  ✓ Follow system
  ✓ REST API design
```

**Tech:** Express.js · Prisma ORM · Authentication · Multer

```bash
cd 13-social-media-app/server
npm install
npm start         # → http://localhost:3000
```

---

### 05 — Message Board

> A real-time message board with post creation, editing, and deletion.

```
Features:
  ✓ Create and view messages
  ✓ Full CRUD operations
  ✓ EJS-rendered dynamic templates
  ✓ Clean Express routing
```

**Tech:** Node.js · Express.js · EJS

---

## Tech Stack

| Category | Technologies |
|----------|-------------|
| Runtime | Node.js |
| Framework | Express.js |
| Templating | EJS |
| Database | PostgreSQL |
| ORM | Prisma |
| Auth | Passport.js (local), bcryptjs, express-session |
| File Uploads | Multer |
| Validation | express-validator |
| Email | nodemailer |
| Dev Tools | Nodemon, dotenv |

---

## Getting Started

### Prerequisites

- Node.js 18+ installed
- PostgreSQL running locally (for DB projects: 07, 08, 09, 10, 13)

### Run Any Project

```bash
# 1. Clone the repository
git clone https://github.com/sadykovIsmail/node.js.git
cd node.js

# 2. Navigate to a project
cd 05-message-board      # replace with any project folder

# 3. Install dependencies
npm install

# 4. Start the server
npm start
# → http://localhost:3000
```

### Development Mode (with auto-reload)

```bash
npm run dev
```

### Projects Requiring PostgreSQL

For projects `07`, `08`, `09`, `10`, `13` — set up a local PostgreSQL database and update the connection string in the project's config or `.env` file.

---

## Skills Developed

- REST API design with Express.js
- Server-side rendering with EJS templating
- User authentication (sessions, Passport.js, bcrypt)
- PostgreSQL integration with raw SQL and Prisma ORM
- Role-based access control and route protection
- File upload handling with Multer
- Environment configuration with dotenv
- MVC project structure
- Input validation and error handling

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a> following <a href="https://www.theodinproject.com/">The Odin Project</a> curriculum</p>
