<%@ page isELIgnored="false" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Work Manager</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
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
            justify-content: space-between;
            align-items: center;
            background-color: var(--glass-white);
            backdrop-filter: blur(10px);
            -webkit-backdrop-filter: blur(10px);
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.1);
            position: fixed;
            top: 0;
            z-index: 100;
        }
        
        #content {
            margin-top: 150px;
            width: 80%;
            max-width: 800px;
            padding: 40px;
            background: var(--glass-white);
            border-radius: 20px;
            box-shadow: 0 8px 32px rgba(0, 31, 63, 0.2);
            backdrop-filter: blur(8px);
            -webkit-backdrop-filter: blur(8px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            text-align: center;
        }
        
        h1 {
            color: var(--navy);
            font-size: 2.5rem;
            margin-bottom: 30px;
            font-weight: 600;
        }
        
        input[type="text"] {
            padding: 10px 15px;
            border-radius: 10px;
            border: 1px solid var(--dark-grey);
            background: var(--glass-white);
            color: var(--navy);
            margin: 10px 0;
            width: 70%;
            max-width: 400px;
            font-size: 1rem;
        }
        
        input[type="text"]:focus {
            outline: none;
            border-color: var(--navy);
            box-shadow: 0 0 0 2px rgba(0, 31, 63, 0.1);
        }
        
        label {
            display: block;
            color: var(--navy);
            font-weight: 500;
            margin-top: 15px;
        }
        
        button, input[type="submit"], #home {
            color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            padding: 10px 20px;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 10px;
            transition: all 0.3s ease;
            border: 1px solid rgba(0, 31, 63, 0.1);
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.05);
            cursor: pointer;
            margin: 10px 5px;
            font-size: 1rem;
        }
        
        button:hover, input[type="submit"]:hover {
            background: var(--navy);
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 31, 63, 0.15);
        }
        
        .moreTask {
            margin: 20px 0;
        }
        
        .task-container {
            margin-bottom: 15px;
        }
        
        .dashboard-link {
            color: var(--navy);
            text-decoration: none;
            font-weight: 500;
            margin-right: 30px;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .dashboard-link:hover {
            color: var(--light-navy);
        }
        
        @media (max-width: 768px) {
            #content {
                width: 90%;
                padding: 30px 20px;
                margin-top: 150px;
            }
            
            h1 {
                font-size: 2rem;
            }
            
            input[type="text"] {
                width: 90%;
            }
        }
    button:hover, input[type="submit"]:hover, a:hover, {
        background: var(--light-navy);
        color: white;
        transform: translateY(-2px);
        box-shadow: 0 6px 12px rgba(0, 31, 63, 0.25);
    }
    
    .dashboard-link:hover {
        color: white;
        background: var(--navy);
        padding: 8px 15px;
        border-radius: 10px;
        transform: translateY(-2px);
        box-shadow: 0 4px 8px rgba(0, 31, 63, 0.2);
    }
    
    input[type="text"]:hover {
        border-color: var(--light-navy);
        box-shadow: 0 0 0 3px rgba(0, 49, 98, 0.1);
    }
    #home:hover {
        border-color: var(--light-navy);
        box-shadow: 0 0 0 3px rgba(0, 49, 98, 0.1);
    }
    </style>
</head>
<body>
    <header>
        <img src="toDoAppLogo - Edited.png" height="50px" style="margin-left: 20px;">
        <a href="/sh" class="dashboard-link" >
		<i class="bi bi-person-circle"></i>Profile
        </a>
    </header>
    
    <div id="content">
        <h1>Add your target here</h1>
        <form action="addTarget" method="post">
            <label for="cat">Enter Category</label>     
            <input type="text" id="cat" name="category" placeholder="eg: Morning" required>
            
            <div class="moreTask">
                <label for="task1">Enter Task</label>     
                <input type="text" id="task1" name="tasks" placeholder="eg: Walking" required>
            </div>
            
            <button type="button" onclick="addTaskField()">
                <i class="fas fa-plus"></i> Add Task
            </button>
            <br>
            <input type="submit" value="Save">
        </form>
        <br>
        <a href="./" id="home"><i class="fas fa-home" ></i> Home</a> 
    </div>
    
    <footer style="
        width: 100%;
        padding: 20px 0;
        margin-top: 50px;
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
        let taskCount = 1;
        
        function addTaskField() {
            taskCount++;
            const moreTaskDiv = document.querySelector('.moreTask');
            
            const newTaskContainer = document.createElement('div');
            newTaskContainer.className = 'task-container';
            
            const newLabel = document.createElement('label');
            newLabel.setAttribute('for', 'task' + taskCount);
            newLabel.textContent = 'Enter Task';
            
            const newInput = document.createElement('input');
            newInput.type = 'text';
            newInput.id = 'task' + taskCount;
            newInput.name = 'tasks';
            newInput.placeholder = 'eg: Walking';
            newInput.required = true;
            
            newTaskContainer.appendChild(newLabel);
            newTaskContainer.appendChild(newInput);
            moreTaskDiv.appendChild(newTaskContainer);
            
            // Smooth scroll to the newly added task
            newInput.scrollIntoView({ behavior: 'smooth', block: 'nearest' });
            newInput.focus();
        }
    </script>
</body>
</html>