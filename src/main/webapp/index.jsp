<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FreshMart - Grocery Dashboard</title>
    <style>
        :root {
            --primary-color: #2e7d32;
            --primary-light: #4CAF50;
            --primary-dark: #1b5e20;
            --accent-color: #8bc34a;
            --text-light: #f5f5f5;
            --text-dark: #333;
            --bg-light: #f9f9f9;
            --card-shadow: 0 4px 12px rgba(0,0,0,0.08);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', sans-serif;
            background-color: var(--bg-light);
            color: var(--text-dark);
            line-height: 1.6;
        }

        /* Header Styles */
        .app-header {
            background: linear-gradient(135deg, var(--primary-dark), var(--primary-color));
            color: white;
            padding: 1rem 2rem;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-container {
            max-width: 1200px;
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: 700;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .logo::before {
            content: "🛒";
            font-size: 1.5rem;
        }

        .nav-menu ul {
            display: flex;
            list-style: none;
            gap: 1.5rem;
        }

        .nav-menu a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            padding: 0.5rem 0;
            position: relative;
            transition: all 0.3s ease;
        }

        .nav-menu a:hover {
            opacity: 0.9;
        }

        .nav-menu a::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 2px;
            background: white;
            transition: width 0.3s ease;
        }

        .nav-menu a:hover::after {
            width: 100%;
        }

        /* Main Content */
        .main-container {
            max-width: 1200px;
            margin: 2rem auto;
            padding: 0 2rem;
        }

        .page-title {
            color: var(--primary-dark);
            margin-bottom: 2rem;
            text-align: center;
            font-size: 2.2rem;
            position: relative;
        }

        .page-title::after {
            content: '';
            display: block;
            width: 80px;
            height: 4px;
            background: var(--accent-color);
            margin: 0.5rem auto 0;
            border-radius: 2px;
        }

        /* Action Cards */
        .action-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 2rem;
            margin-top: 3rem;
        }

        .action-card {
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: var(--card-shadow);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }

        .action-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 20px rgba(0,0,0,0.12);
        }

        .card-icon {
            background: linear-gradient(135deg, var(--primary-light), var(--primary-color));
            padding: 1.5rem;
            font-size: 2.5rem;
            color: white;
        }

        .card-content {
            padding: 1.5rem;
        }

        .card-title {
            font-size: 1.3rem;
            margin-bottom: 0.5rem;
            color: var(--primary-dark);
        }

        .card-desc {
            color: #666;
            margin-bottom: 1.5rem;
            font-size: 0.95rem;
        }

        .card-btn {
            display: inline-block;
            background: var(--primary-light);
            color: white;
            text-decoration: none;
            padding: 0.6rem 1.5rem;
            border-radius: 30px;
            font-weight: 500;
            transition: background 0.3s ease;
        }

        .card-btn:hover {
            background: var(--primary-dark);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                gap: 1rem;
            }

            .nav-menu ul {
                gap: 1rem;
            }

            .action-grid {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

<header class="app-header">
    <div class="header-container">
        <div class="logo">FreshMart</div>
        <nav class="nav-menu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
            </ul>
        </nav>
    </div>
</header>

<main class="main-container">
    <h1 class="page-title">FreshMart Dashboard</h1>
    
    <div class="action-grid">
        <div class="action-card">
            <div class="card-icon">➕</div>
            <div class="card-content">
                <h3 class="card-title">Add Product</h3>
                <p class="card-desc">Add new grocery items to your inventory</p>
                <a href="add" class="card-btn">Go to Add</a>
            </div>
        </div>
        
        <div class="action-card">
            <div class="card-icon">👀</div>
            <div class="card-content">
                <h3 class="card-title">View Products</h3>
                <p class="card-desc">Browse all available products in stock</p>
                <a href="view" class="card-btn">View Inventory</a>
            </div>
        </div>
        
        <div class="action-card">
            <div class="card-icon">🔍</div>
            <div class="card-content">
                <h3 class="card-title">Search Products</h3>
                <p class="card-desc">Find specific items in your inventory</p>
                <a href="search" class="card-btn">Search Now</a>
            </div>
        </div>
        
        <div class="action-card">
            <div class="card-icon">🛒</div>
            <div class="card-content">
                <h3 class="card-title">Purchase Products</h3>
                <p class="card-desc">Process customer orders and purchases</p>
                <a href="purchaseProduct" class="card-btn">Make Purchase</a>
            </div>
        </div>
    </div>
</main>

</body>
</html>
