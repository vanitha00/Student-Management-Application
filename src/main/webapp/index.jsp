<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home | Spider Schools of Technology</title>

<style>
    body {
        margin: 0;
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f4f6f9;
    }

    /* Header */
    .header {
        background-color: #1a237e;
        color: white;
        padding: 15px 30px;
        display: flex;
        justify-content: space-between;
        align-items: center;
    }

    .school-name {
        font-size: 22px;
        font-weight: bold;
    }

    /* Profile */
    .profile {
        position: relative;
        cursor: pointer;
    }

    .profile img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
        border: 2px solid white;
    }

    .dropdown {
        display: none;
        position: absolute;
        right: 0;
        top: 50px;
        background-color: white;
        min-width: 160px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
        border-radius: 6px;
        overflow: hidden;
        z-index: 10;
    }

    .dropdown a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: #333;
        font-size: 14px;
    }

    .dropdown a:hover {
        background-color: #f1f1f1;
    }

    /* Content */
    .content {
        text-align: center;
        margin-top: 80px;
    }

    .content h2 {
        color: #333;
        margin-bottom: 40px;
    }

    .btn-container {
        display: flex;
        justify-content: center;
        gap: 30px;
    }

    .btn {
        padding: 15px 30px;
        font-size: 16px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        color: white;
        box-shadow: 0 5px 15px rgba(0,0,0,0.2);
    }

    .add-btn {
        background-color: #4CAF50;
    }

    .view-btn {
        background-color: #2196F3;
    }

    .btn:hover {
        opacity: 0.9;
    }

    /* Admin only section */
    .admin-only {
        display: block; /* hide this for students */
    }

    /* Example: student view (uncomment for student UI)
    .admin-only {
        display: none;
    }
    */
    
    .about-section {
        background-color: #ffffff;
        padding: 60px 30px;
        text-align: center;
    }

    .about-section h2 {
        font-size: 28px;
        color: #1a237e;
        margin-bottom: 20px;
    }

    .about-text {
        max-width: 800px;
        margin: 0 auto 40px;
        font-size: 16px;
        color: #555;
        line-height: 1.6;
    }

    .cards {
        display: flex;
        justify-content: center;
        gap: 30px;
        flex-wrap: wrap;
    }

    .card {
        background: #f5f7fb;
        width: 280px;
        padding: 25px;
        border-radius: 12px;
        box-shadow: 0 6px 15px rgba(0,0,0,0.15);
        transition: transform 0.3s ease;
    }

    .card:hover {
        transform: translateY(-8px);
    }

    .card h3 {
        color: #3f51b5;
        margin-bottom: 10px;
    }

    .card p {
        color: #444;
        font-size: 14px;
        line-height: 1.5;
    }

    @media (max-width: 768px) {
        .cards {
            flex-direction: column;
            align-items: center;
        }
    }
    .footer {
        background-color: #1a237e;
        color: #ffffff;
        padding: 40px 20px 20px;
        margin-top: 60px;
    }

    .footer-container {
        display: flex;
        justify-content: space-between;
        gap: 30px;
        max-width: 1100px;
        margin: auto;
        flex-wrap: wrap;
    }

    .footer-section {
        flex: 1;
        min-width: 250px;
    }

    .footer-section h3 {
        margin-bottom: 15px;
        font-size: 18px;
        border-bottom: 2px solid #ffca28;
        display: inline-block;
        padding-bottom: 5px;
    }

    .footer-section p {
        font-size: 14px;
        line-height: 1.6;
        color: #e0e0e0;
    }

    .footer-section ul {
        list-style: none;
        padding: 0;
    }

    .footer-section ul li {
        margin-bottom: 8px;
    }

    .footer-section ul li a {
        color: #ffca28;
        text-decoration: none;
        font-size: 14px;
    }

    .footer-section ul li a:hover {
        text-decoration: underline;
    }

    .footer-bottom {
        text-align: center;
        margin-top: 30px;
        padding-top: 15px;
        border-top: 1px solid rgba(255,255,255,0.2);
        font-size: 13px;
        color: #ccc;
    }

    @media (max-width: 768px) {
        .footer-container {
            flex-direction: column;
            text-align: center;
        }

        .footer-section h3 {
            border-bottom: none;
        }
    }
</style>
</head>

<body>

<!-- Header -->
<div class="header">
    <div class="school-name">Spider Schools of Technology</div>

    <div class="profile" onclick="toggleDropdown()">
        <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Profile">
        <div class="dropdown" id="profileMenu">
            <a href="profile.jsp">My Profile</a>
            <a href="logout">Logout</a>
        </div>
    </div>
</div>

<!-- Main Content -->
<div class="content">
    <h2>Welcome to School Management System</h2>

<%  String role=(String)request.getSession().getAttribute("role");
if("admin".equals(role)) {%>
    <!-- Admin-only buttons -->
    <div class="btn-container admin-only">
       <form action="register.jsp">
       <button class="btn add-btn" type="submit">Add Student</button>
	</form><br>
	<form action="displayall">
	    <button class="btn view-btn" type="submit">Get All Students</button>
	</form><br>
	<form action="AdminRegister.jsp">
	    <button class="btn add-btn" type="submit">Add Admin</button>
	</form><br>
      
        <!-- <button class="btn add-btn" type="submit">Add Student</button>
        <button class="btn view-btn">Get All Students</button> -->
    </div>
    
  <%} %>  
    <!-- About Spider Schools of Technology -->
<section class="about-section">

    <h2>About Spider Schools of Technology</h2>
    <p class="about-text">
        Spider Schools of Technology is a premier institution dedicated to academic excellence,
        innovation, and character development. Our mission is to empower young minds with
        knowledge, practical skills, and strong values to succeed in a technology-driven world.
    </p>

    <div class="cards">

        <div class="card">
            <h3>🎯 Our Vision</h3>
            <p>
                To become a leading educational institution that nurtures creativity,
                leadership, and innovation, preparing students for global opportunities.
            </p>
        </div>

        <div class="card">
            <h3>🚀 Our Mission</h3>
            <p>
                To provide high-quality education by integrating technology, innovative
                teaching methods, and real-world learning experiences.
            </p>
        </div>

        <div class="card">
            <h3>🏆Achievements</h3>
            <p>
                Recognized for academic excellence, smart classrooms, skilled faculty,
                and students excelling in academics, technology, and competitive exams.
            </p>
        </div>

    </div>

</section>
<!-- Footer -->
<footer class="footer">

    <div class="footer-container">

        <!-- School Info -->
        <div class="footer-section">
            <h3>Spider Schools of Technology</h3>
            <p>
                Empowering students with knowledge, innovation, and values.
                We are committed to shaping future leaders through quality education
                and modern technology.
            </p>
        </div>

        <!-- Quick Links -->
        <div class="footer-section">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="profile.jsp">My Profile</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="logout">Logout</a></li>
            </ul>
        </div>

        <!-- Contact Info -->
        <div class="footer-section">
            <h3>Contact Us</h3>
            <p>Email: info@spiderschool.edu</p>
            <p>Phone: +91 98765 43210</p>
            <p>Address: Spider Campus, Tech City, India</p>
        </div>

    </div>

    <div class="footer-bottom">
        © 2025 Spider Schools of Technology. All Rights Reserved.
    </div>

</footer>



</div>

<script>
    function toggleDropdown() {
        const menu = document.getElementById("profileMenu");
        menu.style.display = menu.style.display === "block" ? "none" : "block";
    }

    window.onclick = function(event) {
        if (!event.target.closest('.profile')) {
            document.getElementById("profileMenu").style.display = "none";
        }
    }
</script>

</body>
</html>

