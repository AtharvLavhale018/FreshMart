<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Product - FreshMart</title>
    <style>
    
    .custom-navbar {
    background-color: #388E3C;
    color: white;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 1rem 2rem;
    flex-wrap: wrap;
    box-shadow: 0 2px 5px rgba(0,0,0,0.1);
}

.nav-logo {
    font-size: 1.5rem;
    font-weight: bold;
}

.nav-links ul {
    list-style: none;
    display: flex;
    margin: 0;
    padding: 0;
}

.nav-links ul li {
    margin-left: 1.5rem;
}

.nav-links ul li a {
    color: white;
    text-decoration: none;
    font-weight: 500;
}

.nav-search {
    display: flex;
    margin-top: 0.5rem;
}

.nav-search input {
    padding: 0.5rem;
    border: none;
    border-radius: 4px 0 0 4px;
    font-size: 1rem;
}

.nav-search button {
    padding: 0.5rem 1rem;
    border: none;
    background-color: #2196F3;
    color: white;
    border-radius: 0 4px 4px 0;
    cursor: pointer;
}

/* Responsive */
@media (max-width: 768px) {
    .custom-navbar {
        flex-direction: column;
        align-items: flex-start;
    }

    .nav-links ul {
        flex-direction: column;
    }

    .nav-links ul li {
        margin: 0.5rem 0;
    }

    .nav-search {
        width: 100%;
        margin-top: 1rem;
    }

    .nav-search input {
        width: 70%;
    }

    .nav-search button {
        width: 30%;
    }
}
    
    
    
    
    
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 600px;
            background-color: #fff;
            margin: 60px auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #388E3C;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        select {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<!-- Custom Navbar -->
<header class="custom-navbar">
    <div class="nav-logo">FreshMart</div>
    <nav class="nav-links">
        <ul>
            <li><a href="<c:url value='/' />">Home</a></li>
            <li><a href="<c:url value='/products' />">Products</a></li>
            <li><a href="<c:url value='/cart' />">Cart</a></li>
        </ul>
    </nav>

</header>


    <div class="container">
        <h2>Add New Grocery Item</h2>
        <form:form action="save" modelAttribute="product">
            <div class="form-group">
                <form:label path="name">Product Name</form:label>
                <form:input path="name" type="text" required="true"/>
            </div>

            <div class="form-group">
                <form:label path="category">Category</form:label>
                <form:select path="category" >
                    <form:option value=""  label="Select a Category"  required="true"/>
                    <form:option value="Vegetables" />
                    <form:option value="Fruits" />
                    <form:option value="Dairy" />
                    <form:option value="Bakery" />
                    <form:option value="Beverages" />
                    <form:option value="Snacks" />
                </form:select>
            </div>

            <div class="form-group">
                <form:label path="price">Price:</form:label>
                <form:input path="price" type="number"   required="true"/>
            </div>

            <div class="form-group">
                <form:label path="stockQuantity">Enter Item Stock Quantity:</form:label>
                <form:input path="stockQuantity" type="number"  required="true"/>
            </div>

            <input type="submit" value="Add Product" />
        </form:form>
    </div>

</body>
</html>
