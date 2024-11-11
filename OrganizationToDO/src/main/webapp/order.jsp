<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order page</title>
<link rel="stylesheet" href="css/order.css"> <!-- Corrected to order.css -->
<%@ include file="allcomponents/allcss.jsp" %>
</head>
<body>

    <!-- Header -->
    <header>
        <%@ include file="allcomponents/navbar.jsp" %>
    </header>

    <div class="container mt-5">
        <h2 class="text-center mb-4">Work Details</h2>
        
        <!-- Display success or failure message -->
        <c:if test="${not empty success}">
            <div class="alert alert-success">${success}</div>
        </c:if>
        <c:if test="${not empty faild}">
            <div class="alert alert-danger">${faild}</div>
        </c:if>
        
        <!-- Form Section -->
        <form id="workForm" action="add_work" method="post" class="mb-5 fade-in"> <!-- Added method="post" -->
            <div class="mb-3">
                <label for="companyName" class="form-label">Company Name</label>
                <input name="co_name" type="text" class="form-control" id="companyName" placeholder="Enter company name*" required>
            </div>
            <div class="mb-3">
                <label for="workDetails" class="form-label">Work Details</label>
                <textarea name="description" class="form-control" id="workDetails" rows="3" placeholder="Describe your work*" required></textarea> <!-- Changed to textarea -->
            </div>
            <div class="mb-3">
                <label for="githubRepo" class="form-label">GitHub Repository Link</label>
                <input name="git_url" type="url" class="form-control" id="githubRepo" placeholder="Enter GitHub repository link*" required>
            </div>
            <center><button type="submit" class="btn btn-primary" style="margin-bottom: 20%;">Submit Details</button></center>
        </form>
    </div>

    <!-- Footer -->
    <footer>
        <%@ include file="allcomponents/footer.jsp" %>
    </footer>

    <!-- Bootstrap JS and Popper.js -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
