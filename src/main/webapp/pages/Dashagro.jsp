<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link href="css/agrodash.css" rel="stylesheet">
    <title>AgroAgency Dashboard</title>
     <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">
      <%@ include file="headeragro.jsp" %>
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
 
 
</head>
<body style="background-color: #89c2d9;">

  <div class="sidebar">
        <a href="Dashagro"><i class="fas fa-home"></i>Home.</a>
        <a href="addproduct"><i class="fas fa-plus"></i> Add New Product.</a>
        <a href="viewproduct"><i class="fas fa-eye"></i> View All Product.</a>
        <a href="farmdisplay"><i class="fa-solid fa-tractor"></i> Farmer Training Request.</a>
        <a href="studisplay"><i class="fas fa-graduation-cap"></i> Student Training Request.</a>
        <a href="soilrequestfarmeragro"><i class="fa-solid fa-magnifying-glass-chart"></i>Soil Analysis Request.</a>
        <a href="enqirydisplay"><i class="fa-solid fa-cart-plus"></i>Product Enquiry.</a>
    </div>
    
    <%HttpSession s2=request.getSession(false);%>

   <div><h1 style="margin-top: 250px; margin-left: 600px;">Welcome &nbsp;<%out.println(s1.getAttribute("aname"));%>!</h1>
   
    
   
    
   
   
   
   </div>

</body>
</html>