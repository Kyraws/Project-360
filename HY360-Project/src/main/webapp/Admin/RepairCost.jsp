<%@ page import="java.sql.Connection" %>
<%@ page import="database.DatabaseConnection" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="static database.init.VehicleRentalSystem.*" %>

<%
    Connection connection = DatabaseConnection.getConnection();
    List<Map<String, String>> costs = fetchCostOfRepair(connection);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Repair Cost Display</title>
    <!-- Include Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            padding: 20px;
        }

        table {
            width: 100%;
            margin-bottom: 1rem;
            color: #212529;
        }

        th,
        td {
            padding: 1rem;
            vertical-align: top;
            border-top: 1px solid #dee2e6;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        tbody tr:nth-of-type(odd) {
            background-color: rgba(0, 0, 0, 0.05);
        }
    </style>
</head>
<body>

<div class="container mt-3">

    <h1>Repair Cost Display</h1>

    <table class="table">
        <thead>
        <tr>
            <th>Month</th>
            <th>Cost</th>
            <!-- Add more headers as needed -->
        </tr>
        </thead>
        <tbody>
        <%
            // Iterate through the list and display the information in a table
            for (Map<String, String> cost : costs) {
        %>
        <tr>
            <td><%= cost.get("repair_month") %>
            </td>
            <td><%= cost.get("total_repair_cost") %>
            </td>
            <!-- Add more cells as needed -->
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

</div>

<!-- Include Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>
</html>
