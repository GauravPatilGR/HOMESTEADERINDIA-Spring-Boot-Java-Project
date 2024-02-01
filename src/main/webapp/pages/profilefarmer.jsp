<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile Dashboard</title>
 <%@ include file="headerfile.jsp" %>
<link href="css/agrofarm.css" rel="stylesheet">
</head>
<body >

<%HttpSession h1=request.getSession(false);%>

<div class="container rounded bg-white mt-5 mb-5" >
  
    <div class="row">
 
        <div class="col-md-3 border-right" style="background-color:#ffe5ec;color:black; border-radius:18px; background: url(https://themayanagari.com/wp-content/uploads/2021/03/Grass-Png-Image-Download-1.png) center/cover no-repeat fixed;">
            <div class="d-flex flex-column align-items-center text-center p-3 py-5"><img class="rounded-circle mt-5" width="150px" src="https://upload.wikimedia.org/wikipedia/commons/0/06/Indian_Election_Symbol_sugarcane_farmer.png"><span class="font-weight-bold" style="color:black;"><%out.println(h1.getAttribute("name"));%></span><span><%out.println(h1.getAttribute("email"));%></span><span> </span></div>
        </div>
        <div class="col-md-5 border-right" style="background-image: linear-gradient(to left, #f18701,#73bfdc);color:black; border-radius:18px;">
            <div class="p-3 py-5">
                <div class="d-flex justify-content-between align-items-center mb-3">
                    <h4 class="text-right">User Profile Dashboard &nbsp;<i class="fa-brands fa-ubuntu" style="font-size:30px;"></i></h4>
                </div>
                
                
                <c:forEach items="${kk}" var="e">
                 <form action="setprofile" method="POST">
                <div class="row mt-3">
               
               
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Name:</label><input type="text" class="form-control" placeholder="first name" name="name" value="${e.name}" style="color:black;" ></div>
                    
                     
                
                    
                </div>
                <div class="row mt-3">
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Mobile Number:</label><input type="text" class="form-control"  name="mobile"  placeholder="enter phone number" value="${e.mobile}" style="color:black;"></div>
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Email Address:</label><input type="text" class="form-control" placeholder="enter Email"  name="email"  value="${e.email}" style="color:black;"></div>
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">State:</label><input type="text" class="form-control" placeholder="State"  name="state"  value="${e.state}" style="color:black;"></div>
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">District:</label><input type="text" class="form-control" placeholder="District"  name="city"  value="${e.city}" style="color:black;"></div>
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Town:</label><input type="text" class="form-control" placeholder="Town"  name="town"  value="${e.town}"  style="color:black;"></div>
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Village:</label><input type="text" class="form-control" placeholder="enter address l"  name="village"   value="${e.village}" style="color:black;"></div>
                    
                     <input type="hidden" value="${e.password}" name="password"> 
                       <input type="hidden" value="${e.id}" name="id"> 
                    
                    <div class="col-md-12"><label class="labels" style="font-size:15px;">Soil Type:</label>                     
                    <select name="soiltype" class="form-control" id="dropdown" style="height: 50px; color:black;">
                                  <option value="${e.soiltype}">${e.soiltype}</option>
                                  <option value="Black Cotton Soil">Black Cotton Soil</option>
                                  <option value="Alluvial Soil">Alluvial Soil</option>
                                  <option value="Red & Yellow Soil">Red & Yellow Soil</option>
                                  <option value="Laterite Soil">Laterite Soil</option>
                                  <option value="Mountainous or Forest Soil">Mountainous or Forest Soil</option>
                                  <option value="Arid or Desert Soil">Arid or Desert Soil</option>
                                  <option value="Saline and Alkaline Soil">Saline and Alkaline Soil</option>
                                  <option value="Peaty and Marshy Soil">Peaty and Marshy Soil</option>
                                </select></div>
                                
                </div>
               
                <div class="mt-5 text-center"><button class="btn btn-primary profile-button" type="submit">Save Profile</button></div>
                </form>
                </c:forEach>
                
                
            </div>
        </div>
        
    </div>
