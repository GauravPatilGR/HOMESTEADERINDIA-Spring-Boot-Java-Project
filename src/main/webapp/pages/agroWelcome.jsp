 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Agroagency</title>


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
    
     <!-- Favicon -->
    <link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">
    
    
   <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>
 <%@ include file="headeragro.jsp" %>

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
                         
                            <a href="Dashagro" class="btn btn-secondary py-md-3 px-md-5"><i class="fa-solid fa-user-tie"></i>Dashboard</a>
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
                               
                            <a href="Dashagro" class="btn btn-secondary py-md-3 px-md-5"><i class="fa-solid fa-user-tie"></i>Dashboard</a>
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
                           
                                   
                            <a href="Dashagro" class="btn btn-secondary py-md-3 px-md-5"><i class="fa-solid fa-user-tie"></i>Dashboard</a>
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
                        <h3 class="text-white mb-3">View Farmer<i class="fa-solid fa-wheat-awn"></i>Training Request</h3>
                        <a href="farmdisplay" class="btn btn-info py-md-3 px-md-5"><i class="fa-regular fa-eye"></i>View</a>
                       
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="bg-secondary bg-fruit d-flex flex-column justify-content-center p-5" style="height: 300px;">
                        <h3 class="text-white mb-3">View Agro<i class="fa-solid fa-graduation-cap"></i>Student Training Request</h3>
                          <a href="studisplay" class="btn btn-info py-md-3 px-md-5"><i class="fa-regular fa-eye"></i>View</a>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner Start -->


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