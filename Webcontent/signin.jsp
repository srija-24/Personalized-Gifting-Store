
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>GiftsGalore - Sign In</title>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #f0f0f0;
        }
        .container {
            display: flex;
            width: 800px;
            height: 500px;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
        }
        .left-panel {
            flex: 1;
            background-color: #a8d8d0;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: white;
            text-align: center;
        }
        .right-panel {
            flex: 1;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        h1, h2 {
            margin-bottom: 20px;
        }
        input {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #666;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .google-signin {
            margin-top: 15px;
            text-align: center;
        }
        .create-account {
            margin-top: 15px;
            text-align: center;
        }
        .bird-image {
            width: 150px;
            height: 150px;
            background-color: #f0a868;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .error-message {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="left-panel">
            <div class="bird-image"></div>
            <h2>GiftsGalore</h2>
            <p></p>
        </div>
        <div class="right-panel">
            <h1>GiftsGalore</h1>
            <h2>Welcome to GiftsGalore</h2>
            <form action="SignInServlet" method="post">
                <input type="email" id="email" name="email" placeholder="User's name or Email" required>
                <input type="password" id="password" name="password" placeholder="Password" required>
                <button type="submit">Sign in</button>
            </form>
 
            <div class="create-account">
                <a href="signup.jsp">New to GiftsGalore? Create Account</a>
            </div>
            <div style="color:red;">
		        <% if (request.getAttribute("errorMessage") != null) { %>
		            <%= request.getAttribute("errorMessage") %>
		        <% } %>
		    </div>
		            
            <div class="error-message">
                
            </div>
        </div>
    </div>
</body>
</html>