<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Work Manager</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --navy: #001f3f;
            --light-navy: #003366;
            --grey: #e0e0e0;
            --dark-grey: #a0a0a0;
            --white: #ffffff;
            --glass-white: rgba(255, 255, 255, 0.85);
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
        
        body::before {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(224, 224, 224, 0.2) 0%, rgba(255, 255, 255, 0.3) 100%);
            z-index: -1;
        }
        
        #login-container {
            width: 80%;
            max-width: 500px;
            padding: 40px;
            background: rgba(255, 255, 255, 0.2); /* More transparent background */
    border-radius: 20px;
    box-shadow: 0 8px 32px rgba(0, 31, 63, 0.3);
    backdrop-filter: blur(12px); /* Increased blur for better glass effect */
    -webkit-backdrop-filter: blur(12px);
            text-align: center;
        }
        
        .login-title {
            color: var(--navy);
            font-size: 2.5rem;
            margin-bottom: 40px;
            font-weight: 600;
            position: relative;
        }
        
        .login-title::after {
            content: "";
            position: absolute;
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: var(--light-navy);
            border-radius: 2px;
        }
        
        .form-table {
            width: 80%;
            border-collapse: separate;
            border-spacing: 0 20px;
            margin-bottom: 30px;
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
        
        input[type="email"],
        input[type="password"] {
            padding: 12px 20px;
            border-radius: 10px;
            border: 1px solid var(--dark-grey);
            background: var(--glass-white);
            color: var(--navy);
            width: 100%;
            font-size: 1rem;
            transition: all 0.3s ease;
        }
        
        input:focus {
            outline: none;
            border-color: var(--navy);
            box-shadow: 0 0 0 3px rgba(0, 31, 63, 0.1);
        }
        
        input:hover {
            border-color: var(--light-navy);
        }
        
        .btn-login {
            color: white;
            background-color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            padding: 14px 30px;
            border-radius: 10px;
            transition: all 0.3s ease;
            border: none;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            cursor: pointer;
            font-size: 1.1rem;
            margin-top: 10px;
            width: 100%;
            max-width: 200px;
        }
        
        .btn-login:hover {
            background: var(--light-navy);
            transform: translateY(-3px);
            box-shadow: 0 8px 15px rgba(0, 31, 63, 0.2);
        }
        
        .login-links {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 15px;
            margin-top: 30px;
        }
        
        .login-links a {
            color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            padding: 8px 15px;
            border-radius: 8px;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
            background: rgba(255, 255, 255, 0.6);
        }
        
        .login-links a:hover {
            background: var(--navy);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 31, 63, 0.15);
        }
        
        @media (max-width: 768px) {
            #login-container {
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
            
            .login-title {
                font-size: 2rem;
            }
            
            .login-links {
                flex-direction: column;
                align-items: center;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <div id="login-container">
        <h1 class="login-title">Welcome Back</h1>
        
        <form action="login" method="post">
            <table class="form-table">
                <tr>
                    <td>Email ID</td>
                    <td><input type="email" name="email" placeholder="eg: john@outlook.com" required></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password" required></td>
                </tr>
            </table>
            
            <button type="submit" class="btn-login">
                <i class="fas fa-sign-in-alt"></i> Login
            </button>
        </form>
        
        <div class="login-links">
            <a href="signup"><i class="fas fa-user-plus"></i> New here?</a>
            <a href="forgotPW"><i class="fas fa-key"></i> Forgot password?</a>
            <a href="./"><i class="fas fa-home"></i> Home</a>
        </div>
    </div>
</body>
</html>