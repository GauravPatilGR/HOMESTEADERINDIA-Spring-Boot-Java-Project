<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Header File</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

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
    
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid px-5 d-none d-lg-block top_bar">
        <div class="row gx-5 py-3 align-items-center">
            <div class="col-lg-3" style="color: darkslategrey;font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman',">
                <div class="d-flex align-items-center justify-content-start">
                    <i class="bi bi-phone-vibrate fs-1 text-primary me-2"></i>
                    <h2 class="mb-0">+91 9834583904</h2>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="d-flex align-items-center justify-content-center">
                    <a href="/home" class="navbar-brand ms-lg-5">
                        <h1 class="m-0 display-4 text-primary"><span class="text-secondary">Homesteader</span>India</h1>
                    </a>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="d-flex align-items-center justify-content-end">
                    <a class="btn btn-primary btn-square rounded-circle me-2" href="https://twitter.com/GauravPatilGR"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-primary btn-square rounded-circle me-2" href="https://www.facebook.com/GauravpatilGR/"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-primary btn-square rounded-circle me-2" href="https://www.linkedin.com/in/gaurav-patil-038860269/"><i class="fab fa-linkedin-in"></i></a>
                    <a class="btn btn-primary btn-square rounded-circle" href="https://www.instagram.com/gauravpatil_13/"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->
    <%HttpSession s1=request.getSession(false);%>


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
        <a href="" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Homesteader</span>India</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
                
     
                <form action="searchname" method="post">
                 
                 <input type="text" value="<%out.println(s1.getAttribute("email"));%>" name="email" style="display:none;">
                
               
                <button type="submit" class="custombutton" style=" margin-right: 700px; margin-top:10px; border:none;background-color:#f93; color:white; "><i class="fa-solid fa-id-card"></i>&nbsp; &nbsp;<%out.println(s1.getAttribute("name"));%></button></form>
                <a href="home" class="nav-item nav-link "><i class="fa-solid fa-house"></i>&nbsp;Home</a>
                <a href="aboutl" class="nav-item nav-link"><i class="fa-solid fa-globe"></i>&nbsp;About</a>
                <a href="service" class="nav-item nav-link"><i class="fa-solid fa-building"></i>&nbsp;Services</a>
                <a href="farmproduct" class="nav-item nav-link"><i class="fa-solid fa-cart-shopping"></i>&nbsp;Product</a>
                
                <a href="contact" class="nav-item nav-link"><i class="fa-solid fa-envelope"></i>&nbsp;Contact</a>
                <a href="logout" class="nav-item nav-link"><i class="fa-solid fa-power-off"></i>&nbsp;Logout</a>
               
               
              
                
               
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
    
    <style>
    
    .custombutton
    {
      width:120px;
      height:50px;
      
      
     
    }
    
    i{
     font-size:13px;
    }
    
    </style>
    
    
    
    
    