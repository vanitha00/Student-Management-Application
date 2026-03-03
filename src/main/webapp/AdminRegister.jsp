<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Registration - Student Management System</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #667eea, #764ba2);
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .register-container {
        background: #ffffff;
        width: 420px;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 15px 30px rgba(0,0,0,0.25);
    }

    .register-container h2 {
        text-align: center;
        margin-bottom: 10px;
        color: #333;
    }

    .register-container p {
        text-align: center;
        margin-bottom: 20px;
        color: #666;
        font-size: 14px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-top: 12px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"],
    input[type="tel"] {
        width: 100%;
        padding: 9px;
        margin-top: 6px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 14px;
    }

    .register-btn {
        margin-top: 22px;
        width: 100%;
        padding: 11px;
        background-color: #4CAF50;
        border: none;
        border-radius: 6px;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }

    .register-btn:hover {
        background-color: #43a047;
    }

    .login-link {
        text-align: center;
        margin-top: 18px;
        font-size: 14px;
    }

    .login-link a {
        color: #3f51b5;
        text-decoration: none;
        font-weight: bold;
    }

    .login-link a:hover {
        text-decoration: underline;
    }
</style>
</head>

<body>

<div class="register-container" >
    <h2>Admin Registration</h2>
    <p>Create your admin account</p>

    <form action="adminRegister" method="get">
        <label>Full Name *</label>
        <input type="text" placeholder="Enter full name" name="fname" required>

        <label>Email Address *</label>
        <input type="email" placeholder="Enter email" name="email" required>

        <label>Username *</label>
        <input type="text" placeholder="Choose username" name="uname" required>

        <label>Mobile Number *</label>
        <input type="tel" placeholder="Enter mobile number"  name="mobileno" required>

        <label>Password *</label>
        <input type="password" placeholder="Create password" name="password" required>

        <label>Confirm Password *</label>
        <input type="password" placeholder="Confirm password" required>

        <button type="submit" class="register-btn">Register</button>
    </form>

    <div class="login.jsp">
        Already have an account?
        <a href="login.jsp">Login to your account</a>
    </div>
</div>

</body>
</html>
