<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9b233;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 0 auto;
            padding: 20px;
        }

        header {
            background-color: #f9b233;
            text-align: center;
            padding: 10px 0;
            border-bottom: 5px solid #a73c09;
        }

        header img {
            vertical-align: middle;
        }

        header h1 {
            display: inline;
            font-size: 24px;
            color: #004080;
        }

        nav {
            background-color: #a73c09;
            overflow: hidden;
        }

        nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        nav a:hover {
            background-color: #004080;
            color: white;
        }

        .login-box {
            background-color: white;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ddd;
            max-width: 400px;
            text-align: center;
        }

        .login-box input[type="text"], .login-box input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        .login-box input[type="submit"] {
            background-color: #d93025;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }

        .login-box input[type="submit"]:hover {
            background-color: #c62828;
        }

        .captcha {
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            
            <h1>గణేష్ ఉస్తవ సమితి, గాంధీనగర్,సుల్తానాబాద్.</h1>
        </header>
        
        <div class="login-box">
            <h2>Sign in to Continue</h2>
            <form action="<%= request.getContextPath() %>/login" method="post">
                <input type="text" name="username" placeholder="Enter your Username...">
                <input type="password" name="password" placeholder="Enter your Password...">
                <div class="captcha">
                    <img src="path/to/captcha.png" alt="Captcha Image">
                    <input type="text" name="captcha" placeholder="Enter Captcha...">
                </div>
                <input type="submit" value="Login Now">
            </form>
        </div>
    </div>
</body>
</html>
