<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Transaction Result | Fraud Detection</title>
    <link rel="stylesheet" href="style.css">
    <style>
        body {
            background: url("assets/images/bg-payment.jpg") no-repeat center center/cover;
            font-family: 'Poppins', sans-serif;
            color: #fff;
            text-align: center;
        }
        .result-card {
            width: 500px;
            margin: 120px auto;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 0 30px rgba(255,0,255,0.3);
        }
        h2 {
            color: #00ffff;
            margin-bottom: 20px;
        }
        .score {
            font-size: 22px;
            color: #ffcc00;
        }
        .decision {
            font-size: 26px;
            font-weight: bold;
            color: #00ff99;
            margin: 10px 0;
        }
        .btn {
            background: linear-gradient(90deg, #00bfff, #ff00ff);
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 25px;
            cursor: pointer;
            margin-top: 20px;
        }
        .btn:hover {
            box-shadow: 0 0 20px cyan;
        }
    </style>
</head>
<body>
    <div class="result-card">
        <h2>Transaction Result</h2>
        <p class="score">Fraud Score: <strong><%= request.getAttribute("fraudScore") %></strong></p>
        <p class="decision">Decision: <%= request.getAttribute("decision") %></p>
        <p>Transaction ID: <%= request.getAttribute("transactionId") %></p>
        <a href="index.jsp"><button class="btn">Back to Home</button></a>
    </div>
</body>
</html>
