<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Student Management System</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    body {
        background: #f5f7fb;
        min-height: 100vh;
    }

    .main-container {
        max-width: 1000px;
    }

    .header-section {
        background: linear-gradient(135deg, #0d6efd, #084298);
        color: white;
        border-radius: 20px;
        padding: 45px 30px;
        margin-bottom: 35px;
        box-shadow: 0 8px 25px rgba(13, 110, 253, 0.25);
    }

    .header-section h1 {
        font-weight: 700;
        margin-bottom: 10px;
    }

    .header-section p {
        margin: 0;
        opacity: 0.9;
    }

    .operation-card {
        background: white;
        border: none;
        border-radius: 18px;
        padding: 30px 20px;
        height: 100%;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.07);
        transition: all 0.3s ease;
    }

    .operation-card:hover {
        transform: translateY(-7px);
        box-shadow: 0 12px 30px rgba(0, 0, 0, 0.12);
    }

    .icon {
        width: 65px;
        height: 65px;
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 20px;
        font-size: 28px;
    }

    .register-icon {
        background: #e7f1ff;
    }

    .update-icon {
        background: #fff3cd;
    }

    .remove-icon {
        background: #f8d7da;
    }

    .select-icon {
        background: #d1e7dd;
    }

    .all-icon {
        background: #e2d9f3;
    }

    .operation-card h4 {
        font-weight: 600;
        margin-bottom: 10px;
    }

    .operation-card p {
        color: #6c757d;
        font-size: 14px;
        min-height: 42px;
    }

    .operation-btn {
        width: 100%;
        border-radius: 10px;
        padding: 10px;
        font-weight: 500;
    }

    .footer-text {
        color: #6c757d;
        font-size: 14px;
        margin-top: 35px;
    }

</style>

</head>

<body>

<div class="container main-container py-5">

    <!-- Header -->
    <div class="header-section text-center">

        <h1>Student Management System</h1>
        
         <h1>${count }</h1>

        <p>
            Manage student records easily and efficiently
        </p>
        
        <a id="logout" href="logout">Logout</a>

    </div>


    <!-- Operations -->
    <div class="row g-4">


        <!-- Register -->
        <div class="col-md-6 col-lg-4">

            <div class="operation-card text-center">

                <div class="icon register-icon">
                    👨‍🎓
                </div>

                <h4>Register Student</h4>

                <p>
                    Add a new student to the system.
                </p>

                <a href="abcd"
                   class="btn btn-primary operation-btn">
                    Register Student
                </a>

            </div>

        </div>


        <!-- Update -->
        <div class="col-md-6 col-lg-4">

            <div class="operation-card text-center">

                <div class="icon update-icon">
                    ✏️
                </div>

                <h4>Update Student</h4>

                <p>
                    Modify existing student information.
                </p>

                <a href="update"
                   class="btn btn-warning operation-btn">
                    Update Student
                </a>

            </div>

        </div>


        <!-- Remove -->
        <div class="col-md-6 col-lg-4">

            <div class="operation-card text-center">

                <div class="icon remove-icon">
                    🗑️
                </div>

                <h4>Remove Student</h4>

                <p>
                    Delete a student record from the system.
                </p>

                <a href="remove"
                   class="btn btn-danger operation-btn">
                    Remove Student
                </a>

            </div>

        </div>


        <!-- Select -->
        <div class="col-md-6 col-lg-6">

            <div class="operation-card text-center">

                <div class="icon select-icon">
                    🔍
                </div>

                <h4>Select Student</h4>

                <p>
                    Search and view a specific student's details.
                </p>

                <a href="select"
                   class="btn btn-success operation-btn">
                    Select Student
                </a>

            </div>

        </div>


        <!-- Select All -->
        <div class="col-md-6 col-lg-6">

            <div class="operation-card text-center">

                <div class="icon all-icon">
                    📋
                </div>

                <h4>Select All Students</h4>

                <p>
                    View complete list of registered students.
                </p>

                <a href="selectAllStudent"
                   class="btn btn-dark operation-btn">
                    View All Students
                </a>

            </div>

        </div>

    </div>


    <!-- Footer -->
    <div class="text-center footer-text">

        Student Management System &copy; 2026

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>