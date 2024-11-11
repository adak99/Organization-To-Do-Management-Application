<header style="background: black;">
	<nav class="header-nav">
		<div class="logo">CodeCraft Studio.in</div>
		<ul class="nav-links">
			<li><a href="admin_home.jsp">Home</a></li>
			<li><a href="#services">Services</a></li>
			<li><a href="#about-us">About Us</a></li>
			<li><a href="../login.jsp">Login</a></li>
		</ul>
	</nav>
</header>

<style>
* {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: rgb(36, 36, 36);
}

.header-nav {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 10%;
    color: #fff;
    position: relative;
    z-index: 1000;
}

.header-nav .logo {
    font-size: 1.8em;
    font-weight: bold;
    color: white;
}

.header-nav .nav-links {
    display: flex;
    gap: 25px;
}

.header-nav .nav-links li {
    list-style: none;
}

.header-nav .nav-links a {
    color: #f3f3f3;
    text-decoration: none;
    font-size: 1.2em;
    position: relative;
    transition: color 0.3s ease;
}

.header-nav .nav-links a::before {
    content: "";
    position: absolute;
    width: 100%;
    height: 2px;
    bottom: -6px;
    left: 0;
    background-color: #f3f3f3;
    visibility: hidden;
    transform: scaleX(0);
    transition: all 0.3s ease-in-out;
}

.header-nav .nav-links a:hover {
    color: #ffc107;
}

.header-nav .nav-links a:hover::before {
    visibility: visible;
    transform: scaleX(1);
}

</style>