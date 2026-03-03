<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

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
        width: 400px;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .form-container h1 {
        text-align: center;
        color: #1a237e;
        margin-bottom: 25px;
        font-size: 22px;
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
        margin-bottom: 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #2196F3;
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #1976D2;
    }
</style>
</head>

<body>

<div class="form-container">
    <h1>Update Student Details</h1>

    <form action="update">
        <label>ID</label>
        <input type="text" name="id"  required>

        <label>Name</label>
        <input type="text" name="name"  required>

        <label>Age</label>
        <input type="text" name="age"  required>

        <label>Branch</label>
        <input type="text" name="branch"  required>

        <input type="submit" value="Update">
    </form>
</div>

</body>
</html>
