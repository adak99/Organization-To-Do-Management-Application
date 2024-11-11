<footer>
        <div class="footer-container">
            <div class="footer-column">
                <h3>Company</h3>
                <ul>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">Privacy Policy</a></li>
                    <li><a href="#">Affiliate Program</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Get Help</h3>
                <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Order Status</a></li>
                    <li><a href="#">Payment Options</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Online Shop</h3>
                <ul>
                    <li><a href="#">Books</a></li>
                    <li><a href="#">PDF</a></li>
                    <li><a href="#">Research Paper</a></li>
                    <!--  <li><a href="#"></a></li>-->
                </ul>
            </div>
            <div class="footer-column">
                <h3>Follow Us</h3>
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a> <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a> <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>

        <div alt="licence">
            <div class="make-broder">
                <div class="border-line">
                </div>
            </div>

            <div class="licence-content">
                <p>Copyright © 2024 (my company) Inc. All rights reserved.</p>
            </div>

        </div>

    </footer>
    
    
    
<style>
footer {
    background: black;
    padding: 60px 0;
    color: #e6e6e6;
}

.footer-container {
    display: flex;
    justify-content: space-between;
    max-width: 1300px;
    margin: 0 auto;
    padding: 0 30px;
}

.footer-column {
    flex: 1;
    padding: 0 20px;
    min-width: 150px;
}

.footer-column h3 {
    margin-bottom: 20px;
    font-size: 22px;
    font-weight: 600;
    color: #ffffff;
    border-bottom: 2px solid #ff4d6d;
    display: inline-block;
    padding-bottom: 6px;
    transition: color 0.3s ease-in-out;
}

.footer-column h3:hover {
    color: #ff4d6d;
}

.footer-column ul {
    list-style: none;
    margin-top: 15px;
}

.footer-column ul li {
    margin-bottom: 12px;
}

.footer-column ul li a {
    color: #b3b3b3;
    text-decoration: none;
    font-size: 16px;
    transition: color 0.3s ease-in-out, transform 0.2s ease-in-out;
}

.footer-column ul li a:hover {
    color: #ff4d6d;
    transform: translateX(5px);
}

.social-icons {
    display: flex;
    gap: 20px;
    margin-top: 20px;
}

.social-icons a {
    text-decoration: none;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 45px;
    height: 45px;
    border-radius: 50%;
    background-color: #333;
    color: #fff;
    font-size: 20px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
    transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.2s ease;
}

.social-icons a:hover {
    background-color: #ff4d6d;
    transform: translateY(-4px) scale(1.1);
    box-shadow: 0 8px 16px rgba(255, 77, 109, 0.3);
}


.make-broder {
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 10px;

}

.border-line {
    border-bottom: 1px solid rgb(126, 126, 126);
    max-width: 80%;

    width: 100%;
}

.licence-content p {
    text-align: center;
    color: rgb(126, 126, 126);
    font-family: Arial, Helvetica, sans-serif;
    font-size: 14px;
}
</style>
