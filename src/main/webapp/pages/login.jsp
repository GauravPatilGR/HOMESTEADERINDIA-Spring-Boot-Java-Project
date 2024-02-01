<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
    <meta charset="utf-8">
    <title>HomeSteaderIndia Login</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

     <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
     
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

    <style>

        .loginimgbackground{


          background-image: url(https://images.pexels.com/photos/15398173/pexels-photo-15398173/free-photo-of-a-trail-between-banana-trees.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);

          margin-bottom: -90px;

          

          



        }
    </style>
</head>

<body>
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
                    <a href="index.html" class="navbar-brand ms-lg-5">
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
                 <a href="farm" class="nav-item nav-link "><i class="fa-solid fa-house"></i>&nbsp;Home</a>
                <a href="about" class="nav-item nav-link "><i class="fa-solid fa-globe"></i>&nbsp;About</a>
               
                <a href="register" class="nav-item nav-link "><i class="fa-solid fa-user-plus"></i>&nbsp;Register</a>
                
                <a href="login" class="nav-item nav-link active"><i class="fa-solid fa-seedling"></i>&nbsp;Login</a>
              
                
               
            </div>
        </div>
    </nav>
    <!-- Nav Bar End -->


   


    <!-- Login Start -->
    <div class="container-fluid py-5  loginimgbackground">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class=" text-uppercase" style="color: white;">Welcome Back</h6>
                <h1 class="display-5" style="color: white;"> Login Your Account</h1>
            </div>
            <div class="row g-0">
                <div class="col-lg-7">
                    <div class="bg-primary h-100 p-5">
                        <!DOCTYPE html>
                        <html lang="en">
                        <head>
                            <meta charset="UTF-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                            <title>Login Form</title>
                        </head>
                        <body>
                      <form id="loginForm" onsubmit="return validateForm()" action="loginfarm" method="post">
    <div class="row g-3">
        <div class="col-12">
            <input type="email" id="email" name="email" class="form-control bg-light border-0 px-4" placeholder="Enter Your Register Email" style="height: 55px;" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address" required>
            <div id="emailError" style="color: red;"></div>
        </div>

        <div class="col-12">
            <input type="password" id="password" name="password" class="form-control bg-light border-0 px-4" placeholder="Enter Your Password" style="height: 55px;" pattern=".{6,}" title="Password must be at least 6 characters long" required>
            <div id="passwordError" style="color: red;"></div>
        </div>

        <div class="col-12">
            <button class="btn btn-secondary w-100 py-3" type="submit">Login</button>
        </div>
      
        <div class="col-12">
            <a href="register"><button class="btn btn-secondary w-100 py-3" type="button">Register Here</button></a>
        </div>
        <a href="register" style="color: blue;">Don't have Account?</a>
        
    </div>
</form>



                      
                        <script>
                            function validateForm() {
                                // Reset error messages
                                document.getElementById('emailError').textContent = '';
                                document.getElementById('passwordError').textContent = '';
                        
                                // Get form inputs
                                var email = document.getElementById('email').value;
                                var password = document.getElementById('password').value;
                        
                                // Validate email
                                if (!email) {
                                    document.getElementById('emailError').textContent = 'Email is required';
                                    return false;
                                }
                                
                             // Validate email
                                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                                if (!emailRegex.test(email)) {
                                  document.getElementById("emailError").innerHTML = "Invalid email address";
                                  return false;
                                }

                        
                                // You can add more sophisticated email validation if needed
                        
                                // Validate password
                                if (!password) {
                                    document.getElementById('passwordError').textContent = 'Password is required';
                                    return false;
                                }
                        
                                // You can add more sophisticated password validation if needed
                        
                                // If all validations pass, the form will be submitted
                                return true;
                            }
                        </script>
                        
                        </body>
                        </html>
                        
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="bg-secondary h-100 p-5">
                        <h2 class="text-white mb-4">Get In Touch</h2>
                        <div class="d-flex mb-4">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-geo-alt fs-4 text-white"></i>
                            </div>
                            <div class="ps-3">
                                <h5 class="text-white">Our Office</h5>
                                <span class="text-white">Pune,Maharashtra</span>
                            </div>
                        </div>
                        <div class="d-flex mb-4">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-envelope-open fs-4 text-white"></i>
                            </div>
                            <div class="ps-3">
                                <h5 class="text-white">Email Us</h5>
                                <span class="text-white">gauravpatilgr13@gmail.com</span>
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-phone-vibrate fs-4 text-white"></i>
                            </div>
                            <div class="ps-3">
                                <h5 class="text-white">Call Us</h5>
                                <span class="text-white">+91 9834583904</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Login End -->
    


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
                    <div class="d-flex flex-column align-items-center justify-content-center text-center h-95 bg-secondary p-5" style="margin-top: 30px;">
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