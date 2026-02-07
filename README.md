# Item Management REST API (Spring Boot)

A simple Java backend application built with **Spring Boot** that provides RESTful APIs to manage a collection of items using in-memory storage.

This project was created as part of a sample task for a Freelance Java Developer opportunity.

---

## 🚀 Tech Stack
- Java 17
- Spring Boot 3.5.10
- Maven
- Embedded Tomcat
- In-memory data storage (ArrayList)

---

## 📦 Features
- Add a new item
- Get an item by ID
- Input validation using Jakarta Validation
- Clean RESTful API design

---

## 📁 Item Model
Each item contains:
- `id` (auto-generated)
- `name` (required)
- `description` (required)
- `price` (must be > 0)
- `quantity` (must be ≥ 0)

---

## 🔌 API Endpoints

### ➕ Add Item
**POST** `/api/items`

**Request Body**
```json
{
  "name": "Laptop",
  "description": "Gaming laptop",
  "price": 75000,
  "quantity": 5
}
Response

json
Copy code
{
  "id": 1,
  "name": "Laptop",
  "description": "Gaming laptop",
  "price": 75000.0,
  "quantity": 5
}
🔍 Get Item by ID
GET /api/items/{id}

Example:

bash
Copy code
GET /api/items/1
▶️ How to Run Locally
Clone the repository

bash
Copy code
git clone https://github.com/<your-username>/itemapi-springboot.git
Navigate to project directory

bash
Copy code
cd itemapi-springboot
Run the application

bash
Copy code
mvn spring-boot:run
Application runs on:

arduino
Copy code
http://localhost:8080
🌐 Deployment
The application can be deployed on platforms like Render or Railway.

👨‍💻 Author
Rohit Mane