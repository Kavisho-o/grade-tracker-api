# Student Grade Tracker API

This project is a backend API built with FastAPI for managing student records. It started as a simple CRUD application and was later extended with PostgreSQL database support and JWT-based authentication.

## Features

* Add, view, update, and manage student records
* PostgreSQL database integration using SQLAlchemy ORM
* User registration and login system
* JWT authentication for protected endpoints
* Password hashing using bcrypt
* Interactive API documentation with Swagger UI

## Tech Stack

* Python
* FastAPI
* SQLAlchemy
* PostgreSQL (Supabase)
* JWT Authentication (python-jose)
* Passlib (bcrypt)

## Running the Project

Clone the repository and install the required dependencies:

```bash
git clone <your-repo-url>
cd <repo-name>
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

Create a `.env` file in the project root:

```env
DATABASE_URL=your_postgres_connection_string
SECRET_KEY=your_secret_key
ALGORITHM=HS256
ACCESS_TOKEN_EXPIRE_MINUTES=30
```

Start the server:

```bash
uvicorn main:app --reload
```

The API will be available at:

```text
http://127.0.0.1:8000
```

Swagger documentation:

```text
http://127.0.0.1:8000/docs
```

## API Endpoints

* **POST /register** – Register a new user
* **POST /login** – Login and receive an access token
* **GET /me** – Get details of the currently logged-in user
* **POST /student** – Create a new student record
* **GET /student/{id}** – Fetch a student by ID
* **PUT /student/{id}/grade** – Update a student's grade
* **GET /students/average** – Calculate the average grade of all students
* **GET /students** – Retrieve all student records

## Challenges Faced

* Understanding how SQLAlchemy sessions and database connections work
* Setting up PostgreSQL and connecting it through Supabase
* Implementing JWT authentication correctly
* Managing environment variables securely

## What I Learned

* Building REST APIs with FastAPI
* Using SQLAlchemy for database operations
* Working with PostgreSQL in a real-world project
* Implementing authentication and authorization using JWT
* Separating models, schemas, and database logic for better project structure
* Handling persistent data storage instead of relying on in-memory data
