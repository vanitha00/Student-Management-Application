<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System - Login</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        background: #fff;
        width: 350px;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .tabs {
        display: flex;
        margin-bottom: 20px;
    }

    .tab {
        flex: 1;
        text-align: center;
        padding: 10px;
        cursor: pointer;
        font-weight: bold;
        border-bottom: 3px solid transparent;
    }

    .tab.active {
        color: #2196F3;
        border-bottom: 3px solid #2196F3;
    }

    h3 {
        text-align: center;
        margin-bottom: 15px;
    }

    label {
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 8px;
        margin: 8px 0 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 15px;
        color: white;
        cursor: pointer;
    }

    .student-btn {
        background-color: #4CAF50;
    }

    .admin-btn {
        background-color: #FF5722;
    }

    .form {
        display: none;
    }

    .form.active {
        display: block;
    }
</style>
</head>

<body>

<div class="login-container">

    <!-- Tabs -->
    <div class="tabs">
        <div class="tab active" onclick="showStudent()">Student Login</div>
        <div class="tab" onclick="showAdmin()">Admin Login</div>
    </div>

    <!-- Student Login Form (Default Visible) -->
    <div id="studentForm" class="form active">
        <h3>Student Login</h3>
        <form action="studentlogin">
            <label>Username</label>
            <input type="text" placeholder="Enter student username" name="name">

            <label>Password</label>
            <input type="password" placeholder="Enter password" name="password">

            <input type="submit" value="Login" class="student-btn">
        </form>
    </div>

    <!-- Admin Login Form (Hidden Initially) -->
    <div id="adminForm" class="form">
        <h3>Admin Login</h3>
        <form action="adminlogin" method="post">
            <label>Username</label>
            <input type="text" placeholder="Enter admin username" name="uname">

            <label>Password</label>
            <input type="password" placeholder="Enter password" name="password">

            <input type="submit" value="Login" class="admin-btn">
        </form>
    </div>

</div>

<script>
    function showStudent() {
        document.getElementById("studentForm").classList.add("active");
        document.getElementById("adminForm").classList.remove("active");

        document.querySelectorAll(".tab")[0].classList.add("active");
        document.querySelectorAll(".tab")[1].classList.remove("active");
    }

    function showAdmin() {
        document.getElementById("adminForm").classList.add("active");
        document.getElementById("studentForm").classList.remove("active");

        document.querySelectorAll(".tab")[1].classList.add("active");
        document.querySelectorAll(".tab")[0].classList.remove("active");
    }
</script>

</body>
</html>