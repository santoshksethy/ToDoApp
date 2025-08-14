<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Work Manager</title>
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
            background: linear-gradient(135deg, var(--grey) 0%, var(--white) 100%);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            background-attachment: fixed;
        }
        
        header {
            width: 100%;
            padding: 20px 0;
            display: flex;
            justify-content: flex-end;
            background-color: var(--glass-white);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            z-index: 100;
        }
        
        #content {
            margin-top: 200px;
            width: 80%;
            max-width: 800px;
            padding: 40px;
            background: var(--glass-white);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 31, 63, 0.2);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            text-align:center;
        }
        
        h1 {
            color: var(--navy);
            font-size: 2.5rem;
            margin-bottom: 30px;
            text-align: center;
            font-weight: 600;
        }
        
        span {
            display: block;
            margin: 25px 0;
            font-size: 1.1rem;
            color: var(--light-navy);
        }
        
        a {
            color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            padding: 10px 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            transition: all 0.3s ease;
            border: 1px solid rgba(0, 31, 63, 0.1);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
        }
        
        a:hover {
            background: var(--navy);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 31, 63, 0.15);
        }
        
        select {
            padding: 8px 15px;
            border-radius: 10px;
            border: 1px solid var(--dark-grey);
            background: var(--glass-white);
            color: var(--navy);
            margin-right: 30px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        select:hover {
            border-color: var(--navy);
            box-shadow: 0 0 0 2px rgba(0, 31, 63, 0.1);
        }
        
        label {
            margin-right: 10px;
            color: var(--navy);
            font-weight: 500;
        }
        
        @media (max-width: 768px) {
            #content {
                width: 90%;
                padding: 30px 20px;
            }
            
            h1 {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <header>
    <img src="toDoAppLogo - Edited.png" height="50px" style="margin-right:50%">
      	<a href="profileVisit">profile</a>
        <label for="language">🌐 Choose Language:</label>
        <select id="language" onchange="changeLanguage(this.value)">
            <option value="en" selected>English</option>
            <option value="hi">हिन्दी (Hindi)</option>
            <option value="fr">Français (French)</option>
            <option value="es">Español (Spanish)</option>
            <option value="de">Deutsch (German)</option>
            <option value="zh">中文 (Chinese)</option>
            <option value="ar">العربية (Arabic)</option>
        </select>
       
    </header>
    
    <div id="content">
        <h1>Manage your profile here</h1>
        <p>edit options coming soon,<br>thanks for your patience</p>
        <a href="./">home</a>
        </div>
        
        <footer style="
    width: 100%;
    padding: 20px 0;
    margin-top: 290px;
    background-color: rgba(0, 31, 63, 0.9);
    color: white;
    text-align: center;
    backdrop-filter: blur(5px);
    -webkit-backdrop-filter: blur(5px);
    border-top: 1px solid rgba(255, 255, 255, 0.2);
">
    <div style="max-width:800px; margin: 0 auto;">
        <p style="margin: 5px 0; font-size: 0.9rem;">
            © 2025 Work Manager | All Rights Reserved
        </p>
        <p style="margin: 5px 0; font-size: 0.8rem; color: rgba(255, 255, 255, 0.7);">
            Designed with ❤️ for productive teams
        </p>
    </div>
</footer>

    <script>
        function changeLanguage(lang) {
            // Language change functionality would go here
            console.log("Language changed to: " + lang);
        }
    </script>
</body>
</html>