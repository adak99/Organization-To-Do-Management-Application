<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirm page</title>
<%@ include file="allcomponents/allcss.jsp"%>
<link rel="stylesheet" href="css/confirm.css">
</head>
<body>
	<!-- header -->
	<header>
		<%@include file="allcomponents/navbar.jsp"%>
	</header>
	<!-- header end -->
		
	<!-- main start -->
	<main style="padding-bottom: 100px;">
		<div class="container">
			<h1>Successfully inserted your data!</h1>
			<p>Thank you, <b>${name}</b> for registering with us!</p>
		</div>

		<div class="success-animation">
			<svg class="checkmark" xmlns="http://www.w3.org/2000/svg"
				viewBox="0 0 52 52">
                <circle class="checkmark__circle" cx="26" cy="26" r="25"
					fill="none" />
                <path class="checkmark__check" fill="none"
					d="M14.1 27.2l7.1 7.2 16.7-16.8" />
            </svg>
		</div>
	</main>
	<!-- main end -->
	
	<!-- footer -->
	<footer>
		<%@ include file="allcomponents/footer.jsp"%>
	</footer>
	<!-- footer end -->
</body>
</html>