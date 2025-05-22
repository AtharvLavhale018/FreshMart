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

The codebase follows a clean package structure to separate responsibilities:

src/
└── com.jsp
├── controller # Servlets (handles user requests and responses)
├── dao # DAO (data access logic using JDBC)
├── dto # DTO (JavaBeans for product and purchase info)
├── initializer # Configuration classes (e.g., DB connection)
└── util # (Optional) Utility classes like validators or helpers



The JSP files are placed under the `WebContent` or `webapp` folder depending on your IDE setup.

---------------------------------------------------------------------

## 🧰 Technologies Used

- **Java**
- **Java Servlets**
- **JSP (Java Server Pages)**
- **JDBC**
- **MySQL** (or any relational DB)
- **Apache Tomcat** (server)
- **HTML/CSS** (basic UI styling)
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