</div>

  <h4 style="text-align:center;">My Activities &nbsp;<i class="fa-solid fa-users-gear" style="font-size:30px;"></i></h4>
  
  <hr style="border: 5px solid green;">
  <br>
<br>
<br>
   <h4> Product Enquiries <i class="fa-solid fa-cart-shopping" style="font-size:30px;"></i></h4>
<table>

    <thead>
        <tr>
            <th scope="col">Farmer Name</th>
            <th scope="col">Product Name</th>
            <th scope="col">Product Type</th>
            <th scope="col">Product Price</th>
            <th scope="col">Date of Submission</th>
           
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${k}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.fname}</td>
                <td data-label="Product">${e.fproduct}</td>
                <td data-label="Type">${e.ftype}</td>
                <td data-label="Price">${e.fprice}</td>
                <td data-label="Date">${e.dateout}</td>
              
            </tr>
        </c:forEach>
    </tbody>
</table>

<br>
<br>
<br>


 <hr style="border: 1px solid black;">
 <br>
<br>

<h4> Soil Analysis <i class="fa-solid fa-magnifying-glass-chart"style="font-size:30px;"></i></h4>
<table>

    <thead>
        <tr>
            <th scope="col">Farmer Name</th>
            <th scope="col">Soil Type</th>
            <th scope="col">Texture</th>
            <th scope="col">Fertilizers Used</th>
            <th scope="col">Date</th>
            <th scope="col">Action</th>
            
            <th scope="col"></th>
            
            
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${kkk}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.sname}</td>
                <td data-label="Soil Type">${e.stype}</td>
                <td data-label="Texture">${e.stexture}</td>
                <td data-label="Fertilizers Used">${e.sfertilizer}</td>
                <td data-label="Date of Submission">${e.sdate}</td>
                <td data-label="Withdraw"><a href="withdraw/${e.id}">Withdraw Request</a></td>
                <td data-label="Download PDF">
                
                  <form action="getpdf" method="post">
                 
                 <input type="text" value="<%out.println(s1.getAttribute("email"));%>" name="email" style="display:none;">
                
               
                <button type="submit" style="color:#1a8cff;">Download PDF &nbsp;<i class="fa-solid fa-file-pdf"></i></button></form>
                
                
                </td>
                
            </tr>
        </c:forEach>
    </tbody>
</table>


<br>
<br>
<br>
 <hr style="border: 1px solid black;">
 

<h4>Farmer Training <i class="fa fa-tractor" style="font-size:30px;"></i></h4>
<table>

    <thead>
        <tr>
            <th scope="col">Farmer Name</th>
            <th scope="col">Contact Number</th>
            <th scope="col">Training Type</th>
            <th scope="col">Location</th>
            <th scope="col">Date</th>
            
          
            
            
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${kkkk}" var="e">
            <tr>
                <td data-label="Farmer Name">${e.fname}</td>
                <td data-label="Farmer Name">${e.fmobile}</td>
                <td data-label="Farmer Name">${e.ftraining}</td>
                <td data-label="Farmer Name">${e.flocation}</td>
                <td data-label="Farmer Name">${e.fdate}</td>
              
                
                
                
               
                
            </tr>
        </c:forEach>
    </tbody>
</table>





<style>

.form-control:focus {
    box-shadow: none;
    border-color: #BA68C8
}




.profile-button {
    background: rgb(99, 39, 120);
    box-shadow: none;
    border: none
}

.profile-button:hover {
    background: #682773
}

.profile-button:focus {
    background: #682773;
    box-shadow: none
}

.profile-button:active {
    background: #682773;
    box-shadow: none
}

.back:hover {
    color: #682773;
    cursor: pointer
}

.labels {
    font-size: 11px
}



.add-experience:hover {
    background: #BA68C8;
    color: #fff;
    cursor: pointer;
    border: solid 1px #BA68C8
}</style>


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