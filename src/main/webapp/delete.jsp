<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Student</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f9;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .form-container {
        background: #ffffff;
        width: 360px;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .form-container h1 {
        text-align: center;
        color: #c62828;
        margin-bottom: 20px;
        font-size: 22px;
    }

    .warning {
        text-align: center;
        color: #777;
        font-size: 14px;
        margin-bottom: 20px;
    }

    label {
        font-weight: bold;
        display: block;
        margin-bottom: 5px;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 18px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #e53935;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #c62828;
    }
</style>
</head>

<body>

<div class="form-container">
    <h1>Delete Student</h1>
    <p class="warning">Please enter the Student ID to delete the record.</p>

    <form action="delete">
        <label>Student ID</label>
        <input type="text" name="id" required>

        <input type="submit" value="Delete">
    </form>
</div>

</body>
</html>
