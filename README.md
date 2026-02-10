# 🛒 FreshMart Admin Panel

FreshMart is a simple Java-based web application designed for managing a small online grocery store. It includes features 
like product management and purchase handling, built using core Java technologies such as **JSP**, **Servlets**, and **JDBC**. 
This project follows the **MVC (Model-View-Controller)** architecture to separate logic, user interface, and database access.

--------------------------------------------------------------------

## 📝 Description

FreshMart allows an admin to manage grocery products in a database and lets users view and purchase products. It's mainly built 
for educational purposes to understand how Java EE (Enterprise Edition) technologies work together in a real-world web application.

The admin can:
- Add new grocery products
- View all available products
- Update product details
- Delete products

Customers can:
- Browse products
- Add products to cart
- Purchase selected items

--------------------------------------------------------------------

## 📂 Project Structure

```text
src/
└── com/
    └── jsp/
        ├── controller/
        │   └── Servlets that handle user requests and responses
        ├── dao/
        │   └── Data Access Objects (DAO) responsible for JDBC operations
        ├── dto/
        │   └── Data Transfer Objects (JavaBeans for Product, Purchase, etc.)
        ├── initializer/
        │   └── Application configuration classes (e.g., database connection setup)
        └── util/
            └── Utility and helper classes (validators, common helpers, constants)




---------------------------------------------------------------------

## 🧰 Technologies Used

- **Java**
- **Java Servlets**
- **JSP (Java Server Pages)**
- **JDBC**
- **MySQL** 
- **Apache Tomcat** 
- **HTML/CSS** 
- **MVC Design Pattern**

----------------------------------------------------------------------

## 📋 Database Schema (MySQL Example)

You can use this SQL snippet to create the required table:

```sql

CREATE DATABASE freshmart_db;

USE freshmart_db;

CREATE TABLE products (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    price DOUBLE NOT NULL,
    quantity INT NOT NULL,
    description TEXT
);
```
-----------------------------------------------------------------------

## 📸 Screenshots

### 🏠 Home Page  
![Home Page](screenshots/Home%20Page.jpg)

### 🛒 Add Product Form  
![Add Product Form](screenshots/Add%20Product%20Form.jpg)

### 📦 All Product List  
![All Product List](screenshots/All%20Product%20List.jpg)

### 🔎 Search Product  
![Search Product](screenshots/Search%20Product.jpg)

### 🧾 Purchase Page  
![Purchase Page](screenshots/Purchase%20Page.jpg)

### 💳 Bill Page  
![Bill Page](screenshots/Bill%20Page.jpg)



