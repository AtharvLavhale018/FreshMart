<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error - FreshMart</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8d7da;
            color: #721c24;
            padding: 2rem;
            text-align: center;
        }

        .error-box {
            background-color: #f5c6cb;
            padding: 2rem;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            display: inline-block;
        }

        h1 {
            margin-bottom: 1rem;
        }

        p {
            font-size: 1.1rem;
        }

        a {
            display: inline-block;
            margin-top: 1.5rem;
            text-decoration: none;
            background-color: #721c24;
            color: white;
            padding: 0.6rem 1.2rem;
            border-radius: 5px;
        }

        a:hover {
            background-color: #501418;
        }
    </style>
</head>
<body>

    <div class="error-box">
        <h1>Oops! Something went wrong.</h1>
        <p>${errorMsg}</p>
        <a href="index.jsp">Back to Home</a>
    </div>

</body>
</html>
