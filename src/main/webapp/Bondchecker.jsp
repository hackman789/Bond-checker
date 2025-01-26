<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bond Strength Result</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url('https://example.com/result-background.jpg');
            background-size: cover;
            background-position: center;
            color: #ffffff;
        }

        .container {
            background-color: rgba(0, 0, 0, 0.8);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0px 0px 25px rgba(0, 0, 0, 0.7);
            text-align: center;
            width: 90%;
            max-width: 600px;
        }

        h1 {
            color: #ffcc00;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            margin-bottom: 20px;
        }

        .bond-wheel {
            margin: 30px auto;
            width: 300px;
            height: 300px;
            border: 10px solid #ffcc00;
            border-radius: 50%;
            position: relative;
            background: url('https://example.com/wheel-image.png') no-repeat center center;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: transform 2s cubic-bezier(0.25, 0.1, 0.25, 1);
        }

        .bond-wheel span {
            font-size: 48px;
            font-weight: bold;
            color: white;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.7);
        }

        .spin-button, .back-button {
            margin-top: 20px;
            padding: 15px 30px;
            font-size: 18px;
            background-color: #ffcc00;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
            display: inline-block;
        }

        .spin-button:hover, .back-button:hover {
            background-color: #e6b800;
            transform: scale(1.05);
        }

        .result-box {
            margin-top: 30px;
            padding: 20px;
            background-color: rgba(255, 204, 0, 0.9);
            color: black;
            font-size: 22px;
            font-weight: bold;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5);
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bond Strength Result</h1>
        <div class="bond-wheel" id="bondWheel">
            <span>❤️</span>
        </div>

        <button class="spin-button" onclick="spinWheel()">Spin to Check</button>
        <a href="/" class="back-button">Back to Home</a>

        <div class="result-box" id="resultBox">
            Your bond strength is: <span id="bondStrength"></span>
        </div>
    </div>

    <script>
        function spinWheel() {
            const bondWheel = document.getElementById('bondWheel');
            const resultBox = document.getElementById('resultBox');
            const bondStrength = document.getElementById('bondStrength');

            if (bondWheel) {
                bondWheel.style.transform = `rotate(${Math.floor(Math.random() * 360 + 720)}deg)`;
                setTimeout(() => {
                    bondStrength.textContent = `${Math.floor(Math.random() * 11)}/10 bond!`;
                    resultBox.style.display = 'block';
                }, 2000);
            }
        }
    </script>
</body>
</html>
