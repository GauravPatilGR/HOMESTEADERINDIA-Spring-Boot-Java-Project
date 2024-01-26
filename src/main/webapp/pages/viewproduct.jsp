<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Agroagency ViewProduct</title>
<%@ include file="headeragro.jsp" %>
  <style>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Inria+Sans&family=Montserrat:wght@300&display=swap');
  
               body {
           
            font-family: 'Inria Sans', sans-serif;
           
        }
        .sidebar {
            height: 100%;
            width: 300px;
            position: fixed;
            background-color: #1b3a4b;
            padding-top: 60px;
            margin-top:-40px;
        }
        .sidebar a {
            padding: 10px;
            text-decoration: none;
            font-size: 18px;
            color: white;
            display: block;
            transition: background-color 0.3s, transform 0.3s;
        }
        .sidebar a:hover {
            background-color: orange;
            transform: scale(1.0); 
            
        }
        .sidebar i {
            margin-right: 20px;
        }
        .content {
            margin-left: 250px;
            padding: 20px;
            
        }
        
          
       

        .product-container {
            margin: 20px auto;
            max-width: 800px;
            color:black;
            font-family: 'Inria Sans', sans-serif;
            
            
        }

        .product-card {
            margin-bottom: 20px;
            border: 1px solid #dee2e6;
            border-radius: 10px;
            overflow: hidden;
            transition: transform 0.3s;
            
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .product-card img {
            width: 100%;
            height: 190px;
            border-bottom: 2px solid #dee2e6;
        }

        .product-card .card-body {
            padding: 15px;
            color:black;
        }

        .product-card i {
            color: #6c757d;
        }

        .card-title {
            font-size: 1.2rem;
            color: #343a40;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 1rem;
            color: #495057;
            margin: 0;
        }

        h4 {
            color: #343a40;
            margin-top: 15px;
            font-family: 'Inria Sans', sans-serif;
        }
        
        p{
        
          color:black;
        }
        
        h5{
         font-family: 'Inria Sans', sans-serif;
        }
        
         .search-container {
            position: fixed;
            top: 1;
            right: 0;
            padding: 20px;
            background-color: #f8f9fa;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
           width:350px;
           border-radius:18px;
            background-color: #ade8f4;
            
        }

        .search-container label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        .search-container input {
            padding: 8px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
            width:280px;
            
        }

        .search-container i {
            margin-left: 5px;
            color: #333;
            cursor: pointer;
        }
        
        
        
        
    </style>
   
 <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body style="background-color: #89c2d9;">



    <div class="sidebar">
        <a href="Dashagro"><i class="fas fa-home"></i>Home.</a>
        <a href="addproduct"><i class="fas fa-plus"></i> Add New Product.</a>
        <a href="viewproduct"><i class="fas fa-eye"></i> View All Product.</a>
        <a href="farmdisplay"><i class="fa-solid fa-tractor"></i> Farmer Training Request.</a>
        <a href="studisplay"><i class="fas fa-graduation-cap"></i> Student Training Request.</a>
        <a href="soilrequestfarmeragro"><i class="fa-solid fa-magnifying-glass-chart"></i>Soil Analysis Request.</a>
        <a href="enqirydisplay"><i class="fa-solid fa-cart-plus"></i>Product Enquiry.</a>
    </div>
   
   
   <div class="container product-container">
    <h4><i class="fas fa-list-ul"></i> &nbsp;List of all listed Agricultural Products</h4>
    
    <div class="search-container">
        <label for="districtSearch" class="black">Filter</label>
        <input type="text" id="districtSearch" name="district" oninput="search()" placeholder="Enter Name/Type">
        <i class="fas fa-search"></i>
    </div>

    <div class="row">
        <!-- Product Cards -->
        <c:forEach items="${kp}" var="e">
            <div class="col-md-4">
                <div class="card product-card" data-name="${e.pname}" data-type="${e.ptype}" >
                    <img src="product/${e.pfilen}" class="card-img-top" alt="${e.pname}">
                    <div class="card-body">
                        <h5 class="card-title">Name:&nbsp;${e.pname}</h5>
                        <p class="card-text"><i class="fas fa-puzzle-piece"></i> Type:&nbsp;${e.ptype}</p>
                        <p class="card-text"><i class="fas fa-tag"></i> Rs:&nbsp;${e.pcprice}</p>
                        <form action="searchproductagroforedit" method="post">
                          
                           <input type="hidden" value="${e.pname}" name="name">
                             <button class="btn btn-primary" >Edit&nbsp;&nbsp;&nbsp;<i style="color:white;" class="fa-regular fa-pen-to-square"></i></button>
                          </form>
                          <br>
                          <a href="deleteproductagro/${e.id}" ><button  class="btn btn-danger" style="color:#fff;">Remove&nbsp;<i style="color:white;" class="fa-solid fa-trash"></i></button></a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>


<script>
    function search() {
        let filter = document.getElementById('districtSearch').value.toUpperCase();
        let cards = document.querySelectorAll('.product-card');

        cards.forEach(card => {
            let name = card.dataset.name.toUpperCase();
            let type = card.dataset.type.toUpperCase();

            if (name.includes(filter) || type.includes(filter)) {
                card.style.display = "";
            } else {
                card.style.display = "none";
            }
        });
    }
</script>
   

<!-- Bootstrap JS and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   
   
   <!-- Script for Search Opertion End -->

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