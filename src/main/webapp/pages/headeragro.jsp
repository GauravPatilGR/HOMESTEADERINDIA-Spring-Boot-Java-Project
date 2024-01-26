<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HeaderAgro</title>
 <!-- Favicon -->
     <link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">

</head>
<body>
       <!-- Session get -->
       <%HttpSession s1=request.getSession(false);%>


     <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5" style="z-index:5;">
        <a href="" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Homesteader</span>India</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
               
                <a href="agroWelcome" style="color: white;">Welcome&nbsp;<i class="fa-solid fa-user">&nbsp;</i><%out.println(s1.getAttribute("aname"));%><img src="img/headerlogo.png" alt="" style="margin: 0px;  width: 60px;  margin-right:850px; "></a>
                <a href="agroWelcome" class="nav-item nav-link "><i class="fa-solid fa-house"></i>Home</a>
               
               
                <a href="Dashagro" class="nav-item nav-link"><i class="fa-solid fa-user-tie"></i>Dashboard</a>
                <a href="logoutagro" class="nav-item nav-link"><i class="fa-solid fa-right-from-bracket"></i>Logout</a>
              
                
               
            </div>
        </div>
    </nav>
    <!-- Navbar End -->

</body>
</html>