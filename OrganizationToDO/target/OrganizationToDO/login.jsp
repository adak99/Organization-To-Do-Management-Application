<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
<%@ include file="allcomponents/allcss.jsp"%>
<link rel="stylesheet" href="css/login.css">
</head>
<body>
	<header>
		<%@include file="allcomponents/navbar.jsp"%>
	</header>
	
	
	<main style="padding-bottom: 20%;">
		<div class="login-container">
        <h1 class="login-title">Log in</h1>
        <form class="login-form" action="login" method="post">

            <!-- Displaying Errors -->
          <!--   <c:if test="${not empty faild}">
                <p class="text-center text-danger">${faild}</p>
                <c:remove var="faild" scope="session" />
            </c:if>
            <c:if test="${not empty success}">
                <p class="text-center text-success">${success}</p>
                <c:remove var="success" scope="session" />
            </c:if>  -->


            <label for="emailInput"> <i class="fa-solid fa-envelope"></i> Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email" required />

            <label for="passwordInput"><i class="fa-solid fa-lock"></i> Password</label>
            <input type="password" id="password" name="password" placeholder="Enter password" required />

            <button type="submit" class="submit-button">Submit</button>

            <a href="registration.jsp">Create new account</a>
        </form>
    </div>
	</main>
	
	
</body>
</html>