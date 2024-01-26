<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Login Agroagecny</title>
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
    <!-- Agro Agency Stylesheet -->
    <link rel="stylesheet" href="css/agro.css">
    
    
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>

</head>

<body>
   
            


    <!-- Navbar Start -->
    <nav class="navbar navbar-expand-lg bg-primary navbar-dark shadow-sm py-3 py-lg-0 px-3 px-lg-5">
        <a href="index.html" class="navbar-brand d-flex d-lg-none">
            <h1 class="m-0 display-4 text-secondary"><span class="text-white">Homesteader</span>India</h1>
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav mx-auto py-0">
               
                <a href="agro"><img src="img/logo.png" alt="" style="margin: 0px;  width: 180px; margin: 10px; margin-right:850px; border-radius: 15px;"></a>
                <a href="agro" class="nav-item nav-link ">Home</a>
               
               
                <a href="registeragro" class="nav-item nav-link">Register</a>
                <a href="loginagro" class="nav-item nav-link active"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
              
                
               
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
    
    <!-- Registration form start -->
    
    <div class="main-w3layouts wrapper">
      <h1 style="color: #2dc653; font-family: sans-serif;">Agroagency Login</h1>
    
      
      <div class="main-agileinfo">
        <div class="agileits-top">
          <form action="agrologin" method="post">
            
            <input class="text email" type="email" name="email" placeholder="Enter register email" required="">
            <input class="text" type="password" name="password" placeholder="Enter Password" required="">
           
          
             
              
            <input type="submit" value="Login">
          </form>
        <a href="registeragro" ><p style="color: #2dc653; font-family: sans-serif;">Don't have an Account?  Register Now!</p></a>
          
        </div>
      </div>
      
   <!-- Registration form End -->
   
   
   
   
   
    <!-- Footer Start -->
    <div class="container-fluid bg-footer bg-primary text-white mt-5" style="margin-bottom: -20px;">
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-8 col-md-6">
                    <div class="row gx-5">
                        <div class="col-lg-4 col-md-12 pt-5 mb-5">
                            <h4 class="text-white mb-4">Get In Touch</h4>
                            <div class="d-flex mb-2">
                                <i class="bi bi-geo-alt text-white me-2"></i>
                                <p class="text-white mb-0">Congress Bhavan, B-1, 2nd Floor, Abhinav Apartment Besides, Congress House Rd, Shivajinagar, Pune, Maharashtra 411005</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-envelope-open text-white me-2"></i>
                                <p class="text-white mb-0">gauravpatilgr13@gmail.com</p>
                            </div>
                            <div class="d-flex mb-2">
                                <i class="bi bi-telephone text-white me-2"></i>
                                <p class="text-white mb-0">9834583904</p>
                            </div>
                            <div class="d-flex mt-4">
                                <a class="btn btn-secondary btn-square rounded-circle me-2" href="https://twitter.com/GauravPatilGR"><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-secondary btn-square rounded-circle me-2" href="https://www.facebook.com/GauravpatilGR/"><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-secondary btn-square rounded-circle me-2" href="https://www.linkedin.com/in/gaurav-patil-038860269/"><i class="fab fa-linkedin-in"></i></a>
                                <a class="btn btn-secondary btn-square rounded-circle" href="https://www.instagram.com/gauravpatil_13/"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
                            <h4 class="text-white mb-4">Quick Links</h4>
                            <div class="d-flex flex-column justify-content-start">
                                <a class="text-white mb-2" href="home"><i class="bi bi-arrow-right text-white me-2"></i>Home</a>
                                <a class="text-white mb-2" href="about"><i class="bi bi-arrow-right text-white me-2"></i>About Us</a>
                                <a class="text-white mb-2" href="login"><i class="bi bi-arrow-right text-white me-2"></i>Our Services</a>
                                <a class="text-white mb-2" href="login"><i class="bi bi-arrow-right text-white me-2"></i>Our Product</a>
                                <a class="text-white mb-2" href="login"><i class="bi bi-arrow-right text-white me-2"></i>Meet The Team</a>
                                <a class="text-white mb-2" href="login"><i class="bi bi-arrow-right text-white me-2"></i>Latest Blog</a>
                                <a class="text-white" href="login"><i class="bi bi-arrow-right text-white me-2"></i>Contact Us</a>
                            </div>
                        </div>
                       
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 mt-lg-n5">
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-secondary p-5">
                        <h4 class="text-white">Newsletter</h4>
                        <h6 class="text-white">Subscribe Our Newsletter</h6>
                        <p>Join Our Commnuity for Daily Update</p>
                        <form action="">
                            <div class="input-group">
                                <input type="text" class="form-control border-white p-3" placeholder="Your Email">
                                <button class="btn btn-primary">Subscribe</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
  </div>
   
    <div class="container-fluid bg-dark text-white py-4">
        <div class="container text-center">
            <p class="mb-0">&copy; <a class="text-secondary fw-bold" href="#">HomeSteaderIndia.Com</a>. All Rights Reserved. Designed And Developed by <a class="text-secondary fw-bold" href=>Gaurav Patil</a></p>
        </div>
    </div>
    
    <!-- Footer End -->


   


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

   
    <script src="js/main.js"></script>
    
    
    
    
    
    
    
    </body>
    </html>
    
    
    
    
    
    
    

