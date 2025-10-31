<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Make Transaction | Fraud Detection</title>
      <link rel="stylesheet" href="style.css"> 
    <style>
        body {
            background: url("assets/images/bg-payment.jpg") no-repeat center center/cover;
            font-family: 'Poppins', sans-serif;
            color: #fff;
        }
        .form-container {
            width: 400px;
            margin: 100px auto;
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 0 25px rgba(0, 255, 255, 0.3);
            padding: 30px;
            text-align: center;
        }
        .form-container h2 {
            margin-bottom: 20px;
            color: cyan;
        }
        input, select {
            width: 90%;
            padding: 10px;
            margin: 8px 0;
            border: none;
            border-radius: 10px;
            outline: none;
            text-align: center;
        }
        .btn {
            background: linear-gradient(90deg, #00bfff, #ff00ff);
            border: none;
            color: white;
            font-weight: bold;
            padding: 12px 20px;
            border-radius: 25px;
            cursor: pointer;
            transition: 0.3s;
        }
        .btn:hover {
            box-shadow: 0 0 15px cyan;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Enter Transaction Details</h2>
        <form action="ProcessTransactionServlet" method="post">
            <input type="text" name="userId" placeholder="User ID" required><br>
            <input type="text" name="cardNumber" placeholder="Card Number" required><br>
            <input type="number" name="amount" placeholder="Amount" step="0.01" required><br>
            <select name="currency" required>
                <option value="">Select Currency</option>
                <option value="USD">USD</option>
                <option value="INR">INR</option>
                <option value="EUR">EUR</option>
            </select><br>
            <input type="text" name="country" placeholder="Country" required><br>
            <button type="submit" class="btn">Submit Payment</button>
        </form>
    </div>
</body>
</html>
