<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Get Student</title>

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

    .main-container {
        max-width: 700px;
        margin: 60px auto;
    }

    .student-card {
        border: none;
        border-radius: 20px;
        overflow: hidden;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.10);
    }

    .card-header-custom {
        background: linear-gradient(135deg, #198754, #146c43);
        color: white;
        padding: 35px 30px;
        text-align: center;
    }

    .search-icon {
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
        padding: 13px 15px;
        border-radius: 10px;
    }

    .form-control:focus {
        border-color: #198754;
        box-shadow: 0 0 0 0.2rem rgba(25, 135, 84, 0.15);
    }

    .search-btn {
        padding: 12px 25px;
        border-radius: 10px;
        font-weight: 600;
    }

    .details-card {
        margin-top: 30px;
        border: none;
        border-radius: 15px;
        background: #fff;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.07);
        overflow: hidden;
    }

    .details-header {
        background: #e9f7ef;
        color: #146c43;
        padding: 18px 20px;
        font-weight: 700;
        font-size: 18px;
    }

    .student-row {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 16px 20px;
        border-bottom: 1px solid #eee;
    }

    .student-row:last-child {
        border-bottom: none;
    }

    .student-label {
        font-weight: 600;
        color: #6c757d;
    }

    .student-value {
        font-weight: 600;
        color: #212529;
    }

    .student-id {
        background: #d1e7dd;
        color: #146c43;
        padding: 6px 12px;
        border-radius: 20px;
    }

</style>

</head>

<body>


<div class="container">

    <div class="main-container">

        <div class="card student-card">


            <!-- Header -->
            <div class="card-header-custom">

                <div class="search-icon">
                    🔍
                </div>

                <h2>Get Student</h2>

                <p>
                    Search student details by ID
                </p>

            </div>


            <!-- Search Form -->
            <div class="form-body">

                <form action="selectStudent" method="get">

                    <div class="row align-items-end">

                        <div class="col-md-8">

                            <label class="form-label">
                                Student ID
                            </label>

                            <input type="text"
                                   name="id"
                                   class="form-control"
                                   placeholder="Enter Student ID"
                                   required>

                        </div>

                        <div class="col-md-4 mt-3 mt-md-0">

                            <button type="submit"
                                    class="btn btn-success search-btn w-100">

                                🔍 Search

                            </button>

                        </div>

                    </div>

                </form>


                <!-- Student Details -->

                <div class="details-card">

                    <div class="details-header">
                        👨‍🎓 Student Details
                    </div>


                    <div class="student-row">

                        <span class="student-label">
                            Student ID
                        </span>

                        <span class="student-value student-id">
                            ${std.id}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="student-label">
                            Name
                        </span>

                        <span class="student-value">
                            ${std.name}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="student-label">
                            Mobile
                        </span>

                        <span class="student-value">
                            ${std.mobile}
                        </span>

                    </div>


                    <div class="student-row">

                        <span class="student-label">
                            Address
                        </span>

                        <span class="student-value">
                            ${std.address}
                        </span>

                    </div>

                </div>

            </div>

        </div>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>