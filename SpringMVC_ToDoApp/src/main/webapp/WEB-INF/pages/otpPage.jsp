<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Verify OTP</title>
<style>
    body { font-family: Arial, sans-serif; background: #f5f7fa; display: flex; justify-content: center; align-items: center; height: 100vh; }
    .container { background: #fff; padding: 30px; border-radius: 15px; box-shadow: 0 4px 10px rgba(0,0,0,0.1); text-align: center; width: 350px; }
    input[type="text"] { padding: 10px; border: 1px solid #ccc; border-radius: 8px; width: 100%; margin-bottom: 20px; }
    input[type="submit"] { background: #0a3d62; color: white; padding: 10px 20px; border: none; border-radius: 8px; cursor: pointer; }
    input[type="submit"]:hover { background: #0652DD; }
</style>
</head>
<body>
    <div class="container">
        <h2>Enter the OTP</h2>
        <form action="verifyOTP" method="post">
            <input type="text" name="otp" placeholder="eg: 7589" required>
            <input type="submit" value="Verify">
        </form>
        <a href="./">Home</a>
    </div>
    
</body>
</html>
