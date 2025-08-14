<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Sign Up - Work Manager</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --navy: #001f3f;
            --light-navy: #003366;
            --grey: #e0e0e0;
            --dark-grey: #a0a0a0;
            --white: #ffffff;
            --glass-white: rgba(255, 255, 255, 0.85);
            --red: #ff4444;
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
            background: url('https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?q=80&w=2072&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D') no-repeat center center fixed;
            background-size: cover;
            position: relative;
        }
        
        #signup-form {
            width: 80%;
            max-width: 600px;
            padding: 40px;
            background: rgba(255, 255, 255, 0.2); /* More transparent background */
    border-radius: 20px;
    box-shadow: 0 8px 32px rgba(0, 31, 63, 0.3);
    backdrop-filter: blur(12px); /* Increased blur for better glass effect */
    -webkit-backdrop-filter: blur(12px);
        }
        
        .form-title {
            color: var(--navy);
            font-size: 2.2rem;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 600;
        }
        
        .form-table {
        
            width: 100%;
            border-collapse: separate;
            border-spacing: 0 15px;
            
        }
        
        .form-table td {
            padding: 8px 0;
        }
        
        .form-table td:first-child {
            font-weight: 500;
            color: var(--navy);
            width: 40%;
            padding-right: 15px;
            text-align: right;
        }
        
        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 12px 15px;
            border-radius: 10px;
            border: 1px solid var(--dark-grey);
            background: var(--glass-white);
            color: var(--navy);
            width: 80%;
            font-size: 1rem;
            transition: all 0.3s ease;

        }
        
        input:focus {
            outline: none;
            border-color: var(--navy);
            box-shadow: 0 0 0 2px rgba(0, 31, 63, 0.1);
        }
        
        input:hover {
            border-color: var(--light-navy);
        }
        
        .required-marker 
        {
        	
            color: var(--red);
        }
        
        .form-actions {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
            
        }
        
        .btn {
            color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            padding: 12px 25px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            transition: all 0.3s ease;
            border: 1px solid rgba(0, 31, 63, 0.1);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            font-size: 1rem;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }
        
        .btn-submit {
            background-color: var(--navy);
            color: white;
        }
        
        .btn:hover {
            background: var(--light-navy);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 31, 63, 0.15);
        }
        
        .links {
            text-align: center;
            margin-top: 25px;
        }
        
        .links a {
            color: var(--navy);
            text-decoration: none;
            margin: 0 10px;
            font-weight: 500;
            transition: all 0.2s ease;
        }
        
        .links a:hover {
            color: var(--light-navy);
            text-decoration: underline;
        }
        
        @media (max-width: 768px) {
            #signup-form {
           
                width: 90%;
                padding: 30px 20px;
            }
            
            .form-table td:first-child {
                text-align: left;
                width: 100%;
                display: block;
                padding-right: 0;
            }
            
            .form-table td {
                display: block;
                width: 100%;
                padding: 5px 0;
            }
            
            .form-title {
                font-size: 1.8rem;
            }
        }
    </style>
</head>
<body>
    <div id="signup-form">
        <h1 class="form-title">Create Your Account</h1>
        <form action="signup" method="post">
            <table class="form-table">
                <tr>
                    <td>Enter first name<span class="required-marker">*</span></td>
                    <td><input type="text" name="firstName" placeholder="eg: Krishna" required></td>
                </tr>
                <tr>
                    <td>Enter middle name</td>
                    <td><input type="text" name="middleName" placeholder="eg: Mohan"></td>
                </tr>
                <tr>
                    <td>Enter your last name<span class="required-marker">*</span></td>
                    <td><input type="text" name="lastName" placeholder="eg: Singh" required></td>
                </tr>
                <tr>
                    <td>Enter email<span class="required-marker">*</span></td>
                    <td><input type="email" name="emailId" placeholder="eg: john@gmail.com" required></td>
                </tr>
                <tr>
                    <td>Enter a password<span class="required-marker">*</span></td>
                    <td><input type="password" name="password" required></td>
                </tr>
                <tr>
                    <td>Re-enter password<span class="required-marker">*</span></td>
                    <td><input type="password" name="confirmPassword" required></td>
                </tr>
            </table>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-submit">
                    <i class="fas fa-arrow-right"></i> Next
                </button>
            </div>
        </form>
        
        <div class="links">
            <a href="login"><i class="fas fa-sign-in-alt"></i> Login</a>
            <a href="./"><i class="fas fa-home"></i> Back to Home</a>
        </div>
    </div>
</body>
</html>