<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Bond Strength</title>
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
            background-image: url('https://example.com/background-image.jpg');
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

        .form-group {
            margin: 15px 0;
        }

        .form-group input {
            padding: 10px;
            width: 250px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            transition: border-color 0.3s;
        }

        .form-group input:focus {
            border-color: #ffcc00;
            outline: none;
        }

        .error-message {
            color: #ff6666;
            font-size: 14px;
            margin-top: 10px;
            display: none;
        }

        .bond-wheel {
            margin: 30px auto;
            width: 200px;
            height: 200px;
            border: 8px solid #ffcc00;
            border-radius: 50%;
            position: relative;
            background: url('https://example.com/wheel-image.png') no-repeat center center;
            background-size: cover;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: transform 2s ease-in-out;
        }

        .bond-wheel span {
            font-size: 48px;
            font-weight: bold;
            color: white;
        }

        .spin-button {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px;
            background-color: #ffcc00;
            color: black;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.2s;
        }

        .spin-button:hover {
            background-color: #e6b800;
            transform: scale(1.05);
        }

        @keyframes spin {
            from {
                transform: rotate(0deg);
            }
            to {
                transform: rotate(360deg);
            }
        }

        .bond-wheel.spin {
            animation: spin 2s ease-in-out;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Check Bond Strength</h1>
        <form id="bondForm">
            <div class="form-group">
                <input type="text" id="hisName" name="hisName" placeholder="Enter His Name">
            </div>
            <div class="form-group">
                <input type="text" id="herName" name="herName" placeholder="Enter Her Name">
            </div>
            <p id="errorMessage" class="error-message">Please enter both names.</p>
            <div class="bond-wheel" id="bondWheel">
                <span>❤️</span>
            </div>
            <button type="button" class="spin-button" onclick="validateAndSpin()">Spin</button>
        </form>
    </div>

    <script>
        function validateAndSpin() {
            const hisName = document.getElementById('hisName').value.trim();
            const herName = document.getElementById('herName').value.trim();
            const errorMessage = document.getElementById('errorMessage');
            const bondWheel = document.getElementById('bondWheel');

            if (!hisName || !herName) {
                errorMessage.style.display = 'block';
                return;
            }

            // Hide the error message if names are valid
            errorMessage.style.display = 'none';

            // Add the spinning animation
            bondWheel.classList.add('spin');

            // Wait for the animation to complete before redirecting
            setTimeout(() => {
                bondWheel.classList.remove('spin');
                window.location.href = 'Bondchecker';
            }, 2000);
        }
    </script>
</body>
</html>
