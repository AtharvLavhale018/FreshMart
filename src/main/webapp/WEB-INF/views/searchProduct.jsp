<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Results - FreshMart</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
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
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #e8f5e9;
            color: #2e7d32;
        }
        tr:hover {
            background-color: #f1f1f1;
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
<%-- Created By Atharv A. Lavhale --%>
<div class="container">
    <h2>Search Results</h2>


        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Category</th>
                <th>Price</th>
                <th>Stock</th>
            </tr>
            <c:forEach items="${searchProduct}" var="product">
                <tr>
                    <td>${product.productId}</td>
                    <td>${product.name}</td>
                    <td>${product.category}</td>
                    <td>${product.price}</td>
                    <td>${product.stockQuantity}</td>
                </tr>
            </c:forEach>
        </table>
     <c:if test="${empty searchProduct}">
        <p>No products found.</p>
    </c:if>

  
</div>

</body>
</html>
