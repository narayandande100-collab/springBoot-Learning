<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student List</title>

<style>

/* =========================
   GLOBAL
========================= */

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0 0px 40px;

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

    padding: 0 35px;

    border-radius: 0 0 0px 0px;

    box-shadow:
        0 8px 25px rgba(37, 99, 235, 0.20);

    margin-bottom: 45px;
}


/* Logo */

.logo {
    color: white;

    font-size: 22px;

    font-weight: 700;

    letter-spacing: 0.5px;
}


/* Navbar Menu */

.navbar ul {
    display: flex;

    align-items: center;

    gap: 8px;

    list-style: none;

    margin: 0;

    padding: 0;
}


/* Navbar Links */

.navbar ul li a {

    display: block;

    text-decoration: none;

    color: white;

    font-size: 15px;

    font-weight: 600;

    padding: 10px 16px;

    border-radius: 7px;

    transition: all 0.25s ease;
}


/* Hover */

.navbar ul li a:hover {

    background: rgba(255, 255, 255, 0.18);

    transform: translateY(-1px);
}


/* Active Students */

.navbar ul li a.active {

    background: white;

    color: #2563eb;
}


/* =========================
   PAGE HEADER
========================= */

.page-header {

    text-align: center;

    margin-bottom: 30px;
}

.page-header h1 {

    margin: 0 0 10px;

    font-size: 34px;

    color: #1e293b;
}

.page-header h1 span {

    color: #2563eb;
}

.page-header p {

    margin: 0;

    color: #64748b;

    font-size: 16px;
}


/* =========================
   ADD STUDENT BUTTON
========================= */

.add-student {

    max-width: 1250px;

    margin: 0 auto 20px;

    display: flex;

    justify-content: flex-end;
}

.add-student a {

    text-decoration: none;

    padding: 11px 20px;

    border-radius: 8px;

    color: white;

    background: linear-gradient(
        135deg,
        #2563eb,
        #4f46e5
    );

    font-size: 14px;

    font-weight: 600;

    box-shadow:
        0 6px 15px rgba(37, 99, 235, 0.20);

    transition: 0.25s ease;
}

.add-student a:hover {

    transform: translateY(-2px);

    box-shadow:
        0 10px 22px rgba(37, 99, 235, 0.30);
}


/* =========================
   TABLE CONTAINER
========================= */

.table-container {
    width: 100%;
    max-width: none;

    margin: 0;

    padding: 22px;

    background: rgba(255, 255, 255, 0.95);

    border-radius: 18px;

    border: 1px solid #e2e8f0;

    box-shadow:
        0 20px 50px rgba(15, 23, 42, 0.10);

    overflow-x: auto;
    overflow-y: hidden;

    -webkit-overflow-scrolling: touch;
}

/* =========================
   TABLE
========================= */

.student-table {
    width: 100%;
    min-width: 1100px;

    border-collapse: collapse;

    /*
       Important:
       Columns will stretch across
       the complete table width
    */
    table-layout: fixed;
}


/* Table Header */

.student-table thead {

    background: linear-gradient(
        135deg,
        #1e3a8a,
        #2563eb
    );
}

.student-table th {

    color: white;

    padding: 15px 12px;

    text-align: left;

    font-size: 14px;

    font-weight: 600;

    white-space: nowrap;
}


/* Table Data */

.student-table td {

    padding: 14px 12px;

    border-bottom: 1px solid #e2e8f0;

    color: #475569;

    font-size: 14px;

    vertical-align: middle;
}


/* Alternate Row */

.student-table tbody tr:nth-child(even) {

    background: #f8fafc;
}


/* Hover Row */

.student-table tbody tr:hover {

    background: #eff6ff;

    transition: 0.2s ease;
}


/* ID */

.student-table td:first-child {

    font-weight: 700;

    color: #2563eb;
}


/* =========================
   BADGES
========================= */

.gender-badge {

    display: inline-block;

    padding: 5px 10px;

    border-radius: 20px;

    background: #dbeafe;

    color: #1d4ed8;

    font-size: 12px;

    font-weight: 600;
}


.course-badge {

    display: inline-block;

    padding: 5px 10px;

    border-radius: 20px;

    background: #eef2ff;

    color: #4338ca;

    font-size: 12px;

    font-weight: 600;
}


/* =========================
   MOBILE
========================= */

@media (max-width: 800px) {

    .navbar {

        padding: 15px 20px;

        flex-direction: column;

        gap: 15px;
    }

    .navbar ul {

        flex-wrap: wrap;

        justify-content: center;
    }

    .page-header h1 {

        font-size: 28px;
    }

    .table-container {

        padding: 15px;
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
            <a href="/home">
                Home
            </a>
        </li>

        <li>
            <a href="/Student-list" class="active">
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
     PAGE HEADER
========================= -->

<div class="page-header">

    <h1>
        <span>Student</span> List
    </h1>

    <p>
        View all registered students and their academic information.
    </p>

</div>


<!-- =========================
     ADD STUDENT
     ========================= -->

<div class="add-student">

    <a href="/student-enrollment-form">
        + Add New Student
    </a>

</div>


<!-- =========================
     TABLE
    ========================= -->

<div class="table-container">

<table class="student-table">

    <thead>

        <tr>

            <th>ID</th>

            <th>Name</th>

            <th>Email</th>

            <th>Qualification</th>

            <th>Course</th>

            <th>Gender</th>

            <th>Timings</th>

            <th>Address</th>

            <th>Course Duration</th>

            <th>Mobile Number</th>

        </tr>

    </thead>


    <tbody>

        <c:forEach var="student" items="${students}">

            <tr>

                <td>
                    ${student.id}
                </td>

                <td>
                    ${student.name}
                </td>

                <td>
                    ${student.email}
                </td>

                <td>
                    ${student.qulification}
                </td>

                <td>
                    <span class="course-badge">
                        ${student.course}
                    </span>
                </td>

                <td>
                    <span class="gender-badge">
                        ${student.gender}
                    </span>
                </td>

                <td>
                    ${student.timing}
                </td>

                <td>
                    ${student.address}
                </td>

                <td>
                    ${student.courseDuration}
                </td>

                <td>
                    ${student.mobNo}
                </td>

            </tr>

        </c:forEach>

    </tbody>

</table>

</div>


</body>

</html>