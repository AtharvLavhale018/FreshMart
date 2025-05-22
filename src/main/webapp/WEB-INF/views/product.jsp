<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>FreshMart - Bill</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
        }

        .bill-container {
            max-width: 500px;
            margin: 50px auto;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 30px;
        }

        h2 {
            text-align: center;
            color: #388E3C;
        }

        .bill-details {
            margin-top: 20px;
        }

        .bill-details table {
            width: 100%;
            border-collapse: collapse;
        }

        .bill-details th, .bill-details td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        .total {
            text-align: right;
            font-weight: bold;
            margin-top: 20px;
            color: #444;
        }

        .footer {
            text-align: center;
            margin-top: 30px;
            color: #666;
            font-size: 14px;
        }

        .btn-back {
            display: block;
            text-align: center;
            margin-top: 25px;
        }

        .btn-back a {
            background-color: #388E3C;
            color: white;
            padding: 10px 20px;
            border-radius: 6px;
            text-decoration: none;
        }

        .btn-back a:hover {
            background-color: #2e7d32;
        }
    </style>
</head>
<body>

<div class="bill-container">
    <h2>FreshMart - Purchase Bill</h2>

    <div class="bill-details">
        <table>
            <tr>
                <th>Product Name:</th>
                <td>${product.name}</td>
            </tr>
            <tr>
                <th>Category:</th>
                <td>${product.category}</td>
            </tr>
            <tr>
                <th>Unit Price:</th>
                <td>₹ ${product.price}</td>
            </tr>
            <tr>
                <th>Quantity Purchased:</th>
                <td>${quantity}</td>
            </tr>
            <tr>
                <th>Total Price:</th>
                <td><strong>₹ ${product.price * quantity}</strong></td>
            </tr>
        </table>
    </div>

    <div class="btn-back">
        <a href="index.jsp">Back to Home</a>
    </div>

    <div class="footer">
        Thank you for shopping at FreshMart!
    </div>
</div>

</body>
</html>
