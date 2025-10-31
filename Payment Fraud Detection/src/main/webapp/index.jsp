<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Online Payment Fraud Detection</title>
  <link rel="stylesheet" href="style.css">

  <style>
  
    .modal {
      display: none;
      position: fixed;
      z-index: 1000;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0,0,0,0.8);
      justify-content: center;
      align-items: center;
    }

    .modal-content {
      background-color: rgba(25, 0, 60, 0.95);
      color: #fff;
      padding: 25px 35px;
      border-radius: 15px;
      width: 500px;
      max-width: 90%;
      box-shadow: 0 0 25px rgba(0, 255, 255, 0.3);
      position: relative;
      text-align: center;
      animation: fadeIn 0.4s ease-in-out;
    }

    @keyframes fadeIn {
      from {transform: scale(0.8); opacity: 0;}
      to {transform: scale(1); opacity: 1;}
    }

    .modal h2 {
      color: #00ffff;
      margin-bottom: 10px;
    }

    .modal p {
      color: #ccc;
      line-height: 1.6;
      font-size: 15px;
      margin: 10px 0;
    }

    .close-btn {
      position: absolute;
      top: 10px;
      right: 15px;
      font-size: 22px;
      color: #fff;
      cursor: pointer;
    }

    .close-btn:hover {
      color: #00ffff;
    }

    /* Social Icons */
    .social-icons {
      margin-top: 20px;
    }

    .social-icons a {
      display: inline-block;
      margin: 0 10px;
      transition: transform 0.3s ease;
    }

    .social-icons a:hover {
      transform: scale(1.1);
    }

    .social-icons img {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      border: 2px solid #00ffff;
      padding: 5px;
      background: rgba(255,255,255,0.1);
    }


    nav a.btn {
      margin-right: 10px;
    }

    nav .about-btn, nav .contact-btn {
      background: linear-gradient(45deg, #8900ff, #ff00aa);
      color: white;
      border: none;
      padding: 8px 18px;
      border-radius: 25px;
      font-weight: bold;
      cursor: pointer;
      transition: 0.3s;
    }

    nav .about-btn:hover, nav .contact-btn:hover {
      transform: scale(1.05);
      box-shadow: 0 0 10px #ff00aa;
    }
  </style>
</head>

<body>
  <div class="overlay"></div>
  <div class="hero-container">
    <header>
      <h1 class="logo">Online Payment Fraud Detection</h1>
      <nav>
        <a href="transaction.jsp" class="btn">Make Transaction</a>
        <a href="admin/login.jsp" class="btn secondary">User Login</a>
        <a href="admin/register.jsp" class="btn secondary">User Register</a>
        <button class="about-btn" onclick="openModal('aboutModal')">About Us</button>
        <button class="contact-btn" onclick="openModal('contactModal')">Contact Us</button>
      </nav>
    </header>

    <main class="hero-content">
      <h2>Secure. Fast. Reliable.</h2>
      <p>Detect and prevent fraudulent transactions in real time with intelligent fraud scoring.</p>
      <a href="transaction.jsp" class="cta-btn">Start Payment</a>
      
    </main>
  </div>

  <!-- About Us Modal -->
  <div id="aboutModal" class="modal">
    <div class="modal-content">
      <span class="close-btn" onclick="closeModal('aboutModal')">&times;</span>
      <h2>About the Developer</h2>
      <p>
        Hello! I'm <b>Nikhil Dwivedi</b>, a passionate Java and Web Developer.<br>
        This project "<b>Online Payment Fraud Detection</b>" was built to make online transactions safer using smart fraud detection techniques.
      </p>
      <p>
        My goal is to create secure and efficient applications that make technology more trustworthy and accessible.
      </p>
      <div class="social-icons">
        <a href="https://www.linkedin.com/in/nikhil-dwivedi-1aa797338?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app" target="_blank">
        
          <img src="https://cdn-icons-png.flaticon.com/512/174/174857.png" alt="LinkedIn">
        </a>
        <a href="https://www.instagram.com/nikhildwivedi2006?igsh=MW8xYnpjc3ptYzhnag==" target="_blank">
          <img src="https://cdn-icons-png.flaticon.com/512/2111/2111463.png" alt="Instagram">
        </a>
      </div>
    </div>
  </div>

 
  <div id="contactModal" class="modal">
      <a href="contact.jsp">Contact Us</a>
      
    </div>



  <script>
    function openModal(id) {
      document.getElementById(id).style.display = 'flex';
    }
    function closeModal(id) {
      document.getElementById(id).style.display = 'none';
    }
    window.onclick = function(e) {
      const modals = document.querySelectorAll('.modal');
      modals.forEach(m => {
        if (e.target == m) m.style.display = 'none';
      });
    }
  </script>
</body>
</html>
