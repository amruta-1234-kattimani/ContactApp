<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thank You</title>
    <style>
        body {
            background: linear-gradient(135deg, #89f7fe, #66a6ff);
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .thank-you-card {
            background-color: #fff;
            padding: 30px 40px;
            border-radius: 20px;
            box-shadow: 0 12px 25px rgba(0, 0, 0, 0.25);
            transform: scale(0.8) translateY(50px);
            opacity: 0;
            animation: popIn 1s ease-out forwards;
            text-align: center;
            max-width: 500px;
            width: 90%;
        }

        @keyframes popIn {
            to {
                transform: scale(1) translateY(0);
                opacity: 1;
            }
        }

        h2 {
            color: #28a745;
            font-size: 28px;
            margin-bottom: 15px;
        }

        p {
            color: #333;
            font-size: 16px;
            margin: 8px 0;
        }

        .highlight {
            font-weight: bold;
            color: #007bff;
        }

        .btn-container {
            margin-top: 20px;
        }

        .btn {
            padding: 10px 20px;
            margin: 5px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 14px;
            transition: background-color 0.3s ease;
        }

        .btn-home {
            background-color: #007bff;
            color: white;
        }

        .btn-home:hover {
            background-color: #0056b3;
        }

        .btn-print {
            background-color: #28a745;
            color: white;
        }

        .btn-print:hover {
            background-color: #1e7e34;
        }
    </style>

    <!-- Auto-redirect to home page -->
    <script>
        setTimeout(() => {
            window.location.href = "index.jsp";
        }, 10000); // Redirect after 5 seconds
    </script>
</head>
<body>
    <div class="thank-you-card">
        <h2>🎉 Thank You!</h2>
        <p>Your message has been submitted successfully.</p>
        <p><span class="highlight">Name:</span> <%= request.getParameter("name") %></p>
        <p><span class="highlight">Phone:</span> <%= request.getParameter("phone") %></p>
        <p><span class="highlight">Email:</span> <%= request.getParameter("email") %></p>
        <p><span class="highlight">Message:</span> <%= request.getParameter("message") %></p>
        <p>We  will get back to you shortly</p>
        

        <div class="btn-container">
            <button class="btn btn-home" onclick="window.location.href='index.jsp'">🏠 Back to Home</button>
            <button class="btn btn-print" onclick="window.print()">🖨 Print Message</button>
        </div>
    </div>
</body>
</html>