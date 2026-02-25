# Recipe App API

> A fully containerized REST API for managing recipes, ingredients, and tags — built with Django REST Framework and PostgreSQL.

![Python](https://img.shields.io/badge/Python-3.10-3776AB?logo=python&logoColor=white)
![Django](https://img.shields.io/badge/Django-3.2-092E20?logo=django&logoColor=white)
![DRF](https://img.shields.io/badge/DRF-3.12.4-red?logo=django&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-13-336791?logo=postgresql&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-Compose-2496ED?logo=docker&logoColor=white)
![CI](https://img.shields.io/badge/CI-GitHub_Actions-2088FF?logo=githubactions&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-22c55e)

---

## Overview

**Recipe App API** is a production-ready backend service that allows users to manage their personal recipe collections. Users can create, browse, and organize recipes with associated tags and ingredients. The entire stack runs in Docker containers with a PostgreSQL database, GitHub Actions CI/CD, and auto-generated OpenAPI documentation via `drf-spectacular`.

---

## Features

- **Custom user authentication** — email-based login with a custom `AbstractBaseUser`
- **Recipe management** — create, retrieve, update, and delete recipes with title, description, price, cooking time, and external links
- **Tags** — categorize and filter recipes with reusable tags
- **Ingredients** — attach and manage ingredient lists per recipe
- **OpenAPI / Swagger docs** — auto-generated API documentation via `drf-spectacular`
- **Dockerized** — fully containerized with Docker & Docker Compose
- **CI/CD** — automated tests on every push via GitHub Actions
- **Image uploads** — recipe image support via Pillow

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Language | Python 3.10 |
| Framework | Django 3.2 |
| API Layer | Django REST Framework 3.12.4 |
| Database | PostgreSQL 13 |
| Containerization | Docker & Docker Compose |
| API Docs | drf-spectacular (OpenAPI 3) |
| Image Processing | Pillow |
| CI/CD | GitHub Actions |

---

## Project Structure

```
recipe_app_api/
├── .github/
│   └── workflows/        # GitHub Actions CI configuration
├── app/
│   ├── core/
│   │   └── models.py     # User, Recipe, Tag, Ingredient models
│   ├── recipe/
│   │   ├── views.py      # API ViewSets
│   │   ├── serializers.py
│   │   └── urls.py       # Route definitions
│   └── user/             # Authentication endpoints
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
└── requirements.dev.txt
```

---

## Getting Started

### Prerequisites

- [Docker](https://www.docker.com/get-started) & Docker Compose installed

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/sadykovIsmail/recipe_app_api.git
cd recipe_app_api

# 2. Build and start the containers
docker-compose up --build

# 3. The API is now running at:
#    http://localhost:8000/api/
```

### Run Tests

```bash
docker-compose run --rm app sh -c "python manage.py test"
```

### Environment Variables

The `docker-compose.yml` pre-configures the dev environment:

| Variable | Default |
|----------|---------|
| `POSTGRES_DB` | `devbd` |
| `POSTGRES_USER` | `devuser` |
| `POSTGRES_PASSWORD` | `changeme` |
| `DB_HOST` | `db` |

---

## API Endpoints

Base URL: `http://localhost:8000/api/`

### Authentication

| Method | Endpoint | Description |
|--------|----------|-------------|
| `POST` | `/api/user/create/` | Register a new user |
| `POST` | `/api/user/token/` | Obtain auth token |
| `GET/PUT` | `/api/user/me/` | View / update profile |

### Recipes

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/recipe/recipes/` | List all recipes |
| `POST` | `/api/recipe/recipes/` | Create a recipe |
| `GET` | `/api/recipe/recipes/{id}/` | Retrieve a recipe |
| `PUT/PATCH` | `/api/recipe/recipes/{id}/` | Update a recipe |
| `DELETE` | `/api/recipe/recipes/{id}/` | Delete a recipe |
| `POST` | `/api/recipe/recipes/{id}/upload-image/` | Upload recipe image |

### Tags

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/recipe/tags/` | List tags |
| `POST` | `/api/recipe/tags/` | Create a tag |
| `PUT/PATCH` | `/api/recipe/tags/{id}/` | Update a tag |
| `DELETE` | `/api/recipe/tags/{id}/` | Delete a tag |

### Ingredients

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/recipe/ingredients/` | List ingredients |
| `POST` | `/api/recipe/ingredients/` | Create an ingredient |
| `PUT/PATCH` | `/api/recipe/ingredients/{id}/` | Update an ingredient |
| `DELETE` | `/api/recipe/ingredients/{id}/` | Delete an ingredient |

---

## API Documentation (Swagger UI)

Auto-generated interactive docs are available when the server is running:

```
http://localhost:8000/api/docs/
```

---

## Data Models

```python
# Core models overview

class User(AbstractBaseUser):
    email = EmailField(unique=True)  # Email-based login
    name = CharField(max_length=255)

class Recipe(Model):
    user = ForeignKey(User)
    title = CharField(max_length=255)
    description = TextField(blank=True)
    time_minutes = IntegerField()
    price = DecimalField()
    link = CharField(max_length=255, blank=True)
    tags = ManyToManyField('Tag')
    ingredients = ManyToManyField('Ingredient')
    image = ImageField(null=True)

class Tag(Model):
    name = CharField(max_length=255)
    user = ForeignKey(User)

class Ingredient(Model):
    name = CharField(max_length=255)
    user = ForeignKey(User)
```

---

## Example Requests

**Create a user:**
```bash
curl -X POST http://localhost:8000/api/user/create/ \
  -H "Content-Type: application/json" \
  -d '{"email": "chef@example.com", "password": "testpass123", "name": "Chef Ismail"}'
```

**Get auth token:**
```bash
curl -X POST http://localhost:8000/api/user/token/ \
  -H "Content-Type: application/json" \
  -d '{"email": "chef@example.com", "password": "testpass123"}'
```

**Create a recipe (authenticated):**
```bash
curl -X POST http://localhost:8000/api/recipe/recipes/ \
  -H "Authorization: Token <your-token>" \
  -H "Content-Type: application/json" \
  -d '{"title": "Spaghetti Carbonara", "time_minutes": 30, "price": "12.00"}'
```

**Example response:**
```json
{
  "id": 1,
  "title": "Spaghetti Carbonara",
  "time_minutes": 30,
  "price": "12.00",
  "link": "",
  "tags": [],
  "ingredients": [],
  "image": null
}
```

---

## CI/CD

GitHub Actions automatically runs the test suite on every push to `main`. The workflow:
1. Builds the Docker image
2. Starts PostgreSQL service
3. Runs `python manage.py test`

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a></p>
