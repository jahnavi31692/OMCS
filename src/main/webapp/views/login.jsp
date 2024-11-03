<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login - Online Mentorship & Coaching Platform</title>
    <link rel="icon" href="<c:url value='/static/images/favicon.ico'/>">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #FFF6E3;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .login-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            width: 100%;
        }

        .social-login-button {
            width: 48%;
            color: #555;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            text-align: center;
            transition: background-color 0.3s;
        }

        .social-login-button:hover {
            background-color: #f7f7f7;
        }
    </style>
</head>
<body>
    <main>
        <div class="login-container">
            <div class="text-center mb-3">
                <a href="<c:url value='/signup'/>" class="font-weight-bold text-success">Create an account</a>
            </div>
            
            <form action="<c:url value='/login'/>" method="post">
                <div class="form-group">
                    <label for="email">Email address</label>
                    <input type="email" id="email" name="email" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" class="form-control" required>
                </div>

                <div class="form-group form-check">
                    <input type="checkbox" class="form-check-input" id="remember-me" name="remember-me">
                    <label class="form-check-label" for="remember-me">Remember me</label>
                </div>

                <div class="text-right mb-3">
                    <a href="<c:url value='/forgot-password'/>" class="text-success">Forgot your password?</a>
                </div>

                <!-- reCAPTCHA widget -->
                <div class="g-recaptcha" data-sitekey="6Lf_EnAqAAAAAJoiHTldI8oRQF_ZhDB5-Ng_cu-z"></div>

                <button type="submit" class="btn btn-success btn-block mt-3">Sign in</button>
            </form>

            <div class="mt-4 text-center text-muted">Or continue with</div>
            <div class="d-flex justify-content-between mt-3">
    <a href="https://www.google.com" target="_blank" class="social-login-button">Google</a>
    <a href="https://www.github.com" target="_blank" class="social-login-button">GitHub</a>
</div>

        </div>
    </main>

    <!-- Include reCAPTCHA API script -->
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
</body>
</html>
