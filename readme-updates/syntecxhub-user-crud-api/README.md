# Syntecxhub User CRUD API

> A clean, minimal REST API demonstrating full CRUD operations on user records — built with Django REST Framework and PostgreSQL.

![Python](https://img.shields.io/badge/Python-3.10-3776AB?logo=python&logoColor=white)
![Django](https://img.shields.io/badge/Django-3.2-092E20?logo=django&logoColor=white)
![DRF](https://img.shields.io/badge/Django_REST_Framework-3.x-red?logo=django&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?logo=postgresql&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-22c55e)

---

## Overview

**Syntecxhub User CRUD API** is a straightforward backend REST API that demonstrates the core patterns of Django REST Framework: models, serializers, views, and URL routing. It implements complete **Create, Read, Update, and Delete** operations on a `User` resource with a PostgreSQL database.

This project was built during my internship at **Syntecxhub** as a backend developer to demonstrate clean API design with DRF.

---

## Features

- Full CRUD on user records (create, list, retrieve, update, delete)
- Clean DRF serializer and viewset pattern
- Django Admin interface for visual data management
- Token-ready architecture
- Testable via DRF Browsable API, Postman, or Insomnia

---

## Tech Stack

| Layer | Technology |
|-------|-----------|
| Language | Python 3.10 |
| Framework | Django 3.2 |
| API Layer | Django REST Framework |
| Database | PostgreSQL |
| DB Driver | psycopg2-binary |
| Admin | Django Admin Panel |

---

## Project Structure

```
syntecxhub-user-crud-api/
├── sytexhub_user_crud_api/
│   ├── settings.py       # Project configuration
│   ├── urls.py           # Root URL configuration
│   ├── wsgi.py
│   └── asgi.py
├── users/
│   ├── models.py         # User model
│   ├── serializers.py    # UserSerializer
│   ├── views.py          # UserViewSet
│   ├── urls.py           # /api/users/ routes
│   ├── admin.py          # Admin registration
│   └── migrations/
├── manage.py
└── requirements.txt
```

---

## Getting Started

### Prerequisites

- Python 3.10+
- PostgreSQL running locally

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/sadykovIsmail/syntecxhub-user-crud-api.git
cd syntecxhub-user-crud-api

# 2. Create and activate a virtual environment
python -m venv .venv
source .venv/bin/activate    # Windows: .venv\Scripts\activate

# 3. Install dependencies
pip install -r requirements.txt
```

### Database Setup

```bash
# In settings.py, update DATABASES with your PostgreSQL credentials:
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'your_db_name',
        'USER': 'your_db_user',
        'PASSWORD': 'your_password',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
```

### Run the Server

```bash
# Apply migrations
python manage.py migrate

# (Optional) Create admin user
python manage.py createsuperuser

# Start the development server
python manage.py runserver
# → http://localhost:8000/
```

---

## API Endpoints

Base URL: `http://localhost:8000/api/users/`

| Method | Endpoint | Description |
|--------|----------|-------------|
| `GET` | `/api/users/` | List all users |
| `POST` | `/api/users/` | Create a new user |
| `GET` | `/api/users/{id}/` | Retrieve a user by ID |
| `PUT` | `/api/users/{id}/` | Update a user (full) |
| `PATCH` | `/api/users/{id}/` | Partial update a user |
| `DELETE` | `/api/users/{id}/` | Delete a user |

---

## Request & Response Format

**Request body (JSON):**
```json
{
  "username": "ismail_dev",
  "email": "career.sadykov@gmail.com",
  "age": 23
}
```

**Response (201 Created):**
```json
{
  "id": 1,
  "username": "ismail_dev",
  "email": "career.sadykov@gmail.com",
  "age": 23
}
```

---

## Example Requests

**List all users:**
```bash
curl http://localhost:8000/api/users/
```

**Create a user:**
```bash
curl -X POST http://localhost:8000/api/users/ \
  -H "Content-Type: application/json" \
  -d '{"username": "ismail_dev", "email": "career.sadykov@gmail.com", "age": 23}'
```

**Update a user:**
```bash
curl -X PUT http://localhost:8000/api/users/1/ \
  -H "Content-Type: application/json" \
  -d '{"username": "ismail_updated", "email": "career.sadykov@gmail.com", "age": 24}'
```

**Delete a user:**
```bash
curl -X DELETE http://localhost:8000/api/users/1/
```

---

## Testing the API

Three options to explore and test the endpoints:

**1. DRF Browsable API** — open `http://localhost:8000/api/users/` in your browser for the interactive interface.

**2. Django Admin** — open `http://localhost:8000/admin/` to manage records visually.

**3. Postman / Insomnia** — import the base URL and test each endpoint with the request examples above.

---

## User Model

```python
class User(models.Model):
    username = models.CharField(max_length=150, unique=True)
    email = models.EmailField(unique=True)
    age = models.IntegerField()

    def __str__(self):
        return self.username
```

---

## License

This project is licensed under the [MIT License](LICENSE).

---

<p align="center">Built by <a href="https://github.com/sadykovIsmail">Ismail Sadykov</a> — Backend Developer Intern @ Syntecxhub</p>
