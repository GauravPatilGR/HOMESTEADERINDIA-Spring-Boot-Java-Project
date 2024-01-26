<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="headerfile.jsp" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Blog</title>

</head>
<body>

<c:forEach items="${kk}" var="e">

 <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5  mb-5" style="background: url(blogimg/${e.blogimg}) top left no-repeat;
    background-size: cover;
    background-position: center;">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4">Latest Blog Post</h1>
                   
                </div>
            </div>
        </div>
    </div>
    
     <!-- Single Blog Post -->
        <div class="blog-post container">
           
            <h3 class="blog-post-title">${e.title}</h3>
            <p class="blog-post-meta">${e.dateout} by <a href="#">Gaurav Patil</a></p>
           
        </div>
    
    <div class="content-container">
        <div class="content-div">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${e.cone}</p>
        </div>

        <div class="content-div">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${e.ctwo}</p>
        </div>

        <div class="content-div">
            
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${e.cthree}</p>
        </div>
    </div>
    
      



 </c:forEach>
 
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
 
 
 <style> .content-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .content-div {
            box-sizing: border-box;
            width: 80%;
            margin: 10px;
            padding: 20px;
           
            
        }

        @media (max-width: 768px) {
            .content-div {
                width: calc(50% - 20px);
            }
        }

        @media (max-width: 480px) {
            .content-div {
                width: 100%;
            }
            .blog-post {
            margin-bottom: 40px;
            margin-left:20px;
        }
        }
        </style>
        
        


</body>
</html>