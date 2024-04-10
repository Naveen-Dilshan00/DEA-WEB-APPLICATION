<%-- 
    Document   : login1
    Created on : Apr 10, 2024, 10:33:07 PM
    Author     : Senur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign In</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .container {
                display: flex;
            }

            .left-column {
                flex: 1;
                padding: 20px;
            }

            .left-column img {
                width: 100%;
                max-width: 300px;
                height: auto;
            }

            .right-column {
                flex: 1;
                padding: 20px;
                background-color: #f9f9f9;
            }

            .right-column h1 {
                font-size: 24px;
            }

            .form-group {
                margin-bottom: 15px;
            }

            .form-group label {
                display: block;
                margin-bottom: 5px;
            }

            .form-group input[type="email"],
            .form-group input[type="password"] {
                width: 75%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .form-group input[type="checkbox"] {
                margin-right: 5px;
            }

            .signup-options p {
                margin-bottom: 10px;
            }

            .signup-options button {
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                background-color: #007bff;
                color: #fff;
                cursor: pointer;
                margin-right: 10px;
            }

            .social-logos img {
                width: 30px;
                margin-right: 10px;
                cursor: pointer;
            }

            .row {
                display: flex;
                justify-content: space-between;
            }

            .login-buttons {
                display: flex;
            }

            .column {
                flex: 1;
                margin-right: 10px; /* Add spacing between buttons */
            }

            .user-login-button,
            .admin-login-button {
                background-color: #007bff;
                color: #fff;
                padding: 10px 20px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
            }

            .user-login-button:hover,
            .admin-login-button:hover {
                background-color: #0056b3; /* Change button color on hover */
            }


        </style>
    </head>
    <body>

        <div class="container">
            <div class="left-column">
                <h2>Welcome Back</h2>
                <p>Please enter your login details to sign in.</p>
                <img src="" alt="Welcome Image">
            </div>
            <div class="right-column">
                <h1>Sign In</h1>
                <form>
                    <div class="form-group">
                        <input type="email" id="email" name="email" placeholder="Email Address" required>
                    </div>
                    <div class="form-group">
                        <input type="password" id="password" name="password" placeholder="Password" required >
                    </div>
                    <div class="form-group row">
                        <div class="column">
                            <input type="checkbox" id="keepSignedIn" name="keepSignedIn">
                            <label for="keepSignedIn">Keep me logged in</label>
                        </div>
                        <div class="column">
                            <a href="">Forgot Password?</a>
                        </div>
                    </div>

                    <div class="login-buttons">
                        <div class="column">
                            <button type="submit" class="user-login-button">User Login</button>
                        </div>
                        <div class="column">
                            <button type="submit" class="admin-login-button">Admin Login</button>
                        </div>
                    </div>

                </form>
                <div class="options">
                    <p>Don't have an account? <a href="">Sign up</a></p> 
                    <p>Or continue with</p>
                    <div class="social-logos">
                        <img src="" alt="Google">
                        <img src="" alt="Facebook">
                        <img src="" alt="Apple">
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

