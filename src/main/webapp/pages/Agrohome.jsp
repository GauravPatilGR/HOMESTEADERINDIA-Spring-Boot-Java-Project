<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Welcome Agroagency</title>
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
                <a href="agro" class="nav-item nav-link active">Home</a>
               
               
                <a href="registeragro" class="nav-item nav-link">Register</a>
                <a href="loginagro" class="nav-item nav-link">Login</a>
              
                
               
            </div>
        </div>
    </nav>
    <!-- Navbar End -->


<!-- Markee start -->
    <div class="marquee-container">
        <marquee class="marquee">
            HomesteaderIndia AgroAgency Registration Portal - Register your AgroAgency With Us,Submit Your Details Now , 100% Online Process. | For Any Query Contact our HelplineNumber.
        </marquee>
    </div>

  <!-- Markee End -->

   
        
       


    <!-- Carousel Start -->
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="container-fluid p-0" style="background-color:black">
        <div class="carousel-inner" >
                <div class="carousel-item active" >
                    <img src="https://images.pexels.com/photos/7543111/pexels-photo-7543111.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load" class="w-100" alt="" style="opacity: 0.85;">
                     
                        
                        
                      
                      
                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="display-1 text-white mb-md-4">Welcome</h3>
                            <p class="text-white" style="font-size: 30px;">HomeSteaderIndia is a web-based open discussion portal. </p>
                         
                            <a href="registeragro" class="btn btn-secondary py-md-3 px-md-5">Join As AgroAgency</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                   <img src="https://images.pexels.com/photos/3158017/pexels-photo-3158017.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" class="w-100" alt="" style="opacity: 0.85;">

                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="display-1 text-white mb-md-4">Welcome</h3>
                           
                            <p class="text-white" style="font-size: 25px;">  Providing information and solutions 
                                about crops, fertilizers, vegetables, Seeds, Fruits.</p>
                               
                                <a href="registeragro" class="btn btn-secondary py-md-3 px-md-5">Join As AgroAgency</a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                  
                    <img src="https://images.pexels.com/photos/12626272/pexels-photo-12626272.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"  class="w-100" alt="" style="opacity: 0.85;">

                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="display-1 text-white mb-md-4">Welcome</h3>
                          
                                <p class="text-white" style="font-size: 25px;">    Climate to Small farmers and 
                                    agricultural students.</p>
                           
                                   
                                    <a href="registeragro" class="btn btn-secondary py-md-3 px-md-5">Join As AgroAgency</a>
                        </div>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#header-carousel"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#header-carousel"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>
    <!-- Carousel End -->


     <!-- Banner Start -->
    <div class="container-fluid banner mb-5">
        <div class="container">
            <div class="row gx-0">
                <div class="col-md-6">
                    <div class="bg-primary bg-vegetable d-flex flex-column justify-content-center p-5" style="height: 300px;">
                        <h3 class="text-white mb-3">Organic Farming</h3>
                        <p class="text-white">Organic farming is a sustainable agricultural approach that emphasizes soil health, biodiversity, and avoiding synthetic chemicals. It promotes natural processes, such as crop rotation and composting, to enhance the ecological balance of farming systems.</p>
                    </div>
                </div>
                <div class="col-md-6" >
                    <div class="bg-secondary bg-fruitfarm d-flex flex-column justify-content-center p-5" style="height: 300px;">
                        <h3 class="text-white mb-3">Weather Conditions</h3>
                        <p class="text-white">"At Homesteader, we recognize the crucial role that weather conditions play in the success of farming. We understand that farmers need accurate and timely information to make informed decisions for their crops and livestock.</p>
                        
                        
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->


    <!-- About Start -->
    <div class="container-fluid about pt-5" id=about>
        <div class="container">
            <div class="row gx-5">
                <div class="col-lg-6 mb-5 mb-lg-0">
                    <div class="d-flex h-100 border border-5 border-primary border-bottom-0 pt-4">
                        <img class="img-fluid mt-auto mx-auto" src="img/about.png">
                    </div>
                </div>
                <div class="col-lg-6 pb-5">
                    <div class="mb-3 pb-2">
                        <h6 class="text-primary text-uppercase">About Us</h6>
                        <h1 class="display-5">Your Gateway to Sustainable Farming Wisdom"</h1>
                    </div>
                    <p class="mb-4" style="color: black;">Welcome to Homesteader, a dedicated web-based open discussion portal committed to providing invaluable information, solutions, and support to small farmers and agricultural students. Our platform serves as a dynamic hub where individuals passionate about agriculture can come together to share knowledge, engage in discussions, and access crucial resources for successful farming practices.</p>
                    <div class="row gx-5 gy-4">
                        <div class="col-sm-6">
                            <i class="fa fa-seedling display-1 text-secondary"></i>
                            <h4>Our Mission</h4>
                            <p class="mb-0" style="color: black;">our mission is to empower farmers and agricultural students with the knowledge and resources they need for sustainable and successful farming practices. </p>
                        </div>
                        <div class="col-sm-6">
                            <i class="fa fa-award display-1 text-secondary"></i>
                            <h4>Award Winning</h4>
                            <p class="mb-0" style="color: black;">We are thrilled to announce that Homesteader has been honored with the prestigious Agricultural Innovation Excellence Award. This recognition highlights our commitment to revolutionizing the agricultural landscape by providing cutting-edge solutions and fostering a community dedicated to sustainable farming practices. </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- About End -->


    <!-- Facts Start -->
    <div class="container-fluid bg-primary facts py-5 mb-5">
        <div class="container py-5">
            <div class="row gx-5 gy-4">
                <div class="col-lg-3 col-md-6">
                    <div class="d-flex">
                        <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa-solid fa-tractor text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="text-white">Registered Farmers</h5>
                            <h1 class="display-5 text-white mb-0" data-toggle="counter-up">1500</h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="d-flex">
                        <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa-solid fa-building-wheat text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="text-white">Our Agroagency</h5>
                            <h1 class="display-5 text-white mb-0" data-toggle="counter-up">300</h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="d-flex">
                        <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa-solid fa-wheat-awn text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="text-white">Trained Farmers</h5>
                            <h1 class="display-5 text-white mb-0" data-toggle="counter-up">400</h1>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="d-flex">
                        <div class="bg-secondary rounded-circle d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa-solid fa-cart-shopping text-white"></i>
                        </div>
                        <div class="ps-4">
                            <h5 class="text-white">Farming Products</h5>
                            <h1 class="display-5 text-white mb-0" data-toggle="counter-up">600</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Facts End -->

    



   


   <!-- Blog Start -->
   <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Our Blog</h6>
                <h1 class="display-5">Latest Articles From Our Blog Post</h1>
            </div>
            <div class="row g-5">
            <c:forEach items="${kk}" var="e">
                <div class="col-lg-4">
                    <div class="blog-item position-relative overflow-hidden">
                        <img class="img-fluid" src="blogimg/${e.blogimg}" alt="" style="height:480px; width:400px;">
                        <a class="blog-overlay" href="">
                            <h4 class="text-white">${e.title}</h4>
                            <span class="text-white fw-bold">${e.dateout}</span>
                        </a>
                    </div>
                </div>
              </c:forEach>
                
            </div>
        </div>
    </div>
    <!-- Blog End -->
    
    

    <!-- Footer Start -->
    <div class="container-fluid bg-footer bg-primary text-white mt-5">
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
    
    <!-- Markee style start -->
      <style>
    .marquee-container {
        overflow: hidden;
        white-space: nowrap;
        box-sizing: border-box;
        background-color: #2E7D32; /* Dark Green */
        color: #FFFFFF; /* White */
        padding: 10px;
        text-align: center;
    }

    .marquee {
        animation: marquee 15s linear infinite;
    }

    
    </style>
     <!-- Markee style End -->
   
  
</body>

</html>