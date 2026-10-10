<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Update Student</title>

<!-- Bootstrap 5 CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>

<style>

    body {
        background: #f5f7fb;
        min-height: 100vh;
    }

    .form-container {
        max-width: 550px;
        margin: 60px auto;
    }

    .student-card {
        border: none;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.10);
    }

    .card-header-custom {
        background: linear-gradient(135deg, #ffc107, #ff9800);
        color: #212529;
        padding: 30px;
        text-align: center;
    }

    .card-header-custom h2 {
        font-weight: 700;
        margin-bottom: 8px;
    }

    .card-header-custom p {
        margin: 0;
        opacity: 0.85;
    }

    .form-body {
        padding: 35px;
    }

    .form-label {
        font-weight: 600;
        color: #343a40;
    }

    .form-control {
        padding: 12px 15px;
        border-radius: 10px;
    }

    .form-control:focus {
        border-color: #ffc107;
        box-shadow: 0 0 0 0.2rem rgba(255, 193, 7, 0.20);
    }

    .update-btn {
        width: 100%;
        padding: 12px;
        border-radius: 10px;
        font-weight: 600;
        font-size: 16px;
    }

    .alert {
        border-radius: 10px;
    }

</style>

</head>

<body>


<div class="container">

    <div class="form-container">

        <div class="card student-card">


            <!-- Header -->
            <div class="card-header-custom">

                <h2>✏️ Update Student</h2>

                <p>
                    Update existing student information
                </p>

            </div>


            <!-- Form -->
            <div class="form-body">


                <!-- Success Message -->
                <p class="text-success fw-semibold" id="msg1">
                    ${successMsg}
                </p>


                <!-- Error Message -->
                <p class="text-danger fw-semibold">
                    ${errMsg}
                </p>


                <form action="updateStudent" method="get">


                    <!-- Student ID -->
                    <div class="mb-3">

                        <label class="form-label">
                            Student ID
                        </label>

                        <input type="text"
                               name="id"
                               class="form-control"
                               placeholder="Enter Student ID"
                                value="${std.id}">

                    </div>


                    <!-- Name -->
                    <div class="mb-3">

                        <label class="form-label">
                            Student Name
                        </label>

                        <input type="text"
                               name="name"
                               class="form-control"
                               placeholder="Enter Name Here"
                               required value="${std.name}">

                    </div>


                    <!-- Mobile -->
                    <div class="mb-4">

                        <label class="form-label">
                            Mobile Number
                        </label>

                        <input type="text"
                               name="mobile"
                               class="form-control"
                               placeholder="Enter Mobile Here"
                                value="${std.mobile}">

                    </div>


                    <!-- Submit -->
                    <button type="submit"
                            class="btn btn-warning update-btn">

                        Update Student

                    </button>


                </form>

            </div>

        </div>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>


<script type="text/javascript">

    $(document).ready(function () {

        setTimeout(function () {

            $("#msg1").fadeOut();

        }, 5000);

    });

</script>

</body>
</html>