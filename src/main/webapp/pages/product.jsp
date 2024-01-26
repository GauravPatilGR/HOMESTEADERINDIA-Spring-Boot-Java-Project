<!DOCTYPE html>
<html lang="en">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="utf-8">
   <meta content="width=device-width, initial-scale=1.0" name="viewport">
   <title>HomeStederIndia Our Product</title>
   <%@ include file="headerfile.jsp" %>
     <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>

<body>
   
   


    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4">Our Products</h1>
                    
                    <a href="farmproduct" class="btn btn-secondary py-md-3 px-md-5"> View All Products</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->


    <!-- Products Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Products</h6>
                <h1 class="display-5">Our Fresh & Organic Products</h1>
               
                
            </div>
            <div class="owl-carousel product-carousel px-5">
            <c:forEach items="${kf}" var="e">
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