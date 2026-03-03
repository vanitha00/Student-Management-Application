<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List, Studentmanagement.Entity.Student" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>
    body {
        background-color: #f4f6f9;
        font-family: Arial, sans-serif;
    }

    .page-container {
        max-width: 1100px;
        margin: 40px auto;
        background: #ffffff;
        padding: 25px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    }

    .page-title {
        color: #1a237e;
        margin-bottom: 25px;
        text-align: center;
    }

    .sort-box {
        text-align: right;
        margin-bottom: 15px;
    }

    .sort-box form {
        display: inline;
    }

    .action-links a {
        margin-right: 10px;
        text-decoration: none;
        font-weight: bold;
    }

    .action-links a.edit {
        color: #0d6efd;
    }

    .action-links a.delete {
        color: #dc3545;
    }
</style>
</head>

<body>

<div class="page-container">

    <h1 class="page-title">All Students</h1>

    <!-- Sort Section -->
    <div class="sort-box">
        <span class="fw-bold me-2">Sort by:</span>

        <form action="sortByAge">
            <button class="btn btn-outline-primary btn-sm">Age</button>
        </form>

        <form action="sortByName">
            <button class="btn btn-outline-secondary btn-sm">Name</button>
        </form>
    </div>

    <!-- Students Table -->
    <table class="table table-bordered table-hover text-center align-middle">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Branch</th>
                <th>Action</th>
            </tr>
        </thead>

        <tbody>
        <%
            List<Student> li = (List<Student>) request.getAttribute("allStudents");
            if (li != null) {
                for (Student s : li) {
        %>
            <tr>
                <td><%= s.getId() %></td>
                <td><%= s.getName() %></td>
                <td><%= s.getAge() %></td>
                <td><%= s.getBranch() %></td>
                <td class="action-links">
                    <a href="edit.jsp" class="edit">EDIT</a>
                    |
                    <a href="delete.jsp" class="delete">DELETE</a>
                </td>
            </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>

</div>

</body>
</html>
