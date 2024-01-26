<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Verification Pending</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+Wy4GXYDKNP8P9JbKhbri7JnZ2tUoZAA93M"
        crossorigin="anonymous">

    <!-- Custom styles -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .containers {
            margin-top: 100px;
        }

        .verification-card {
            border-radius: 15px;
            border: 2px solid #007bff;
            margin-bottom: 20px;
        }

        .verification-info {
            color: #007bff;
            font-weight: bold;
        }

        h2 {
            font-size: 2.5rem;
        }

        .card-text {
            font-size: 1.2rem;
            line-height: 1.6;
        }
    </style>
    <link href="img/favicon.ico" rel="icon">

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
               
                <a href="Agrohome"><img src="img/logo.png" alt="" style="margin: 0px;  width: 180px; margin: 10px; margin-right:850px; border-radius: 15px;"></a>
                <a href="Agrohome" class="nav-item nav-link active">Home</a>
               
               
                <a href="registeragro" class="nav-item nav-link">Register</a>
                <a href="loginagro" class="nav-item nav-link"><i class="fa-solid fa-right-to-bracket"></i>Login</a>
              
                
               
            </div>
        </div>
    </nav>
    <!-- Navbar End -->
    
    <%HttpSession h1=request.getSession(false);%>

 <!-- Message -->
    <div class="containers">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card verification-card">
                    <div class="card-body text-center">
                     <h1 class="card-title" style=background-color:#219ebc;color:#fff;border-radius:32px;>Welcome <%out.println(h1.getAttribute("aname"));%></h1>
                        <h2 class="card-title">Verification Pending</h2>
                        <p class="card-text">Thank you for registering with us. Your account is currently under
                            verification.</p>
                        <p class="verification-info">Verification Process:</p>
                        <ul class="list-unstyled">
                            <li>Your details are being reviewed.</li>
                            <li>It will take approximately 24 hours to complete the verification process.</li>
                        </ul>
                        <p class="card-text">Once verification is done, you can <a href="loginagro">log in</a>.</p>
                    </div>
                </div>

                <!-- Additional card -->
                <div class="card verification-card">
                    <div class="card-body text-center">
                        <h2 class="card-title">Need Help?</h2>
                        <p class="card-text">If you have any questions or concerns, please contact our support team at<br>
                            gauravpatilgr13@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


 <!-- Message End -->
   <!-- Footer Start -->
    <div class="container-fluid bg-footer bg-primary text-white mt-5" >
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
