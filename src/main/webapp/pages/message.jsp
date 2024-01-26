<!DOCTYPE html>
<%@page import="org.apache.tomcat.util.net.AprEndpoint.Sendfile"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Added Successfully</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .message-container {
            max-width: 400px;
            margin: 50px auto;
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .message-header {
            font-size: 24px;
            font-weight: bold;
            color: #333333;
            margin-bottom: 15px;
        }

        .message-text {
            font-size: 16px;
            color: #555555;
            margin-bottom: 20px;
        }

        .happy-shopping {
            font-size: 25px;
            color: #007bff;
            font-weight: bold;
             padding:15px;
        
         background-color:#a2d2ff;
        }
        
        a{
         text-decoration:none;
        
        }
    </style>
</head>
<body>
    <div class="message-container">
        <div class="message-header" style="color:red;"> Product Added Successfully! </div>
        
        <a href="addproductadmin"><div class="happy-shopping">Back to Home</div></a>
        
    </div>
    
  
</body>
</html>
