
# 📚 Digital Bookstore Management System

A **Full-Stack Microservices-Based Application** that allows users to browse, purchase, and manage books online. Built with **React + Vite** for the frontend and **Spring Boot** for the backend, using **REST APIs** and **MySQL** for data persistence.

---

## 🚀 Features

### **Book Catalog Management**
- Browse, search, and filter books by category or author.
- Admins can add, update, and remove books.

### **User Management**
- User registration, login, and profile management.
- Role-based access (Admin / Customer).

### **Order Management**
- Add books to cart and place orders.
- Track order status (Pending, Shipped, Delivered).

### **Inventory Management**
- Track stock levels and prevent out-of-stock purchases.
- Alerts for low stock.

### **Review & Rating**
- Customers can submit reviews and ratings.
- Admin moderation for reviews.

---

## 🏗️ Architecture
- **Frontend:** React + Vite
- **Backend:** Spring Boot (Microservices)
- **API Style:** REST
- **Database:** MySQL

---

## 📂 Project Structure
```
digital-bookstore/
├── frontend/        # React + Vite application
├── backend/
│   ├── book-service/
│   ├── user-service/
│   ├── order-service/
│   ├── inventory-service/
│   └── review-service/
└── README.md
```

---

## ⚙️ Tech Stack
- **Frontend:** React, Vite
- **Backend:** Spring Boot, Spring Data JPA, Feign Client
- **Database:** MySQL
- **Authentication:** Spring Security
- **Build Tools:** Maven

---

## 🔐 Security
- Secure login and role-based access control using **Spring Security**.
- Encrypted transactions for payment integration.

---

## ▶️ How to Run

### **Frontend**
```bash
cd frontend
npm install
npm run dev
```

### **Backend**
```bash
cd backend
mvn clean install
mvn spring-boot:run
```

### **Database**
- Create a MySQL database named `bookstore_db`.
- Update `application.properties` with your DB credentials.

---

## ✅ Future Enhancements
- Multi-store support.
- Advanced recommendation engine.
- Payment gateway integration.
