<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta content="width=device-width, initial-scale=1.0" name="viewport">
 <title>HomeStederIndia SoilAnalysis</title>
 <%@ include file="headerfile.jsp" %>

</head>
<body>
 
   <%HttpSession h1=request.getSession(false);%>

    <div class="container-fluid px-1 py-5 mx-auto">
        <div class="row d-flex justify-content-center">
            <div class="col-xl-7 col-lg-8 col-md-9 col-11 text-center">
         
                <h3>Soil Analysis Form </h3>
                <p class="blue-text " style="color:green;"><span class="text-danger">*</span >Fill Your Details Correctly it Will help Us to<br>Analysis Your Soil
                <br><span class="text-danger">Note-</span >You can Request one Soil Analysis Request from Each Acccount</p>
                <div class="card">
                   
                    <form class="form-card" action="savesoilresponse" method="post" onsubmit="return validateForm()">
    <h5 style="text-align: left;">1) Sample Information</h5>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Name Of Farmer<span class="text-danger"> *</span></label>
        <input type="text" id="fname" class="temp" name="sname" value="<%out.println(h1.getAttribute("name"));%>" readonly>
      </div>
       <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Location<span class="text-danger"> *</span></label>
        <input type="text" id="location" class="temp" name="slocation" placeholder="Eg Pune, Maharashtra">
        <span id="locationError" class="error"></span>
      </div>
    </div>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Mobile Number<span class="text-danger"> *</span></label>
        <input type="text" id="fname" class="temp" name="smobile" value="<%out.println(h1.getAttribute("mobile"));%>"  readonly>
      </div>
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Email<span class="text-danger"> *</span></label>
        <input type="text" id="lname" class="temp" name="semail" value="<%out.println(h1.getAttribute("email"));%>"  readonly>
      </div>
    </div>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Depth (in cm):<span class="text-danger"> *</span></label>
        <input type="text" id="depth" class="temp" name="sdepth" placeholder="Enter the depth of Soil in cm">
        <span id="depthError" class="error"></span>
      </div>
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Type of Soil<span class="text-danger"> *</span></label>
        <input type="text" id="soilType" class="temp" name="stype" value="<%out.println(h1.getAttribute("soil"));%>"  readonly>
        <span id="soilTypeError" class="error"></span>
      </div>
    </div>
    <h5 style="text-align: left;">2) Soil Properties:</h5>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Organic Matter (%):<span class="text-danger"> *</span></label>
        <input type="text" id="organicMatter" class="temp" name="sorganic" placeholder="How much amount of organic Soil in %">
        <span id="organicMatterError" class="error"></span>
      </div>
      <div class="form-group col-sm-6 flex-column d-flex">
        <label for="texture">Soil Texture:</label>
        <select class="form-control temp" id="texture" name="stexture">
          <option value="sandy">Sandy</option>
          <option value="loamy">Loamy</option>
          <option value="clay">Clay</option>
        </select>
      </div>
    </div>
    <h5 style="text-align: left;">3) Additional Information:</h5>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Crop Type:<span class="text-danger"> *</span></label>
        <input type="text" id="cropType" class="temp" name="scrop" placeholder="Current Crop Type">
        <span id="cropTypeError" class="error"></span>
      </div>
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Previous Crop:<span class="text-danger"> *</span></label>
        <input type="text" id="previousCrop" class="temp" name="spcrop" placeholder="Previous Crop Type">
        <span id="previousCropError" class="error"></span>
      </div>
    </div>
    <div class="row justify-content-between text-left">
      <div class="form-group col-sm-6 flex-column d-flex">
        <label class="form-control-label px-3">Fertilizers Used<span class="text-danger"> *</span></label>
        <input type="text" id="fertilizersUsed" name="sfertilizer" class="temp" placeholder="Enter the Fertilizers used in farming">
        <span id="fertilizersUsedError" class="error"></span>
      </div>
      <div class="form-group col-sm-6 flex-column d-flex">
        <label for="irrigation">Irrigation:</label>
        <select class="form-control temp" id="irrigation" name="sirrigation">
          <option value="yes">Yes</option>
          <option value="no">No</option>
        </select>
      </div>
    </div>
    <input class="temp" type="date" id="myDate" name="sdate" value="" style="display:none;">
    <div class="row justify-content-between text-left">
      <label for="comments">Soil Description</label>
      <textarea class="form-control temp" id="comments" name="scomments" rows="4"></textarea>
    </div>
    <input class="temp" type="date" id="myDate" name="fdate" value="" style="display:none;">
    <div class="row justify-content-end">
      <div class="form-group col-sm-6">
        <button type="submit" class="btn-block btn-primary temp" style="margin-top: 20px;">Submit</button>
      </div>
    </div>
  </form>
                </div>
            </div>
        </div>
    </div>
    
    
                        <script>
    
                        document.getElementById('myDate').valueAsDate = new Date();
                       </script>
                       
                       
                        <script>
    function validateForm() {
      // Reset errors
      document.getElementById("depthError").innerHTML = "";
      document.getElementById("soilTypeError").innerHTML = "";
      document.getElementById("organicMatterError").innerHTML = "";
      document.getElementById("cropTypeError").innerHTML = "";
      document.getElementById("previousCropError").innerHTML = "";
      document.getElementById("fertilizersUsedError").innerHTML = "";
      document.getElementById("locationError").innerHTML = "";

      // Get form values
      var depth = document.getElementById("depth").value;
      var soilType = document.getElementById("soilType").value;
      var organicMatter = document.getElementById("organicMatter").value;
      var cropType = document.getElementById("cropType").value;
      var previousCrop = document.getElementById("previousCrop").value;
      var fertilizersUsed = document.getElementById("fertilizersUsed").value;
      var location = document.getElementById("location").value;

      // Validate depth
      if (depth.trim() === "") {
        document.getElementById("depthError").innerHTML = "Depth is required";
        return false;
      }
      
      if (location.trim() === "") {
          document.getElementById("locationError").innerHTML = "Location is required";
          return false;
        }

      // Validate soil type
      if (soilType.trim() === "") {
        document.getElementById("soilTypeError").innerHTML = "Soil type is required";
        return false;
      }

      // Validate organic matter
      if (organicMatter.trim() === "") {
        document.getElementById("organicMatterError").innerHTML = "Organic matter is required";
        return false;
      }

      // Validate crop type
      if (cropType.trim() === "") {
        document.getElementById("cropTypeError").innerHTML = "Crop type is required";
        return false;
      }

      // Validate previous crop
      if (previousCrop.trim() === "") {
        document.getElementById("previousCropError").innerHTML = "Previous crop is required";
        return false;
      }

      // Validate fertilizers used
      if (fertilizersUsed.trim() === "") {
        document.getElementById("fertilizersUsedError").innerHTML = "Fertilizers used is required";
        return false;
      }

      // If all validations pass, return true
      return true;
    }
  </script>
    
    
    <style>
         body {
            color: #000;
            overflow-x: hidden;
            height: 100%;
            background-repeat: no-repeat;
            background-size: 100% 100%;
        }
        
         .error {
      color: red;
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
        label
        {
        text-align: left;
        }

        .temp,
        textarea,
        select{
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