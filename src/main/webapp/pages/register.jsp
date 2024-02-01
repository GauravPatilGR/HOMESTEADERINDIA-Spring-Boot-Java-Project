<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>HomeSteaderIndia Register</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

  
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

        .regimgbackground{


          background-image: url(https://images.pexels.com/photos/2083502/pexels-photo-2083502.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1);
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          

          margin-bottom: -90px;



        }
        
        
    .error {
      color: red;
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
               
                <a href="register" class="nav-item nav-link active"><i class="fa-solid fa-user-plus"></i>&nbsp;Register</a>
                
                <a href="login" class="nav-item nav-link"><i class="fa-solid fa-seedling"></i>&nbsp;Login</a>
              
              
                
               
            </div>
        </div>
    </nav>
    <!-- Nav Bar End -->

     
    <!-- Registration Form Start -->
    <div class="container-fluid py-5  regimgbackground" >
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-uppercase" style="color: white; ">Hello There</h6>
                <h1 class="display-5" style="color: white;">Register Your Account</h1>
            </div>
            <div class="row g-0">
                <div class="col-lg-7">
                    <div class="bg-primary h-100 p-5">
                       
                       <form id="registrationForm" onsubmit="return validateForm()" action="regfarmer" method="post">  
    <div class="row g-3">
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your Name" style="height: 55px;" id="name"  name="name" pattern="[A-Za-z ]+" title="Please enter only letters and spaces" required>
            <span id="nameError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="email" class="form-control bg-light border-0 px-4" placeholder="Enter Your Email" style="height: 55px;" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" title="Please enter a valid email address" required>
            <span id="emailError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="password" class="form-control bg-light border-0 px-4" placeholder="Enter Your Password" style="height: 55px;" id="password" name="password" pattern=".{6,}" title="Password must be at least 6 characters long" required>
            <span id="passwordError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your State" style="height: 55px;" id="state" name="state" pattern="[A-Za-z ]+" title="Please enter only letters and spaces" required>
            <span id="stateError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your City" style="height: 55px;" id="city" name="city" pattern="[A-Za-z ]+" title="Please enter only letters and spaces" required>
            <span id="cityError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your Town" style="height: 55px;" id="town" name="town" pattern="[A-Za-z ]+" title="Please enter only letters and spaces" required>
            <span id="townError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your Village" style="height: 55px;" id="village" name="village" pattern="[A-Za-z ]+" title="Please enter only letters and spaces" required>
            <span id="villageError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <input type="text" class="form-control bg-light border-0 px-4" placeholder="Enter Your Mobile Number" style="height: 55px;" id="mobile" name="mobile" pattern="[0-9]{10}" title="Please enter a valid 10-digit mobile number" required>
            <span id="mobileError" class="error"></span>
        </div>
        <div class="col-lg-6 col-md-12">
            <label for="soilType" style="color: white;">Choose The Type of Soil*</label>
            <select name="soiltype" id="dropdown" style="height: 50px;" required>
                <option value="">Select Soil Type</option>
                <option value="Black Cotton Soil">Black Cotton Soil</option>
                <option value="Alluvial Soil">Alluvial Soil</option>
                <option value="Red & Yellow Soil">Red & Yellow Soil</option>
                <option value="Laterite Soil">Laterite Soil</option>
                <option value="Mountainous or Forest Soil">Mountainous or Forest Soil</option>
                <option value="Arid or Desert Soil">Arid or Desert Soil</option>
                <option value="Saline and Alkaline Soil">Saline and Alkaline Soil</option>
                <option value="Peaty and Marshy Soil">Peaty and Marshy Soil</option>
            </select>
            <span id="soilTypeError" class="error"></span>
        </div>
        <div class="col-12">
            <button class="btn btn-secondary w-100 py-3" type="submit">Register</button>
        </div>
        <div class="col-12">
            <a href="login"><button class="btn btn-secondary w-100 py-3" type="button">Login</button></a>
        </div>
        <a href="login" style="color: blue;">Already have an account?</a>
    </div>
</form>
                       
                       
                   
                    </div>
                </div>
                </div>
        </div>

    </div>

    <!-- Validation start -->
    
   

 <script>
    function validateForm() {
      // Reset errors
      document.getElementById("nameError").innerHTML = "";
      document.getElementById("emailError").innerHTML = "";
      document.getElementById("passwordError").innerHTML = "";
      document.getElementById("stateError").innerHTML = "";
      document.getElementById("cityError").innerHTML = "";
      document.getElementById("townError").innerHTML = "";
      document.getElementById("villageError").innerHTML = "";
      document.getElementById("mobileError").innerHTML = "";
      document.getElementById("soilTypeError").innerHTML = "";

      // Get form values
      var name = document.getElementById("name").value;
      var email = document.getElementById("email").value;
      var password = document.getElementById("password").value;
      var state = document.getElementById("state").value;
      var city = document.getElementById("city").value;
      var town = document.getElementById("town").value;
      var village = document.getElementById("village").value;
      var mobile = document.getElementById("mobile").value;
      var soilType = document.getElementById("dropdown").value;

      // Validate name
      if (name.trim() === "") {
        document.getElementById("nameError").innerHTML = "Name is required";
        return false;
      }

      // Validate email
      var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
      if (!emailRegex.test(email)) {
        document.getElementById("emailError").innerHTML = "Invalid email address";
        return false;
      }

      // Validate password (you can add more specific rules)
      if (password.trim() === "") {
        document.getElementById("passwordError").innerHTML = "Password is required";
        return false;
      }

      // Validate state
      if (state.trim() === "") {
        document.getElementById("stateError").innerHTML = "State is required";
        return false;
      }

      // Validate city
      if (city.trim() === "") {
        document.getElementById("cityError").innerHTML = "City is required";
        return false;
      }

      // Validate town
      if (town.trim() === "") {
        document.getElementById("townError").innerHTML = "Town is required";
        return false;
      }

      // Validate village
      if (village.trim() === "") {
        document.getElementById("villageError").innerHTML = "Village is required";
        return false;
      }

      // Validate mobile number (you can add more specific rules)
      if (mobile.trim() === "") {
        document.getElementById("mobileError").innerHTML = "Mobile number is required";
        return false;
      }

      // Validate soil type
      if (soilType === "") {
        document.getElementById("soilTypeError").innerHTML = "Please select a soil type";
        return false;
      }

      // If all validations pass, return true
      return true;
    }
  </script>
  
  <!-- Validation end -->
   
    
           
               

   


   
  <!-- Registration Form End -->


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
                <div class="col-lg-4 col-md-6 mt-lg-n1">
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
   
    <div class="container-fluid bg-dark text-white py-4"  style="margin-bottom: -60px;">
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