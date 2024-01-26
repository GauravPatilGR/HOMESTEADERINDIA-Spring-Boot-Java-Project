<!DOCTYPE html>
<html lang="en">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>HomeStederIndia Products</title>
    <%@ include file="headerfile.jsp" %>
    
   

     <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>

<body>
   
   


   <!-- Hero Start -->
<div class="container-fluid bg-primary py-5 bg-hero mb-5">
    <div class="container py-5">
        <div class="row justify-content-start">
            <div class="col-lg-8 text-center text-lg-start">
                <h4 class="display- text-white mb-md-4">Search your Suitable Product for farming</h4>
                <form action="search" method="post">

        			 <input type="text" placeholder="Product eg Cotton!" name="name" style="border-radius: 38px; color: #fff;" class="btn-secondary py-md-3 px-md-3">
        			   
                               &nbsp;
                                <select id="trainingType" name="type" style="border-radius: 38px; color: #fff;" class="btn-secondary py-md-3 px-md-3" >
                                <option value="">--Filter--</option>
                                <option value="Crop">Crop</option>
                                <option value="Herbs">Herbs</option>
                                <option value="Fertilizers">Fertilizers</option>
                                <option value="Vegetables">Vegetables</option>
                                <option value="Fruits">Seeds</option>
                                <option value="Fruits">Fruits</option>
                            </select>
                          &nbsp;
        				<button  class="btn btn-primary py-md-3 px-md-3 me-3" type="submit" style="border-radius: 38px;">Search&nbsp;<i class="fa-solid fa-magnifying-glass"></i></button>
        				
        	  </form>
                
            </div>
        </div>
    </div>
</div>
<!-- Hero End -->

<!-- Products Start -->
<div class="container-fluid py-5">
    <div class="container">
        <div class="mx-auto text-center mb-5" style="max-width: 500px;">
            <h6 class="text-primary text-uppercase">Our Products</h6>
        </div>
        <div class="row">
            <c:forEach items="${ks}" var="e">
                <div class="col-md-4 mb-4 product-item" >
                    <div class="product-item  position-relative bg-white text-center" style="background: linear-gradient(#f77f00,#f1f2f6); border-radius:15px;">
                        <img src="product/${e.pfilen}" class="img-fluid mb-4" alt="${e.pname}" style="height: 220px; width: 300px;border-radius:7px;">
                        <h6 class="mb-3">${e.pname}</h6>
                        <h6 class="mb-3">${e.ptype}</h6>
                        <h6 class="text-danger mb-0"><i class="fas fa-tag"></i> Market Price &#x20B9; <del>${e.pcprice}</del></h6>
                        <h5 class="text-primary mb-0"><i class="fas fa-tag"></i> Our Price  &#x20B9;${e.pwprice}</h5>
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
    </div>
</div>


    
    
    
    <!-- Products End -->
    
    <style> 
    .product-item {
        padding: 0 15px 30px 15px;
        position: relative;
    }

    .product-item .btn-action {
        position: absolute;
        width: 100%;
        bottom: 0;
        left: 0;
        opacity: 0;
        transition: .5s;
    }

    .product-item:hover .btn-action {
        opacity: 1;
    }

    .product-item h5 {
        transition: .3s;
    }

    .product-item:hover h5 {
        opacity: 0;
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