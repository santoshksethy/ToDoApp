<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reset Password - Work Manager</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --navy: #001f3f;
            --light-navy: #003366;
            --white: #ffffff;
        }
        
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            background: url('https://images.unsplash.com/photo-1497366754035-f200968a6e72?ixlib=rb-4.0.3') no-repeat center center fixed;
            background-size: cover;
            position: relative;
        }
        
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(0, 31, 63, 0.2) 0%, rgba(0, 49, 98, 0.3) 100%);
            z-index: -1;
        }
        
        #forgot-container {
            width: 80%;
            max-width: 500px;
            padding: 40px;
            background: rgba(255, 255, 255, 0.15);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 31, 63, 0.3);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            text-align: center;
        }
        
        .forgot-title {
            color: var(--white);
            font-size: 2rem;
            margin-bottom: 30px;
            font-weight: 600;
            text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        
        .forgot-form {
            display: flex;
            flex-direction: column;
            align-items: center;
            gap: 20px;
        }
        
        .forgot-input {
            padding: 14px 20px;
            border-radius: 10px;
            border: 1px solid rgba(255, 255, 255, 0.5);
            background: rgba(255, 255, 255, 0.2);
            color: var(--white);
            width: 100%;
            max-width: 400px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }
        
        .forgot-input::placeholder {
            color: rgba(255, 255, 255, 0.7);
        }
        
        .forgot-input:focus {
            outline: none;
            background: rgba(255, 255, 255, 0.3);
            border-color: var(--white);
            box-shadow: 0 0 0 3px rgba(255, 255, 255, 0.2);
        }
        
        .btn-submit {
            background: rgba(255, 255, 255, 0.2);
            color: var(--white);
            border: 1px solid rgba(255, 255, 255, 0.4);
            padding: 14px 30px;
            border-radius: 10px;
            font-size: 1rem;
            font-weight: 500;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: 10px;
            backdrop-filter: blur(5px);
        }
        
        .btn-submit:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }
        
        .home-link {
            display: inline-block;
            margin-top: 30px;
            color: var(--white);
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 8px;
            background: rgba(255, 255, 255, 0.15);
            transition: all 0.3s ease;
        }
        
        .home-link:hover {
            background: rgba(255, 255, 255, 0.3);
            text-decoration: none;
        }
        
        @media (max-width: 768px) {
            #forgot-container {
                width: 90%;
                padding: 30px 20px;
            }
            
            .forgot-title {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div id="forgot-container">
        <h1 class="forgot-title">Reset Your Password</h1>
        
        <form action="forgot" method="post" class="forgot-form">
            <input type="email" name="email" class="forgot-input" placeholder="Enter your registered email (eg: john@outlook.in)" required>
            
            <button type="submit" class="btn-submit">
                <i class="fas fa-paper-plane"></i> Send OTP
            </button>
        </form>
        
        <a href="./" class="home-link">
            <i class="fas fa-arrow-left"></i> Back to Home
        </a>
    </div>
</body>
</html>