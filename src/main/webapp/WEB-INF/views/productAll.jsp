<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FreshMart - Product List</title>
    <style>
        /* Reset */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f5f5f5;
            padding: 0;
            margin: 0;
        }

        /* Navbar */
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

        /* Content Container */
        .container {
            padding: 2rem;
        }

        .section-title {
            margin-bottom: 1.5rem;
            font-size: 1.8rem;
            color: #333;
        }

        /* Table */
        .table-container {
            overflow-x: auto;
            background-color: white;
            padding: 1.5rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.05);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            min-width: 800px;
        }

        th, td {
            padding: 1rem;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #E8F5E9;
            color: #333;
            font-weight: 600;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .btn {
            padding: 0.5rem 1rem;
            border: none;
            border-radius: 4px;
            background-color: #FF9800;
            color: white;
            cursor: pointer;
            text-decoration: none;
        }

        /* Responsive  Created by Atharv A. Lavhale*/
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

            table {
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>

    <!-- Navbar -->
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

    <!-- Main Content -->
    <div class="container">
        <h2 class="section-title">All Products</h2>

        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Category</th>
                        <th>Price (₹)</th>
                        <th>Stock</th>
                        <th>Purchase</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${productList}" var="product">
                        <tr>
                            <td>${product.productId}</td>
                            <td>${product.name}</td>
                            <td>${product.category}</td>
                            <td>${product.price}</td>
                            <td>${product.stockQuantity}</td>
                            <td>
                                <form action="getBill" method="get" >
                                       <input type="hidden" name="name" value="${product.name}" />
                                       <input type="number" name="quantity" min="1" max="${product.stockQuantity}" value="1" style="width: 60px; padding: 5px;" required />
                                       <button type="submit" class="btn">Purchase</button>
                                       </form>

                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

</body>
</html>
