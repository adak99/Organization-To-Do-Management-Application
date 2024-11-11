<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<%@ include file="../allcomponents/allcss.jsp"%>
<style>
    .container {
        text-align: center;
        background-color: #ffffff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
        max-width: 400px;
    }

    /* Welcome Header Styling */
    h1 {
        color: #44D62C;
        font-size: 2.4em;
        font-weight: bold;
        margin: 0 0 20px;
    }

    /* Button-like link styling */
    .btn-link {
        display: inline-block;
        padding: 10px 20px;
        font-size: 1.1em;
        color: #ffffff;
        background-color: #3498db;
        border-radius: 5px;
        text-decoration: none;
        font-weight: bold;
        transition: background-color 0.3s ease;
    }

    .btn-link:hover {
        background-color: #2980b9;
    }
</style>
</head>
<body>

	<header>
		<%@ include file="navbar.jsp" %>
	</header>
    <div class="container" style="margin-top: 10%; margin-bottom: 30%;">
        <h1>Welcome, Admin</h1>
        <a href="allWork.jsp" class="btn-link">View All Works</a>
    </div>
   
    <%@ include file="../allcomponents/footer.jsp"%>
</body>
</html>
