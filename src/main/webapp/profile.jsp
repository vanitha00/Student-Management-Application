<%@ page language="java" %>

<!DOCTYPE html>
<html>
<head>
<title>My Profile</title>

<style>
    body {
        font-family: Arial;
        background: #f4f6f9;
    }

    .profile-box {
        width: 400px;
        margin: 60px auto;
        background: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    h2 {
        text-align: center;
        color: #1a237e;
    }

    .field {
        margin: 15px 0;
    }

    .label {
        font-weight: bold;
        color: #333;
    }

    .value {
        color: #555;
    }
</style>
</head>

<body>

<div class="profile-box">
    <h2>My Profile</h2>

    <% if ("student".equals(request.getAttribute("role"))) { %>
    <div class="field">
            <span class="label">Id:</span>
            <span class="value"><%= request.getAttribute("mobile") %></span>
        </div>
        <div class="field">
        <span class="label">Name:</span>
        <span class="value"><%= request.getAttribute("name") %></span>
    </div>

    <div class="field">
        <span class="label">Age:</span>
        <span class="value"><%= request.getAttribute("email") %></span>
    </div>
        <div class="field">
            <span class="label">Branch:</span>
            <span class="value"><%= request.getAttribute("username") %></span>
        </div>

        <div class="field">
            <span class="label">Id:</span>
            <span class="value"><%= request.getAttribute("mobile") %></span>
        </div>

    <% } else {
    	if ("admin".equals(request.getAttribute("role"))){%>
    
    <div class="field">
        <span class="label">Name:</span>
        <span class="value"><%= request.getAttribute("name") %></span>
    </div>

    <div class="field">
        <span class="label">Email:</span>
        <span class="value"><%= request.getAttribute("email") %></span>
    </div>

        <div class="field">
            <span class="label">Phone No:</span>
            <span class="value"><%= request.getAttribute("rollNo") %></span>
        </div>

    <% }else{
    	System.out.println("not a student not a admin..!");
    }
    	} %>

</div>

</body>
</html>
