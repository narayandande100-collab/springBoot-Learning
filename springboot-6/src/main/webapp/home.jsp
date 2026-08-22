<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Management System - Home</title>

<style>

/* =========================
   GLOBAL
========================= */

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    min-height: 100vh;

    font-family: "Segoe UI", Arial, sans-serif;

    background:
        radial-gradient(circle at top left, #dbeafe, transparent 35%),
        radial-gradient(circle at bottom right, #e0e7ff, transparent 35%),
        linear-gradient(135deg, #f8fafc, #eef2ff);

    color: #1e293b;
}


/* =========================
   NAVBAR
========================= */

.navbar {
    width: 100%;
    min-height: 70px;

    background: linear-gradient(
        135deg,
        #1e3a8a,
        #2563eb
    );

    display: flex;
    align-items: center;
    justify-content: space-between;

    padding: 0 45px;

    box-shadow:
        0 8px 25px rgba(37, 99, 235, 0.20);
}


/* Logo */

.logo {
    color: white;

    font-size: 22px;
    font-weight: 700;

    letter-spacing: 0.5px;
}


/* Menu */

.navbar ul {
    display: flex;

    align-items: center;

    gap: 8px;

    list-style: none;

    margin: 0;
    padding: 0;
}


/* Links */

.navbar ul li a {

    display: block;

    text-decoration: none;

    color: white;

    font-size: 15px;

    font-weight: 600;

    padding: 10px 16px;

    border-radius: 7px;

    transition: 0.25s ease;
}


/* Hover */

.navbar ul li a:hover {

    background: rgba(255, 255, 255, 0.18);

    transform: translateY(-1px);
}


/* Active */

.navbar ul li a.active {

    background: white;

    color: #2563eb;
}


/* =========================
   HERO SECTION
========================= */

.hero {

    max-width: 1150px;

    margin: 70px auto 50px;

    padding: 0 30px;

    display: flex;

    align-items: center;

    justify-content: space-between;

    gap: 50px;
}


/* Hero Left */

.hero-content {

    flex: 1;
}


.hero-content h1 {

    font-size: 48px;

    line-height: 1.15;

    margin: 0 0 20px;

    color: #1e293b;
}


.hero-content h1 span {

    color: #2563eb;
}


.hero-content p {

    font-size: 18px;

    line-height: 1.7;

    color: #64748b;

    max-width: 600px;

    margin-bottom: 30px;
}


/* =========================
   BUTTONS
========================= */

.buttons {

    display: flex;

    gap: 15px;

    flex-wrap: wrap;
}


.btn {

    display: inline-block;

    text-decoration: none;

    padding: 13px 25px;

    border-radius: 8px;

    font-size: 15px;

    font-weight: 600;

    transition: 0.25s ease;
}


.primary-btn {

    color: white;

    background: linear-gradient(
        135deg,
        #2563eb,
        #4f46e5
    );

    box-shadow:
        0 8px 18px rgba(37, 99, 235, 0.25);
}


.primary-btn:hover {

    transform: translateY(-2px);

    box-shadow:
        0 12px 25px rgba(37, 99, 235, 0.35);
}


.secondary-btn {

    color: #2563eb;

    background: white;

    border: 1px solid #bfdbfe;
}


.secondary-btn:hover {

    background: #eff6ff;

    transform: translateY(-2px);
}


/* =========================
   HERO CARD
========================= */

.hero-card {

    width: 360px;

    padding: 35px;

    background: rgba(255, 255, 255, 0.9);

    border-radius: 20px;

    box-shadow:
        0 20px 50px rgba(15, 23, 42, 0.12);

    border: 1px solid #e2e8f0;

    text-align: center;
}


.hero-icon {

    width: 90px;

    height: 90px;

    margin: auto auto 20px;

    border-radius: 50%;

    display: flex;

    align-items: center;

    justify-content: center;

    background: #dbeafe;

    color: #2563eb;

    font-size: 42px;
}


.hero-card h2 {

    margin: 0 0 10px;

    color: #1e293b;
}


.hero-card p {

    color: #64748b;

    line-height: 1.6;
}


/* =========================
   STATISTICS
========================= */

.stats {

    max-width: 1050px;

    margin: 20px auto 60px;

    padding: 0 25px;

    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 20px;
}


.stat-card {

    background: white;

    padding: 25px;

    text-align: center;

    border-radius: 14px;

    box-shadow:
        0 10px 30px rgba(15, 23, 42, 0.08);

    transition: 0.25s ease;
}


.stat-card:hover {

    transform: translateY(-5px);

    box-shadow:
        0 15px 35px rgba(15, 23, 42, 0.12);
}


.stat-card h2 {

    margin: 0;

    font-size: 32px;

    color: #2563eb;
}


.stat-card p {

    margin: 8px 0 0;

    color: #64748b;

    font-weight: 600;
}


/* =========================
   FEATURES
========================= */

.features-section {

    max-width: 1100px;

    margin: auto;

    padding: 0 25px 60px;

    text-align: center;
}


.features-section h2 {

    font-size: 30px;

    margin-bottom: 10px;
}


.features-section > p {

    color: #64748b;

    margin-bottom: 30px;
}


.features {

    display: grid;

    grid-template-columns: repeat(3, 1fr);

    gap: 22px;
}


.feature-card {

    background: white;

    padding: 28px;

    border-radius: 15px;

    text-align: left;

    border: 1px solid #e2e8f0;

    transition: 0.25s ease;
}


.feature-card:hover {

    transform: translateY(-5px);

    border-color: #bfdbfe;

    box-shadow:
        0 15px 35px rgba(15, 23, 42, 0.10);
}


.feature-icon {

    font-size: 30px;

    margin-bottom: 12px;
}


.feature-card h3 {

    margin: 0 0 8px;

    color: #1e293b;
}


.feature-card p {

    color: #64748b;

    line-height: 1.6;

    margin: 0;
}


/* =========================
   FOOTER
========================= */

.footer {

    background: #1e293b;

    color: white;

    text-align: center;

    padding: 20px;

    margin-top: 20px;
}


.footer p {

    margin: 0;

    font-size: 14px;

    color: #cbd5e1;
}


/* =========================
   RESPONSIVE
========================= */

@media (max-width: 850px) {

    .navbar {

        padding: 15px 20px;

        flex-direction: column;

        gap: 15px;
    }


    .navbar ul {

        flex-wrap: wrap;

        justify-content: center;
    }


    .hero {

        flex-direction: column;

        text-align: center;

        margin-top: 45px;
    }


    .hero-content p {

        margin-left: auto;

        margin-right: auto;
    }


    .buttons {

        justify-content: center;
    }


    .hero-card {

        width: 100%;

        max-width: 400px;
    }


    .stats {

        grid-template-columns: 1fr;
    }


    .features {

        grid-template-columns: 1fr;
    }

}


@media (max-width: 500px) {

    .hero-content h1 {

        font-size: 36px;
    }


    .navbar ul li a {

        padding: 8px 10px;

        font-size: 13px;
    }

}

</style>

</head>


<body>


<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">

    <div class="logo">
        Student Management System
    </div>


    <ul>

        <li>
            <a href="/home" class="active">
                Home
            </a>
        </li>

        <li>
            <a href="/Student-list">
                Students
            </a>
        </li>

        <li>
            <a href="/student-enrollment-form">
                Enrollment
            </a>
        </li>

        <li>
            <a href="/about">
                About
            </a>
        </li>

        <li>
            <a href="/contact">
                Contact
            </a>
        </li>

    </ul>

</nav>



<!-- =========================
     HERO SECTION
========================= -->

<section class="hero">


    <div class="hero-content">

        <h1>
            Welcome to
            <span>Student Management System</span>
        </h1>


        <p>
            Manage student enrollment, personal information,
            qualifications, courses and class timings
            easily from one simple platform.
        </p>


        <div class="buttons">

            <a href="/student-enrollment-form" class="btn primary-btn">
                Enroll Student
            </a>


            <a href="/Student-list" class="btn secondary-btn">
                View Students
            </a>

        </div>

    </div>



    <!-- HERO CARD -->

    <div class="hero-card">

        <div class="hero-icon">
            🎓
        </div>


        <h2>
            Student Enrollment
        </h2>


        <p>
            Register students quickly and manage
            their academic information in an organized
            and efficient way.
        </p>

    </div>

</section>



<!-- =========================
     STATISTICS
========================= -->

<section class="stats">


    <div class="stat-card">

        <h2>
            100+
        </h2>

        <p>
            Students
        </p>

    </div>


    <div class="stat-card">

        <h2>
            4+
        </h2>

        <p>
            Courses
        </p>

    </div>


    <div class="stat-card">

        <h2>
            24/7
        </h2>

        <p>
            Management
        </p>

    </div>


</section>



<!-- =========================
     FEATURES
========================= -->

<section class="features-section">


    <h2>
        Why Use Our System?
    </h2>


    <p>
        Everything you need to manage student information.
    </p>



    <div class="features">


        <div class="feature-card">

            <div class="feature-icon">
                👨‍🎓
            </div>

            <h3>
                Student Registration
            </h3>

            <p>
                Easily register new students with
                their name, email, address and
                mobile number.
            </p>

        </div>



        <div class="feature-card">

            <div class="feature-icon">
                📚
            </div>

            <h3>
                Course Management
            </h3>

            <p>
                Manage different courses and allow
                students to select their preferred
                learning program.
            </p>

        </div>



        <div class="feature-card">

            <div class="feature-icon">
                ⏰
            </div>

            <h3>
                Flexible Timings
            </h3>

            <p>
                Students can select their preferred
                morning, afternoon or evening
                learning schedule.
            </p>

        </div>


    </div>

</section>



<!-- =========================
     FOOTER
========================= -->

<footer class="footer">

    <p>
        © 2026 Student Management System.
        All Rights Reserved.
    </p>

</footer>


</body>

</html>