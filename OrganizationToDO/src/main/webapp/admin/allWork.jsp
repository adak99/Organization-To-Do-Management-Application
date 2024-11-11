<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.DAO.WorkDAOImpl"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.entity.WorkData"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Work Page</title>
<%@ include file="../allcomponents/allcss.jsp"%>
<style>
/* General styling */
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f5f7fa;
    color: #333;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 900px;
    margin: 50px auto;
    padding: 20px;
    background-color: #ffffff;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
}

h2 {
    color: #34495e;
    font-size: 1.8em;
    margin-bottom: 20px;
    text-align: center;
}

/* Alert messages */
.alert {
    padding: 15px;
    margin-bottom: 20px;
    border-radius: 5px;
    font-size: 1em;
    text-align: center;
}

.alert-success {
    background-color: #e9f7ef;
    color: #28a745;
    border: 1px solid #c3e6cb;
}

.alert-danger {
    background-color: #f8d7da;
    color: #dc3545;
    border: 1px solid #f5c6cb;
}

.alert-warning {
    background-color: #fff3cd;
    color: #856404;
    border: 1px solid #ffeeba;
}

/* Table styling */
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
    font-size: 0.95em;
}

.table thead {
    background-color: #2c3e50;
    color: #ffffff;
}

.table th, .table td {
    padding: 12px 15px;
    border-bottom: 1px solid #ddd;
    text-align: left;
}

.table tr:nth-child(even) {
    background-color: #f4f6f9;
}

.mya {
    color: #3498db;
    text-decoration: none;
}

.mya:hover {
    color: #1f618d;
    text-decoration: underline;
}

/* Delete button styling */
.btn-delete {
    background-color: #e74c3c;
    color: white;
    padding: 8px 14px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 0.9em;
    display: inline-flex;
    align-items: center;
}

.btn-delete i {
    margin-right: 5px;
}

.btn-delete:hover {
    background-color: #c0392b;
}
</style>
</head>
<body>
    <header>
        <%@include file="navbar2.jsp"%>
    </header>

    <!-- Restricted part -->
    <c:if test="${empty userObj}">
        <c:redirect url="../login.jsp" />
    </c:if>

    <!-- Success Message -->
    <c:if test="${not empty success}">
        <div class="alert alert-success">
            <strong>${success}</strong>
        </div>
        <c:remove var="success" scope="session" />
    </c:if>

    <!-- Failure Message -->
    <c:if test="${not empty failed}">
        <div class="alert alert-danger">
            <strong>${failed}</strong>
        </div>
        <c:remove var="failed" scope="session" />
    </c:if>

    <div class="container">
        <h2>All Work</h2>

        <%
            WorkDAOImpl dao = new WorkDAOImpl(DBConnect.getConn());
            List<WorkData> workList = dao.getAllWork();

            if (workList != null && !workList.isEmpty()) {
        %>

        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Company Name</th>
                    <th>Work Description</th>
                    <th>GitHub Repo Link</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (WorkData work : workList) {
                %>
                <tr>
                    <td><%= work.getId() %></td>
                    <td><%= work.getCo_name() %></td>
                    <td><%= work.getDescription() %></td>
                    <td><a href="<%= work.getGit_url() %>" target="_blank" class="mya">View Repo</a></td>
                    <td>
                        <a href="../delete?id=<%= work.getId() %>"
                           onclick="return confirm('Are you sure you want to delete this item?');" 
                           class="btn-delete">
                            <i class="fa fa-trash"></i> Delete
                        </a>
                    </td>
                </tr>
                <% 
                    }
                %>
            </tbody>
        </table>

        <% 
            } else { 
        %>
        <div class="alert alert-warning">
            <strong>No work available in the database.</strong>
        </div>
        <% 
            } 
        %>
    </div>
</body>
</html>
