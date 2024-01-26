<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
 <title>HomeStederIndia Submit Training</title>
 <%@ include file="headerfile.jsp" %>

</head>
<body>

<!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4" style="font-size: 50px;">Request For Training</h1>
                    <a href="home" class="btn btn-primary py-md-3 px-md-5 me-3">Home</a>
                
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- Hero End -->
    
    <%HttpSession s2=request.getSession(false);%>
    
    <!-- Form Start -->
    
   <div class="container-fluid px-1 py-5 mx-auto">
        <div class="row d-flex justify-content-center">
            <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
                <h3>Select the Suitable Training </h3>
                <p class="blue-text "><span class="text-danger">*</span>Our Agroagency Will<br>Contact you.</p>
                <div class="card">
                    <h5 class="text-center mb-4">One Step Away From Becoming a Skilled Farmer</h5>
                    <form class="form-card" action="ram" method="post" onsubmit="return validateForm()">
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Name Of Farmer<span class="text-danger"> *</span></label>
                                <input type="text" id="fname" class="temp" name="fname" value="<%out.println(s2.getAttribute("name"));%>">
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Email of Farmer<span class="text-danger"> *</span></label>
                                <input type="text" id="lname" class="temp" name="femail" value="<%out.println(s2.getAttribute("email"));%>">
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Contact Number of Farmer<span class="text-danger"> *</span></label>
                                <input type="text" id="email" class="temp" name="fmobile" value="<%out.println(s2.getAttribute("mobile"));%>">
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Enter Current Location<span class="text-danger"> *</span></label>
                                <input type="text" id="mob" name="flocation" class="temp" placeholder="Example Pune,Maharashtra">
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <label for="trainingType" class="form-control-label px-3">Select Training Type<span class="text-danger"> *</span></label>
                            <select id="trainingType" name="ftraining" class="form-control temp" required>
                                <option value="Custom Harvesting">Custom Harvesting(Most Popular)</option>
                                <option value="Field Crops">Field Crops</option>
                                <option value="Vegetable Production">Vegetable Production</option>
                                <option value="Fruit Production"> Fruit Production</option>
                            </select>
                        </div>
                        <input type="date" id="myDate" name="fdate" value=""  style="display:none;">
                        
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-12 flex-column d-flex">
                                <label class="form-control-label px-3">Do you have Any question Comment Below?<span class="text-danger"> *</span></label>
                                <input type="text" id="ans" class="temp" name="fcomment" placeohlder="Example What is Duration or Training fees?">
                            </div>
                        </div>
                        <div class="row justify-content-end">
                            <div class="form-group col-sm-6">
                                <button type="submit" class="btn-block btn-primary temp" style="margin-top: 20px;">Send Enquiry</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    

 <!-- Form End -->
 
 
 <!-- Css For Form -->
  <style>
        body {
            color: #000;
            overflow-x: hidden;
            height: 100%;
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }

        .card {
            padding: 30px 40px;
            margin-top: 60px;
            margin-bottom: 60px;
            border: none !important;
            box-shadow: 0 6px 12px 0 rgba(0, 0, 0, 0.2);
        }

        .blue-text {
            color: #00BCD4;
        }

        .form-control-label {
            margin-bottom: 0;
        }

        .temp,
        textarea,
        select
        {
            padding: 8px 15px;
            border-radius: 5px !important;
            margin: 10px 0px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            font-size: 18px !important;
            font-weight: 300;
        }

        input:focus,
        textarea:focus,
        select:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            border: 1px solid #00BCD4;
            outline-width: 0;
            font-weight: 400;
        }

        .btn-block {
           
            font-size: 15px !important;
            font-weight: 400;
            height: 43px;
            cursor: pointer;
        }

        .btn-block:hover {
            color: #fff !important;
        }

        button:focus {
            -moz-box-shadow: none !important;
            -webkit-box-shadow: none !important;
            box-shadow: none !important;
            outline-width: 0;
        }
    </style>
 
 <!-- Css End -->
 
 
 <!-- Javascript Form -->
 
                      <script>
    
                        document.getElementById('myDate').valueAsDate = new Date();
                       </script>
 <script>
 
 function validateForm() {
     var fname = document.getElementById("fname").value;
     var lname = document.getElementById("lname").value;
     var email = document.getElementById("email").value;
     var mob = document.getElementById("mob").value;
     var ans = document.getElementById("ans").value;

     if (fname == "" || lname == "" || email == "" || mob == "" || ans == "") {
         alert("All fields are required!");
         return false;
     }

     // Additional validation logic can be added here

     return true;
 }
</script>



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
 
 
 <!-- Javascript End -->
    