<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Student Enrollment</title>

<style>

/* =========================
   GLOBAL
========================= */

* {
    box-sizing: border-box;
}

body {
    margin: 0;
    padding: 0 0px 40px 0px;
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

    margin-bottom: 35px;
}


/* Logo */

.logo {
    color: white;

    font-size: 22px;
    font-weight: 700;

    letter-spacing: 0.5px;

    white-space: nowrap;
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


/* Active Page */

.navbar ul li a.active {

    background: white;

    color: #2563eb;

    box-shadow:
        0 4px 10px rgba(0, 0, 0, 0.10);
}


/* =========================
   MAIN HEADING
========================= */

h2 {

    text-align: center;

    margin-bottom: 25px;

    font-size: 32px;

    font-weight: 700;

    color: #1e293b;

    letter-spacing: 0.5px;
}


/* =========================
   SUCCESS MESSAGE
========================= */

.success-message {

    color: green;

    font-weight: bold;

    text-align: center;

    margin-bottom: 15px;
}


/* =========================
   FORM CARD
========================= */

form {

    width: 650px;

    max-width: 100%;

    margin: auto;

    padding: 35px 40px;

    background: rgba(255, 255, 255, 0.95);

    border-radius: 18px;

    border: 1px solid rgba(255, 255, 255, 0.7);

    box-shadow:
        0 20px 50px rgba(15, 23, 42, 0.12),
        0 5px 15px rgba(15, 23, 42, 0.06);

    backdrop-filter: blur(10px);

    transition: 0.3s ease;
}


/* Form Hover */

form:hover {

    box-shadow:
        0 25px 60px rgba(15, 23, 42, 0.16),
        0 8px 20px rgba(15, 23, 42, 0.08);
}


/* =========================
   TABLE
========================= */

table {

    width: 100%;

    border-collapse: separate;

    border-spacing: 0 14px;
}


/* =========================
   TABLE CELLS
========================= */

td {

    padding: 5px;

    vertical-align: middle;
}


/* First Column */

td:first-child {

    width: 35%;

    padding-right: 20px;

    font-size: 15px;

    font-weight: 600;

    color: #334155;
}


/* =========================
   INPUT & SELECT
========================= */

input[type="text"],
input[type="email"],
select {

    width: 100%;

    padding: 12px 14px;

    font-size: 15px;

    color: #334155;

    background-color: #f8fafc;

    border: 1px solid #cbd5e1;

    border-radius: 8px;

    outline: none;

    transition: all 0.25s ease;
}


/* =========================
   INPUT FOCUS
========================= */

input[type="text"]:focus,
input[type="email"]:focus,
select:focus {

    background-color: white;

    border-color: #2563eb;

    box-shadow:
        0 0 0 3px rgba(37, 99, 235, 0.12);

    transform: translateY(-1px);
}


/* =========================
   INPUT HOVER
========================= */

input[type="text"]:hover,
input[type="email"]:hover,
select:hover {

    border-color: #94a3b8;
}


/* =========================
   SELECT
========================= */

select {

    cursor: pointer;
}


/* =========================
   RADIO BUTTON
========================= */

input[type="radio"] {

    accent-color: #2563eb;

    cursor: pointer;

    margin-right: 6px;
}


/* =========================
   CHECKBOX
========================= */

input[type="checkbox"] {

    accent-color: #2563eb;

    cursor: pointer;

    margin-right: 6px;
}


/* =========================
   RADIO & CHECKBOX LABEL
========================= */

input[type="radio"] + label,
input[type="checkbox"] + label {

    cursor: pointer;
}


/* =========================
   SUBMIT BUTTON
========================= */

input[type="submit"] {

    display: block;

    margin: 25px auto 5px;

    padding: 13px 45px;

    border: none;

    border-radius: 8px;

    background: linear-gradient(
        135deg,
        #2563eb,
        #4f46e5
    );

    color: white;

    font-size: 16px;

    font-weight: 600;

    letter-spacing: 0.3px;

    cursor: pointer;

    box-shadow:
        0 8px 18px rgba(37, 99, 235, 0.25);

    transition: all 0.25s ease;
}


/* =========================
   BUTTON HOVER
========================= */

input[type="submit"]:hover {

    transform: translateY(-2px);

    background: linear-gradient(
        135deg,
        #1d4ed8,
        #4338ca
    );

    box-shadow:
        0 12px 25px rgba(37, 99, 235, 0.35);
}


/* =========================
   BUTTON CLICK
========================= */

input[type="submit"]:active {

    transform: translateY(0);
}


/* =========================
   MOBILE RESPONSIVE
========================= */

@media (max-width: 700px) {

    body {

        padding: 0 10px 20px 10px;
    }


    /* Mobile Navbar */

    .navbar {

        padding: 15px 20px;

        flex-direction: column;

        gap: 15px;

        border-radius: 0 0 14px 14px;
    }


    .logo {

        font-size: 20px;
    }


    .navbar ul {

        flex-wrap: wrap;

        justify-content: center;
    }


    .navbar ul li a {

        font-size: 14px;

        padding: 8px 12px;
    }


    /* Heading */

    h2 {

        font-size: 26px;
    }


    /* Form */

    form {

        padding: 25px 20px;
    }


    /* Responsive Table */

    table,
    tbody,
    tr,
    td {

        display: block;

        width: 100%;
    }


    td:first-child {

        padding-bottom: 5px;
    }


    td {

        padding: 5px 0;
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
            <a href="home">
                Home
            </a>
        </li>


        <li>
            <a href="/Student-list">
                Students
            </a>
        </li>


        <li>
            <a href="save" class="active">
                Enrollment
            </a>
        </li>


        <li>
            <a href="about">
                About
            </a>
        </li>


        <li>
            <a href="contact">
                Contact
            </a>
        </li>

    </ul>

</nav>



<!-- =========================
     PAGE HEADING
========================= -->

<h2>
    Student Enrollment Form
</h2>


<!-- SUCCESS MESSAGE -->

<h3 class="success-message">
    ${msg}
</h3>



<!-- =========================
     STUDENT FORM
========================= -->

<form:form
    action="save"
    modelAttribute="Student"
    method="post">


<table>


    <!-- NAME -->

    <tr>

        <td>
            Enter Name :
        </td>

        <td>
            <form:input path="name"/>
        </td>

    </tr>



    <!-- EMAIL -->

    <tr>

        <td>
            Enter Email :
        </td>

        <td>
            <form:input path="email"/>
        </td>

    </tr>



    <!-- ADDRESS -->

    <tr>

        <td>
            Enter Address :
        </td>

        <td>
            <form:input path="address"/>
        </td>

    </tr>



    <!-- QUALIFICATION -->

    <tr>

        <td>
            Enter Qualification :
        </td>

        <td>

            <form:select path="qulification">

                <form:option value="BCS">
                    BCS
                </form:option>

                <form:option value="BCA">
                    BCA
                </form:option>

                <form:option value="MCA">
                    MCA
                </form:option>

                <form:option value="MCS">
                    MCS
                </form:option>

            </form:select>

        </td>

    </tr>



    <!-- GENDER -->

    <tr>

        <td>
            Gender :
        </td>

        <td>

            <form:radiobutton
                path="gender"
                value="Male"/>
            Male


            &nbsp;&nbsp;


            <form:radiobutton
                path="gender"
                value="Female"/>
            Female

        </td>

    </tr>



    <!-- COURSE -->

    <tr>

        <td>
            Choose Course :
        </td>

        <td>

            <form:select path="course">

                <form:option
                    value="full stack java developer">
                    Full Stack Java Developer
                </form:option>


                <form:option
                    value="core java and advanced java">
                    Core Java and Advanced Java
                </form:option>


                <form:option
                    value="python with backend django">
                    Python with Backend Django
                </form:option>


                <form:option
                    value="data analyst and Machine learning">
                    Data Analyst and Machine Learning
                </form:option>

            </form:select>

        </td>

    </tr>



    <!-- TIMING -->

    <tr>

        <td>
            Timing :
        </td>

        <td>

            <form:checkbox
                path="timing"
                value="morning"/>
            Morning


            &nbsp;&nbsp;


            <form:checkbox
                path="timing"
                value="afternoon"/>
            Afternoon


            &nbsp;&nbsp;


            <form:checkbox
                path="timing"
                value="evening"/>
            Evening

        </td>

    </tr>



    <!-- MOBILE -->

    <tr>

        <td>
            Enter Mobile No :
        </td>

        <td>
            <form:input path="mobNo"/>
        </td>

    </tr>


</table>



<!-- SAVE BUTTON -->

<input
    type="submit"
    value="Save">


</form:form>


</body>

</html>