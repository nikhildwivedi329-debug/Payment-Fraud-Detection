<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
        body {
            background: radial-gradient(circle at top left, #4b0082, #2e003e);
            color: orange;
            font-family: "Poppins", sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .contact-container {
            background: rgba(90, 0, 150, 0.4);
            border-radius: 20px;
            box-shadow: 0 0 25px rgba(255, 140, 0, 0.5);
            width: 600px;
            padding: 40px;
            text-align: center;
        }

        h1 {
            color: orange;
            font-size: 36px;
            letter-spacing: 2px;
        }

        p {
            color: #ffae42;
            font-style: italic;
            margin-bottom: 20px;
        }

        label {
            display: block;
            text-align: left;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input, textarea {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 8px;
            background: #f0dfff;
            font-size: 16px;
            margin-bottom: 15px;
        }

        button {
            background: linear-gradient(90deg, #ff5500, #0044ff);
            color: white;
            border: none;
            padding: 14px;
            border-radius: 20px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s;
            width: 100%;
        }

        button:hover {
            transform: scale(1.05);
        }

        .social {
            margin-top: 25px;
        }

        .social a {
            color: orange;
            font-size: 30px;
            margin: 0 15px;
            text-decoration: none;
            transition: 0.3s;
        }

        .social a:hover {
            color: cyan;
        }
    </style>

    <script>
        function sendMessage(event) {
            event.preventDefault();
            alert("✅ Message sent successfully!");
            document.getElementById("contactForm").reset();
        }
    </script>
</head>
<body>

    <div class="contact-container">
        <h1>CONTACT US</h1>
        <p>Have questions? Reach out through the form below</p>

        <form id="contactForm" onsubmit="sendMessage(event)">
            <label>Name</label>
            <input type="text" name="name" placeholder="Enter your name" required>


            <label>Email ID</label>
            <input type="email" name="email" placeholder="Enter your email" required>

            <label>Message</label>
            <textarea name="message" rows="4" placeholder="Write your message here..." required></textarea>

            <button type="submit">Send Message</button>
        </form>

        
    </div>

</body>
</html>
