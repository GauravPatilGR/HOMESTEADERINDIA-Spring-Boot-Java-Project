<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerfile.jsp" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enquiry Product</title>
</head>
<body>


      <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4" style="font-size: 50px;">SEND ENQIRY</h1>
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
               
                <div class="card">
                    <h6 class="text-center mb-4">We are available for Sales, Service & Support 24x7. Please fill and send the form below to us, and we will get back to you very soon.</h6>
                    <c:forEach items="${kk}" var="e">
                    <form class="form-card" action="enqiryservice" method="post" onsubmit="return validateForm()">
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Product Name<span class="text-danger"> *</span></label>
                                <input class="temp"   type="text" id="fname" name="fproduct"  value="${e.pname}" readonly>
                            </div>
                            <div class="form-group col-sm-3 flex-column d-flex">
                                <label class="form-control-label px-3">Product Type <spanclass="text-danger"> *</span></label>
                                <input  class="temp" type="text" id="fname" name="ftype"  value="${e.ptype}" readonly>
                                
                            </div>
                            <div class="form-group col-sm-3 flex-column d-flex">
                                <label class="form-control-label px-3">Price&#x20B9;&nbsp;<spanclass="text-danger"> *</span></label>
                                <input class="temp"  type="text" id="fname" name="fprice"  value="${e.pwprice}" readonly>
                                
                            </div>
                        </div>
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">Farmer Name<span class="text-danger"> *</span></label>
                                <input  class="temp"  type="text" id="email" name="fname" value="<%out.println(s2.getAttribute("name"));%>" readonly>
                            </div>
                            <div class="form-group col-sm-3 flex-column d-flex">
                                <label class="form-control-label px-3">Contact Number<span class="text-danger"> *</span></label>
                                <input class="temp"  type="text" id="mob" name="fnumber" value="<%out.println(s2.getAttribute("mobile"));%>" readonly>
                            </div>
                             <div class="form-group col-sm-3 flex-column d-flex">
                                <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label>
                                <input class="temp"  type="text" id="mob" name="femail" value="<%out.println(s2.getAttribute("email"));%>" readonly>
                            </div>
                        </div>
                         <input type="date" id="myDate" name="dateout" value="" />
                         
                         <div class="row justify-content-between text-left">
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">State<span class="text-danger"> *</span></label>
                                <input class="temp"  type="text" id="email" name="fstate" value="<%out.println(s2.getAttribute("state"));%>" readonly>
                            </div>
                            <div class="form-group col-sm-6 flex-column d-flex">
                                <label class="form-control-label px-3">City<span class="text-danger"> *</span></label>
                                <input class="temp"  type="text" id="mob" name="fcity" value="<%out.println(s2.getAttribute("city"));%>" readonly>
                            </div>
                        </div>
                        
                        <div class="row justify-content-between text-left">
                            <div class="form-group col-12 flex-column d-flex">
                                <label class="form-control-label px-3">Message<span class="text-danger"> *</span></label>
                                <textarea class="temp"  id="ans" name="fmessage" placeholder="" rows="3" cols="50"></textarea>
                            </div>
                        </div>
                        <div class="row justify-content-end">
                               <a href="">
                                <button type="submit" class="btn-block btn-primary temp" style="margin-top: 20px;">Send Enquiry</button>
                           </a>
                           
                              <a href="farmproduct">
                                <button type="button" class="btn-block btn-danger temp" style="margin-top: 20px;">Cancel</button>
                            </a>
                            
                          
                        </div>
                    </form>
                    </c:forEach>
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
        
        #myDate{
          display:none;
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
        select {
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

                        <script>
    
                        document.getElementById('myDate').valueAsDate = new Date();
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