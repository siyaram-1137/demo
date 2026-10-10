<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student List</title>

    <!-- Bootstrap 5 CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <style>
        body {
            background-color: #f5f7fb;
        }

        .student-card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
        }

        .card-header-custom {
            background: linear-gradient(135deg, #0d6efd, #084298);
            color: white;
            border-radius: 15px 15px 0 0 !important;
            padding: 20px 25px;
        }

        .table {
            margin-bottom: 0;
        }

        .table thead th {
            background-color: #212529;
            color: white;
            font-weight: 600;
            padding: 14px;
            white-space: nowrap;
        }

        .table tbody td {
            padding: 14px;
            vertical-align: middle;
        }

        .table tbody tr {
            transition: 0.2s;
        }

        .table tbody tr:hover {
            background-color: #f0f6ff;
        }

        .student-id {
            background-color: #e7f1ff;
            color: #0d6efd;
            padding: 6px 10px;
            border-radius: 20px;
            font-weight: 600;
        }

        .page-title {
            font-weight: 700;
        }

        .student-count {
            font-size: 14px;
            opacity: 0.9;
        }
    </style>
</head>

<body>

<div class="container py-5">

    <div class="card student-card">

        <!-- Header -->
        <div class="card-header card-header-custom">

            <div class="d-flex justify-content-between align-items-center">

                <div>
                    <h2 class="page-title mb-1">
                        Students Data
                    </h2>

                    <div class="student-count">
                        Student information list
                    </div>
                </div>

                <div>
                    <span class="badge bg-light text-primary fs-6">
                        Student List
                    </span>
                </div>

            </div>

        </div>


        <!-- Table -->
        <div class="card-body p-0">

            <div class="table-responsive">

                <table class="table table-hover align-middle">

                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Student ID</th>
                            <th>Name</th>
                            <th>Mobile</th>
                            <th>Address</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                        <c:forEach var="std" items="${stdList}" varStatus="status">

                            <tr>

                                <td class="text-muted">
                                    ${status.count}
                                </td>

                                <td>
                                    <span class="student-id">
                                        ${std.id}
                                    </span>
                                </td>

                                <td>
                                    <strong>
                                        ${std.name}
                                    </strong>
                                </td>

                                <td>
                                    <span class="text-dark">
                                        ${std.mobile}
                                    </span>
                                </td>

                                <td>
                                    <span class="text-muted">
                                        ${std.address}
                                    </span>
                                </td>

                                <td>
                                    <form action="selectStudent">
                                    <input type="hidden" name="id" value="${std.id}">
                                    <input type="submit"  value="Edit">
                                    </form>
                                    
                                    <form action="removeStudent">
                                    <input type="hidden" name="id" value="${std.id}">
                                    <input type="submit"  value="Remove">
                                    </form>
                                </td>

                            </tr>

                        </c:forEach>

                    </tbody>

                </table>

            </div>

        </div>

        <!-- Footer -->
        <div class="card-footer bg-white border-0 text-end py-3">

            <small class="text-muted">
                Total Students:
                <strong>${stdList.size()}</strong>
            </small>

        </div>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>
</html>