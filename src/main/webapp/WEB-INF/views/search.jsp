<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Products - FreshMart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f4f4f4;
        }

        header {
            background-color: #2e7d32;
            color: white;
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        nav ul {
            list-style: none;
            display: flex;
            gap: 20px;
            margin: 0;
            padding: 0;
        }

        nav ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }
        
        

        .container {
            padding: 2rem;
        }

        .search-form {
            margin-bottom: 2rem;
        }

        .search-form input[type="text"] {
            padding: 10px;
            width: 300px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .search-form button {
            padding: 10px 15px;
            background-color: #388e3c;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

    </style>
</head>
<body>

<header>
    <div class="logo">FreshMart</div>
    <nav>
        <ul>
            <li><a href="<c:url value='/' />">Home</a></li>
            <li><a href="<c:url value='/products' />">Products</a></li>
            <li><a href="<c:url value='/cart' />">Cart</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <form action="searchProduct" class="search-form">
        <input type="text" name="value" placeholder="Search by name or category" required />
        <button type="submit">Search</button>
    </form>
</div>

</body>
</html>
