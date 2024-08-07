<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gandhinagar Ganesh Usthava Samethi</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8b400;
        }
        .header {
            background-color: #ffcc00;
            padding: 10px 0;
            text-align: center;
            position: relative;
        }
        .header img {
            width: 50px;
            hight: 50px;
            position: absolute;
            left: 10px;
            top: 10px;
        }
        .header img.right {
            right: 10px;
            left: auto;
        }
        .header h1 {
            color: #b83b00;
            font-size: 24px;
            margin: 0;
        }
        .header p {
            color: green;
            font-size: 16px;
            margin: 0;
        }
        .nav {
            background-color: #7a4a00;
            overflow: hidden;
        }
        .nav a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .nav a:hover {
            background-color: #ddd;
            color: black;
        }
        .slider {
            position: relative;
           width: 30%;
            margin: auto;
            height: 30px;
        }
        .slides img {
            width: 100%;
            height: auto;
            display: none;
        }
        .slides img.active {
            display: block;
        }
        .footer {
            background-color: #ffcc00;
            color: #b83b00;
            text-align: center;
            padding: 10px;
            position: absolute;
            width: 100%;
            bottom: 0;
        }
        @media (max-width: 768px) {
            .header h1 {
                font-size: 20px;
            }
            .header p {
                font-size: 14px;
            }
        }
    </style>
</head>
<body>
    <div class="header">
        
        
         <img src="${pageContext.request.contextPath}/images/ganesh.jpg" alt="Government of Telangana Logo">
        
        <img src="${pageContext.request.contextPath}/images/ganesh.jpg" alt="" class="right">
        <h1>గణేష్ ఉస్తవ సమితి</h1>
        <p>గాంధీనగర్, సుల్తానాబాద్.</p>
    </div>
    <div class="nav">
        <a href="#">Home</a>
        <a href="#">About Us</a>
        <a href="#">Sevas & Timings</a>
        <a href="#">Images</a>
        <a href="#">Videos</a>
        <a href="#">Donations</a>
        <a href="#">Nimarjanam Special</a>
        <a href="#">Others</a>
        <a href="#">Contact Us</a>
        <a th:href="@{/login}" style="float: right;">Login</a>
    </div>
    <div class="slider">
        <div class="slides">
            <img src="${pageContext.request.contextPath}/images/ganesh.jpg" class="active" alt="Sri Raja Rajeshwara Swamy">
             <img src="${pageContext.request.contextPath}/images/images.jpeg" alt="Sri Raja Rajeshwara Swamy">
            <img src="<c:url value='/images/logo.png'/>" alt="Sri Lakshmi Ganapathi Swamy"> 
        </div>
    </div>
    <div class="footer">
        <p>గణేష్ ఉస్తవ సమితి, గాంధీనగర్,సుల్తానాబాద్.</p>
    </div>
    <script>
        let currentSlide = 0;
        const slides = document.querySelectorAll('.slides img');
        setInterval(() => {
            slides[currentSlide].classList.remove('active');
            currentSlide = (currentSlide + 1) % slides.length;
            slides[currentSlide].classList.add('active');
        }, 3000);
    </script>
</body>
</html>
