# Django Advanced REST API Course

> A hands-on learning journey through three progressively complex Django REST API projects — from to-do lists to full blog platforms.

![Python](https://img.shields.io/badge/Python-3.x-3776AB?logo=python&logoColor=white)
![Django](https://img.shields.io/badge/Django-REST_Framework-092E20?logo=django&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-22c55e)
![Commits](https://img.shields.io/badge/Commits-96-orange)

---

## Overview

This repository documents my journey learning **advanced Django REST API development**. It contains three progressively complex API projects, each building on skills from the previous — starting with a simple to-do API and evolving into a full-featured blog platform. Each project introduces new concepts like authentication, serializers, viewsets, and Docker containerization.

---

## Projects

### 1. Todo App API

> A foundational task management REST API

**What it does:**
- CRUD operations on to-do items (create, read, update, delete)
- Simple model structure: title, completed status, timestamps
- Introduction to Django REST Framework serializers and views

**Endpoints:**

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/todos/` | List all to-dos |
| `POST` | `/api/todos/` | Create a to-do |
| `GET` | `/api/todos/{id}/` | Get a single to-do |
| `PUT/PATCH` | `/api/todos/{id}/` | Update a to-do |
| `DELETE` | `/api/todos/{id}/` | Delete a to-do |

**Skills practiced:** DRF basics, `ModelSerializer`, `APIView`, URL routing

---

### 2. Notes App API

> A personal notes REST API with user ownership

**What it does:**
- Create and manage personal notes
- User-scoped data — each note belongs to a user
- Introduces authentication and permissions

**Endpoints:**

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/notes/` | List user's notes |
| `POST` | `/api/notes/` | Create a note |
| `GET` | `/api/notes/{id}/` | Retrieve a note |
| `PUT/PATCH` | `/api/notes/{id}/` | Update a note |
| `DELETE` | `/api/notes/{id}/` | Delete a note |

**Skills practiced:** Token authentication, `IsAuthenticated` permissions, user filtering

---

### 3. Blog App API

> A full-featured blog platform REST API

**What it does:**
- Full blog CRUD with posts, categories, and authors
- Comment system
- Advanced filtering, searching, and pagination
- Docker containerization

**Endpoints:**

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/posts/` | List all blog posts |
| `POST` | `/api/posts/` | Create a blog post |
| `GET` | `/api/posts/{id}/` | Retrieve a post |
| `PUT/PATCH` | `/api/posts/{id}/` | Update a post |
| `DELETE` | `/api/posts/{id}/` | Delete a post |
| `GET/POST` | `/api/posts/{id}/comments/` | List / add comments |
| `GET` | `/api/categories/` | List categories |

**Skills practiced:** `ViewSet`, nested serializers, filtering, pagination, Docker

---

## Repository Structure

```
django_advanced_rest_api_course/
├── 1. todo_app_api/      # Project 1: Todo API
│   ├── manage.py
│   ├── todo/
│   │   ├── models.py
│   │   ├── serializers.py
│   │   ├── views.py
│   │   └── urls.py
│   └── requirements.txt
│
├── 2. notes_app_api/     # Project 2: Notes API
│   ├── manage.py
│   ├── notes/
│   └── requirements.txt
│
├── 3. blog_app_api/      # Project 3: Blog API
│   ├── manage.py
│   ├── blog/
│   ├── Dockerfile
│   ├── docker-compose.yml
│   └── requirements.txt
│
└── roadmap.txt           # Two-week learning roadmap
```

---

## Learning Roadmap

This repo follows a structured two-week plan:

**Week 1 — Infrastructure**
- [x] Build Todo API with SQLite
- [x] Build Notes API with authentication
- [x] Build Blog API with advanced features
- [ ] Migrate to PostgreSQL
- [ ] Dockerize each project

**Week 2 — Quality & Deployment**
- [ ] Add image upload support
- [ ] Write 10+ API tests per project
- [ ] Set up GitHub Actions CI/CD
- [ ] Deploy to cloud platform

---

## Skills Learned

| Concept | Where Applied |
|---------|--------------|
| Model creation & migrations | All projects |
| `ModelSerializer` | All projects |
| Class-based APIView | Project 1 |
| Token authentication | Projects 2 & 3 |
| `IsAuthenticated` permissions | Projects 2 & 3 |
| `ViewSet` & `Router` | Project 3 |
| Nested serializers | Project 3 |
| Filtering & search | Project 3 |
| Docker Compose | Project 3 |
| PostgreSQL integration | Project 3 |

---

## Getting Started

### Run a Project (without Docker)

```bash
# Navigate to any project folder
cd "1. todo_app_api"

# Create and activate virtual environment
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Start the server
python manage.py runserver
# → http://localhost:8000/api/
```

### Run Blog API with Docker

```bash
cd "3. blog_app_api"
docker-compose up --build
# → http://localhost:8000/api/
```

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| Python 3.x | Language |
| Django | Web framework |
| Django REST Framework | API layer |
| PostgreSQL | Production database |
| SQLite | Development database |
| Docker & Compose | Containerization |
| DRF Browsable API | Interactive testing |

---

## Example Requests

**Create a to-do:**
```bash
curl -X POST http://localhost:8000/api/todos/ \
  -H "Content-Type: application/json" \
  -d '{"title": "Learn Django REST Framework", "completed": false}'
```

**Response:**
```json
{
  "id": 1,
  "title": "Learn Django REST Framework",
  "completed": false,
  "created_at": "2026-02-25T10:00:00Z"
}
```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a> while learning advanced Django</p>
