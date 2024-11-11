<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>404 Error - Page Not Found</title>

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap"
	rel="stylesheet">

<!-- Custom CSS -->
<link rel="stylesheet" href="css/error.css">

</head>

<body>
	<div class="container">
		<h1 class="error-title">404</h1>
		<p class="error-message">Oops! ${errorMessage}</p>
		<a href="index.jsp" class="home-btn">Go Home</a>
	</div>

</body>

</html>
