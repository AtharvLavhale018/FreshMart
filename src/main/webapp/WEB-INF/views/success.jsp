<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

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


</style>

</head>
<body>

<header class="custom-navbar">
        <div class="nav-logo">FreshMart</div>
        <nav class="nav-links">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="<c:url value='/products' />">Products</a></li>
                <li><a href="<c:url value='/cart' />">Cart</a></li>
            </ul>
        </nav>
    </header>
<br><br>

<h2>${successMsg}</h2>

</body>
</html>