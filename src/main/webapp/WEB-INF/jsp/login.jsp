<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Add Student</title>

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
        margin: 70px auto;
    }

    .student-card {
        border: none;
        border-radius: 20px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.10);
        overflow: hidden;
    }

    .card-header-custom {
        background: linear-gradient(135deg, #0d6efd, #084298);
        color: white;
        padding: 30px;
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
        border-color: #0d6efd;
        box-shadow: 0 0 0 0.2rem rgba(13, 110, 253, 0.15);
    }

    .submit-btn {
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

                <h2>🎓 Login Student</h2>

                <p>
                    Enter student information below
                </p>

            </div>


            <!-- Form Body -->
            <div class="form-body">


                <!-- Success Message -->
                <p style="color:green" id="msg1">
                    ${successMsg}
                </p>


                <!-- Error Message -->
                <p style="color:red">
                    ${errMsg}
                </p>


                <form action="checkUser" method="post">


                    <!-- Name -->
                    <div class="mb-3">

                        <label class="form-label">
                            User Name
                        </label>

                        <input type="text"
                               name="username"
                               class="form-control"
                               placeholder="Enter User Name Here"
                               required>

                    </div>


                    <!-- Mobile -->
                    <div class="mb-3">

                        <label class="form-label">
                            Password
                        </label>

                        <input type="password"
                               name="password"
                               class="form-control"
                               placeholder="Enter Password Here"
                               required>

                    </div>


                    <!-- Submit -->
                    <button type="submit"
                            class="btn btn-primary submit-btn">

                        Login

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