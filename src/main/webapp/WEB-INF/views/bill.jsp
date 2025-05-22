<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Bill - FreshMart</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f1f8e9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .bill-container {
            background-color: #ffffff;
            padding: 2rem 3rem;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 400px;
        }
        .bill-header {
            text-align: center;
            color: #388E3C;
            margin-bottom: 20px;
        }
        .bill-info {
            font-size: 16px;
            line-height: 1.8;
        }
        .total {
            font-weight: bold;
            color: #2e7d32;
            margin-top: 10px;
        }
        a {
            display: inline-block;
            margin-top: 1.5rem;
            text-decoration: none;
            background-color: #2e7d32; 
            color: white;
            padding: 0.6rem 1.2rem;
            border-radius: 5px;
        }

        a:hover {
            background-color: #1b5e20; 
        }
        
        .home-button {
            text-align: center;
        }
        
        <%-- Created By Atharv A. Lavhale --%>
        
          .footer {
            text-align: center;
            font-size: 12px;
            padding: 1rem;
            color: #888;
        }
    </style>
</head>
<body>
    <div class="bill-container">
        <h2 class="bill-header">FreshMart Purchase Bill</h2>
        <div class="bill-info">
            <p><strong>Product Name : </strong> ${productName}</p>
            <p><strong>Product Price : </strong> ₹${productPrice}</p>
            <p><strong>Quantity : </strong> ${productQuantity}</p>
            <p class="total"><strong>Total Amount : </strong> ₹${totalamount}</p>
        </div>
        <div class="footer">
        Thank you for shopping with FreshMart!<br>
        Visit again 
    </div>
     <div class="home-button">
         <a href="index.jsp">Home</a>
      </div>

    </div>
    
</body>
</html>
