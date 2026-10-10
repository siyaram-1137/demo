<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Remove Student</title>

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
        max-width: 500px;
        margin: 80px auto;
    }

    .student-card {
        border: none;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.10);
    }

    .card-header-custom {
        background: linear-gradient(135deg, #dc3545, #a71d2a);
        color: white;
        padding: 35px 30px;
        text-align: center;
    }

    .card-header-custom h2 {
        font-weight: 700;
        margin-bottom: 8px;
    }

    .card-header-custom p {
        margin: 0;
        opacity: 0.9;
    }

    .delete-icon {
        width: 70px;
        height: 70px;
        background: rgba(255, 255, 255, 0.15);
        border-radius: 50%;
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 auto 15px;
        font-size: 32px;
    }

    .form-body {
        padding: 35px;
    }

    .form-label {
        font-weight: 600;
        color: #343a40;
    }

    .form-control {
        padding: 13px 15px;
        border-radius: 10px;
    }

    .form-control:focus {
        border-color: #dc3545;
        box-shadow: 0 0 0 0.2rem rgba(220, 53, 69, 0.15);
    }

    .remove-btn {
        width: 100%;
        padding: 12px;
        border-radius: 10px;
        font-weight: 600;
        font-size: 16px;
    }

    .warning-box {
        background: #fff3cd;
        border: 1px solid #ffecb5;
        color: #664d03;
        padding: 12px 15px;
        border-radius: 10px;
        font-size: 14px;
        margin-bottom: 25px;
    }

</style>

</head>

<body>


<div class="container">

    <div class="form-container">

        <div class="card student-card">


            <!-- Header -->
            <div class="card-header-custom">

                <div class="delete-icon">
                    🗑️
                </div>

                <h2>Remove Student</h2>

                <p>
                    Delete a student from the system
                </p>

            </div>


            <!-- Form Body -->
            <div class="form-body">


                <!-- Success Message -->
                <p class="text-success fw-semibold" id="msg1">
                    ${successMsg}
                </p>


                <!-- Error Message -->
                <p class="text-danger fw-semibold">
                    ${errMsg}
                </p>


                <!-- Warning -->
                <div class="warning-box">
                    ⚠️ Please make sure you enter the correct
                    Student ID. This action may permanently
                    remove the student record.
                </div>


                <form action="removeStudent" method="get">


                    <!-- Student ID -->
                    <div class="mb-4">

                        <label class="form-label">
                            Student ID
                        </label>

                        <input type="text"
                               name="id"
                               class="form-control"
                               placeholder="Enter Student ID"
                               required>

                    </div>


                    <!-- Submit -->
                    <button type="submit"
                            class="btn btn-danger remove-btn">

                        🗑️ Remove Student

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