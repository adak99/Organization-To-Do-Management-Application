<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register page</title>
<%@ include file="allcomponents/allcss.jsp"%>
</head>
<body>

	<!-- header -->
	<header>
		<%@include file="allcomponents/navbar.jsp"%>
	</header>
	<!-- header end -->
	
	
	<!-- main -->
	<main>
        <div class="container mt-5" style="padding-bottom: 10%;">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="card shadow-lg" style="border-radius: 15px;">
                        <div class="card-body">
                            <h5 class="card-title text-center mb-4" style="font-family: 'Roboto Mono', monospace; color: #4a4a4a;">User Registration</h5>
                            <form action="register" method="post">
                                <div class="form-group mb-3">
                                    <label for="exampleText">Enter your name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="Enter your full name" required="required" style="border-radius: 8px;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Enter your email" required="required" style="border-radius: 8px;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputNumber">Phone no</label>
                                    <input type="number" class="form-control" id="phno" name="phno" placeholder="Enter your phone number" required="required" style="border-radius: 8px;">
                                </div>
                                <div class="form-group mb-3">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" name="password" placeholder="Password" required="required" style="border-radius: 8px;">
                                </div>
                                <div class="form-check mb-3">
                                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                    <label class="form-check-label" for="exampleCheck1">Privacy & Policy</label>
                                </div>
                                <button type="submit" class="btn w-100" style="background: linear-gradient(45deg, #4b6cb7, #182848); color: #fff; border-radius: 8px;">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
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