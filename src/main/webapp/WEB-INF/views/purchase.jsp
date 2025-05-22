<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Purchase Product - FreshMart</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f9f9f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: #fff;
            padding: 2rem 3rem;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            border-radius: 10px;
            width: 400px;
        }
        .form-container h2 {
            text-align: center;
            color: #388E3C;
            margin-bottom: 20px;
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: 500;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #388E3C;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #2e7d32;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Buy a Product</h2>
        <form action="getBill" method="get">
            <label for="name">Product Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="quantity">Quantity:</label>
            <input type="number" name="quantity" id="quantity" min="1" required>

            <input type="submit" value="Purchase">
        </form>
    </div>
</body>
</html>
