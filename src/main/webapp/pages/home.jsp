<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeStederIndia Homepage</title>
 <%@ include file="headerfile.jsp" %>

</head>
<body>


<script>
        var video = document.getElementById("myVideo");
        var btn = document.getElementById("myBtn");
        
        function myFunction() {
          if (video.paused) {
            video.play();
            btn.innerHTML = "Pause";
          } else {
            video.pause();
            btn.innerHTML = "Play";
          }
        }
        </script>


    <!-- Carousel Start -->
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide carousel-fade" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <video class="w-100" autoplay muted loop id="myVideo">
                        <source src="img/Sliderv1.mp4" type="video/mp4" >
                        Your browser does not support HTML5 video.
                      </video>
                      
                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="text-white">Organic Vegetables</h3>
                            <h1 class="display-1 text-white mb-md-4">Organic Vegetables For Healthy Life</h1>
                            <a href="farmproduct" class="btn btn-primary py-md-3 px-md-5 me-3">Our Products <i class="fa-solid fa-cart-shopping"></i></a>
                            <a href="farmagroagency" class="btn btn-secondary py-md-3 px-md-5">Agro Agencies <i class="fa-solid fa-building-wheat"></i></a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <video class="w-100" autoplay muted loop id="myVideo">
                        <source src="img/demo1.mp4" type="video/mp4" >
                        Your browser does not support HTML5 video.
                      </video>
                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="text-white">Organic Fruits</h3>
                            <h1 class="display-1 text-white mb-md-4">Organic Fruits For Better Health</h1>
                              <a href="farmproduct" class="btn btn-primary py-md-3 px-md-5 me-3">Our Products <i class="fa-solid fa-cart-shopping"></i></a>
                            <a href="farmagroagency" class="btn btn-secondary py-md-3 px-md-5">Agro Agencies <i class="fa-solid fa-building-wheat"></i></a>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <video class="w-100" autoplay muted loop id="myVideo">
                        <source src="img/demo2.mp4" type="video/mp4" >
                        Your browser does not support HTML5 video.
                      </video>
                    <div class="carousel-caption top-0 bottom-0 start-0 end-0 d-flex flex-column align-items-center justify-content-center">
                        <div class="text-start p-5" style="max-width: 900px;">
                            <h3 class="text-white">Organic Seeds</h3>
                            <h1 class="display-1 text-white mb-md-4">Organic Seeds For Better Farming</h1>
                              <a href="farmproduct" class="btn btn-primary py-md-3 px-md-5 me-3">Our Products <i class="fa-solid fa-cart-shopping"></i></a>
                            <a href="farmagroagency" class="btn btn-secondary py-md-3 px-md-5">Agro Agencies <i class="fa-solid fa-building-wheat"></i></a>
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
                    <div class="d-flex h-100 border border-5 border-primary border-bottom-0 pt-0">
                        <img class="img-fluid mt-auto mx-auto" src="img/farmerbaba.png">
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

    

    <!-- Services Start -->
      <div class="container-fluid py-5">
        <div class="container">
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <div class="mb-3">
                        <h6 class="text-primary text-uppercase">Services</h6>
                        <h1 class="display-5">Our Farming Services</h1>
                    </div>
                    <p class="mb-4">At Homesteader, we are dedicated to providing a comprehensive suite of services designed to empower farmers and agricultural enthusiasts with the knowledge, resources, and support they need for successful and sustainable farming practices. </p>
                    
                </div>
                <div class="col-lg-4 col-md-6">
                <a href="soilfarmer">
                    <div class="service-item bg-light text-center p-5" style="border-radius: 32px;">
                        
                       <i class="fa-solid fa-magnifying-glass-chart display-1 text-primary mb-3"></i>
                        <h4>Soil Analysis</h4>
                        <p class="mb-0">Homesteader's Soil Analysis Service is your first step towards cultivating a thriving and sustainable agricultural venture.</p>
                    </div></a>
                </div>
               <div class="col-lg-4 col-md-6" >
                <a href="product">
                    <div class="service-item bg-light text-center p-5" style="border-radius: 32px;">
                       <i class="fa-solid fa-cart-shopping display-1 text-primary mb-3"></i>
                        <h4>Quick enquiry</h4>
                        <p class="mb-0">These quick inquiry services are designed to offer users immediate and valuable information related to their specific needs in the areas of crops, fertilizers, vegetables, seeds, and fruits on the Homesteader platform.</p>
                    </div>
                     </a>
                </div>
                <div class="col-lg-4 col-md-6" >
                <a href="/">
                    <div class="service-item bg-light text-center p-5" style="border-radius: 32px;">
                       <i  class="fa-solid fa-cloud-moon-rain display-1 text-primary mb-3"></i>
                        <h4>Weather Conditions</h4>
                        <p class="mb-0">At Homesteader, we understand the pivotal role that weather conditions play in successful farming.,Access real-time weather information, including temperature, humidity  and more.</p>
                    </div></a>
                </div>
                <div class="col-lg-4 col-md-6" >
                     <a href="farmtrain">
                    <div class="service-item bg-light text-center p-5" style="border-radius: 32px;">
                        <i class="fa fa-tractor display-1 text-primary mb-3"></i>
                        <h4>Agriculture Farmer Training</h4>
                        <p class="mb-0">At Homesteader, we recognize the importance of continuous learning in the ever-evolving field of agriculture. Engage in interactive workshops and webinars covering a range of agricultural topics.</p>
                    </div>
                    </a>
                </div>
                <div class="col-lg-4 col-md-6" >
                    <div class="service-item bg-light text-center p-5" style="border-radius: 32px;">
                      <i  class="fa-solid fa-graduation-cap display-1 text-primary mb-3"></i>
                        <h4>Agro Student Training</h4>
                        <p class="mb-0"> At  Homesteader Agro Student Training provides a distinctive platform for you to share your agricultural knowledge, offer specialized courses, and connect directly with aspiring agri-entrepreneurs and students. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Services End -->


    <!-- Features Start -->
    <div class="container-fluid bg-primary feature py-5 pb-lg-0 my-5">
        <div class="container py-5 pb-lg-0">
            <div class="mx-auto text-center mb-3 pb-2" style="max-width: 500px;">
                <h6 class="text-uppercase text-secondary">Features</h6>
                <h1 class="display-5 text-white">Why Choose Us!!!</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-3">
                    <div class="text-white mb-5">
                        <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-seedling fs-4 text-white"></i>
                        </div>
                        <h4 class="text-white">100% Organic</h4>
                        <p class="mb-0">100% Organic Fruits and Vegatables We Procvide</p>
                    </div>
                    <div class="text-white">
                        <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-award fs-4 text-white"></i>
                        </div>
                        <h4 class="text-white">Award Winning</h4>
                        <p class="mb-0">Homesteader has been honored with the prestigious Agricultural Innovation Excellence Award.</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="d-block bg-white h-100 text-center p-5 pb-lg-0">
                        <p>Reliability is non-negotiable for us. Our consistent and reliable results are underpinned by a commitment to integrity and transparency, fostering trust and enduring partnerships with our clients. Beyond the professional realm, our passion for what we do sets us apart. It fuels our dedication, propelling us to go the extra mile and ensuring the delivery of a project that we are not only satisfied with but genuinely proud of. Choose FarnFresh for expertise, efficiency, innovation, customer-centricity, reliability, and a passion that goes beyond the ordinary.</p>
                        <img class="img-fluid" src="img/feature.png" alt="">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="text-white mb-5">
                        <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-tractor fs-4 text-white"></i>
                        </div>
                        <h4 class="text-white">Modern Farming</h4>
                        <p class="mb-0">Using latest Technologies We Train lot's of Farmars</p>
                    </div>
                    <div class="text-white">
                        <div class="bg-secondary rounded-pill d-flex align-items-center justify-content-center mb-3" style="width: 60px; height: 60px;">
                            <i class="fa fa-phone-alt fs-4 text-white"></i>
                        </div>
                        <h4 class="text-white">24/7 Support</h4>
                        <p class="mb-0">Contact Us Anytime on Give Mobile No or Email</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Features Start -->


    <!-- Products Start -->
     <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Products</h6>
                <h1 class="display-5">Our Fresh & Organic Products</h1>
               
                
            </div>
            <div class="owl-carousel product-carousel px-5">
            <c:forEach items="${k}" var="e">
                <div class="pb-5">
                    <div class="product-item position-relative bg-white d-flex flex-column text-center">
                      <input type="hidden" value="${e.id}">
                       <img src="product/${e.pfilen}" class="img-fluid mb-4" alt="${e.pname}" style="height: 220px; width:300px;">
                        <h6 class="mb-3">${e.pname}</h6>Category
                        <h6 class="mb-3">${e.ptype}</h6>
                         <h6 class="text-danger mb-0"><i class="fas fa-tag"></i>Market Price &#x20B9; &nbsp; <del>${e.pcprice}</del></h6>
                        <h5 class="text-primary mb-0"><i class="fas fa-tag"></i> Our Price  &#x20B9;&nbsp; ${e.pwprice}</h5>
                        <div class="btn-action d-flex justify-content-center">
                      
                           <form action="productsearch" method="post">
                          
                           <input type="hidden" value="${e.pname}" name="name">
                             <button type="submit"  class="btn bg-primary py-2 px-3" style="color:#fff;"> Enquiry<i class="fa-solid fa-cart-shopping"></i></button>
                          </form>
                          
                        </div>
                        
                    </div>
                  
                </div>
                  </c:forEach>
                  
                  
                
               
            
               
                
                </div>
                   <a class="btn bg-primary py-4 px-4 mx-auto text-center mb-5" href=farmproduct style="color:white;"><i class="fa-solid fa-cart-shopping"></i>View All Product</a>
            </div>
            
        </div>
    <!-- Products End -->


    


    <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">The Team</h6>
                <h1 class="display-5">We Are Professional Dynamic Team</h1>
            </div>
            <div class="row g-5">
                <div class="col-lg-4 col-md-6">
                    <div class="row g-0">
                        <div class="col-10">
                            <div class="position-relative">
                                <img class="img-fluid w-100" src="img/team14.jpeg" alt="" style="height: 400px; " >
                                <div class="position-absolute start-0 bottom-0 w-100 py-3 px-4" style="background: rgba(52, 173, 84, .85);">
                                    <h4 class="text-white">Vaibhav Barde</h4>
                                    <span class="text-white">Business Advisor</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="h-100 d-flex flex-column align-items-center justify-content-around bg-secondary py-5">
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-twitter text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-facebook-f text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-linkedin-in text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-instagram text-secondary"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="row g-0">
                        <div class="col-10">
                            <div class="position-relative">
                                <img class="img-fluid w-100" src="img/team13.jpg" alt="" style="height: 400px;">
                                <div class="position-absolute start-0 bottom-0 w-100 py-3 px-4" style="background: rgba(52, 173, 84, .85);">
                                    <h4 class="text-white">Gaurav Patil </h4>
                                    <span class="text-white">CEO and Managing Director</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="h-100 d-flex flex-column align-items-center justify-content-around bg-secondary py-5">
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-twitter text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-facebook-f text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-linkedin-in text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-instagram text-secondary"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="row g-0">
                        <div class="col-10">
                            <div class="position-relative">
                                <img class="img-fluid w-100" src="img/team12.png" alt="" style="height: 400px;">
                                <div class="position-absolute start-0 bottom-0 w-100 py-3 px-4" style="background: rgba(52, 173, 84, .85);">
                                    <h4 class="text-white">Rohit Waghmare</h4>
                                    <span class="text-white">Professional Farmer Trainer</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-2">
                            <div class="h-100 d-flex flex-column align-items-center justify-content-around bg-secondary py-5">
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-twitter text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-facebook-f text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-linkedin-in text-secondary"></i></a>
                                <a class="btn btn-square rounded-circle bg-white" href="#"><i class="fab fa-instagram text-secondary"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Team End -->

    <!-- Blog Start -->
    <div class="container-fluid py-5" id="#bloghome">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Our Blog</h6>
                <h1 class="display-5">Latest Articles From Our Blog Post</h1>
            </div>
            <div class="row g-5">
            <c:forEach items="${kk}" var="e">
                <div class="col-lg-4">
                   <form action="blogget" method="post">
                    <button type="submit" style="padding:0px;border:none;text-align: left;">
                           <input type="hidden" value="${e.title}" name="title">
                            
                    <div class="blog-item position-relative overflow-hidden">
                        <img class="img-fluid" src="blogimg/${e.blogimg}" alt="" style="height:480px; width:400px;">
                       
                        <a class="blog-overlay">
                        
                            <h4 class="text-white">${e.title}</h4>
                            <span class="text-white fw-bold">Publish date: ${e.dateout}</span>
                            
                        
                        </a>
                    </div>
                     </button>
                     </form>
                </div>
              </c:forEach>
                
            </div>
        </div>
    </div>
    <!-- Blog End -->
    

    <!-- Footer Start -->
    <%@ include file="footer.jsp" %>
    <!-- Footer End -->


    <!-- Back to Top -->
    <a href="#" class="btn btn-secondary py-3 fs-4 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>

</body>
</html>