<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up - Mentorship Platform</title>
    <style>
        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        /* Full page background */
        body {
            background: linear-gradient(135deg, rgba(102, 205, 170, 0.9), rgba(255, 255, 255, 0.9)), url('https://your-image-url.com/background.jpg');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            color: #333;
        }

        /* Centered signup container */
        .signup-container {
            background-color: rgba(255, 255, 255, 0.95);
            width: 100%;
            max-width: 400px;
            padding: 25px 20px;
            border-radius: 10px;
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            animation: fadeIn 0.6s ease;
        }

        /* Fade-in animation */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Title */
        .signup-container h2 {
            margin-bottom: 20px;
            color: #333;
            font-weight: bold;
        }

        /* Input fields */
        .signup-container input {
            width: 100%;
            padding: 12px;
            margin: 8px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            transition: border-color 0.3s;
        }

        .signup-container input:focus {
            border-color: #66cdaa;
            outline: none;
        }

        /* Signup button */
        .signup-container button {
            width: 100%;
            padding: 12px;
            background-color: #66cdaa;
            color: white;
            font-size: 1em;
            font-weight: bold;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .signup-container button:hover {
            background-color: #5cbf9d;
        }

        /* Link to login */
        .signup-container p {
            margin-top: 15px;
            font-size: 0.9em;
            color: #555;
        }

        .signup-container a {
            color: #66cdaa;
            text-decoration: none;
            transition: color 0.3s;
        }

        .signup-container a:hover {
            color: #5cbf9d;
            text-decoration: underline;
        }

        /* Responsive design */
        @media (max-width: 400px) {
            .signup-container {
                padding: 15px;
                border-radius: 8px;
            }

            .signup-container h2 {
                font-size: 1.5em;
            }
        }
    </style>
</head>
<body>
    <div class="signup-container">
        <h2>Create an Account</h2>
        <form action="register" method="post">
            <input type="text" name="name" placeholder="Full Name" required>
            <input type="email" name="email" placeholder="Email Address" required>
            <input type="password" name="password" placeholder="Password" required>
            <button type="submit">Sign Up</button>
        </form>
        <p>Already have an account? <a href="login.jsp">Log in here</a>.</p>
    </div>
</body>
</html>
