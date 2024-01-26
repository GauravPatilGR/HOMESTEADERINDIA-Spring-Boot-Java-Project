<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>


<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
     <title>AgroAgency Soilanalysis Request</title>
    <%@ include file="headeragro.jsp" %>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap');
        
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #89c2d9;
            margin: 0;
        }

        .sidebar {
            height: 100%;
            width: 298px;
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
            margin-left: 300px;
            padding: 20px;
            text-align: center;
        }

        h1 {
            color: #343a40;
            text-align: center;
            
        }

        /* Added styles for the new table */
        .table-container {
            
            margin-right: 30px;
            width: 100%; /* Adjust the width as needed */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            
        }

        th, td {
            padding: 5px;
            text-align: middle;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #1b3a4b;
            color: white;
        }
        td{
          color:black;
        }

        /* Styles for the search bar */
        form {
            display: inline-block;
            margin-bottom: 20px;
        }

        label {
            margin-right: 10px;
        }

        input {
            padding: 8px;
            margin-right: 10px;
        }

        button {
            padding: 8px 12px;
            background-color: #1b3a4b;
            color: white;
            border: none;
            cursor: pointer;
        }
        .black{
        
          color:black;
        }
    </style>
   
    <script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
</head>
<body>

     <div class="sidebar">
        <a href="Dashagro"><i class="fas fa-home"></i>Home.</a>
        <a href="addproduct"><i class="fas fa-plus"></i> Add New Product.</a>
        <a href="viewproduct"><i class="fas fa-eye"></i> View All Product.</a>
        <a href="farmdisplay"><i class="fa-solid fa-tractor"></i> Farmer Training Request.</a>
        <a href="studisplay"><i class="fas fa-graduation-cap"></i> Student Training Request.</a>
        <a href="soilrequestfarmeragro"><i class="fa-solid fa-magnifying-glass-chart"></i>Soil Analysis Request.</a>
        <a href="enqirydisplay"><i class="fa-solid fa-cart-plus"></i>Product Enquiry.</a>
    </div>

    <div class="content">
        <h3>Soil Analysis Request By Farmers<i class="fa-solid fa-chart-pie"></i></h3>
        <div>
            <form id="searchForm" action="#" method="get">
    
    <input type="text"  name="district" id="searchInput" oninput="searchTable()" placeholder="Search By Email or Location " style="width:300px; border-radius:34px;"><i class="fa-solid fa-magnifying-glass"></i>
   
</form>
        </div>

        <div class="table-container">
            <table id="tb">
                <thead>
                    <tr>
                        
                        <th style="font-size:13px;">Farmer Name</th>
                        <th style="font-size:13px;">Email</th>
                        <th style="font-size:13px;">Mobile no</th>
                        <th style="font-size:13px;">Location</th>
                        <th style="font-size:13px;">Date</th>
                        <th style="font-size:13px;">Depth (in cm)</th>
                        <th style="font-size:13px;">Type of Soil</th>
                        <th style="font-size:13px;">Organic Matter (%)</th>
                        <th style="font-size:13px;">Soil Texture</th>
                        <th style="font-size:13px;">Crop Type</th>
                        <th style="font-size:13px;">Previous Crop</th>
                        <th style="font-size:13px;">Fertilizers Used</th>
                        <th style="font-size:13px;">Irrigation</th>
                    </tr>
                </thead>
                <tbody>
                   <c:forEach items="${kk}" var="e">
                        <tr>
                            <td style="font-size:13px;">${e.sname}</td>
                            <td style="font-size:13px;">${e.semail}</td>
                            <td style="font-size:13px;">${e.smobile}</td>
                            <td style="font-size:13px;">${e.slocation}</td>
                            <td style="font-size:13px;">${e.sdate}</td>
                            <td style="font-size:13px;">${e.sdepth}</td>
                            <td style="font-size:13px;">${e.stype}</td>
                            <td style="font-size:13px;">${e.sorganic}</td>
                            <td style="font-size:13px;">${e.stexture}</td>
                            <td style="font-size:13px;">${e.scrop}</td>
                            <td style="font-size:13px;">${e.spcrop}</td>
                            <td style="font-size:13px;">${e.sfertilizer}</td>
                            <td style="font-size:13px;">${e.sirrigation}</td>
                           
                           
                           
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    
    <!-- Script for Search Opertion start -->
    
   <script>
    function searchTable() {
        // Declare variables
        var input, filter, table, tr, tdName, tdCategory, tdOurPrice, i, txtValueName, txtValueCategory, txtValueOurPrice;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.getElementById("tb");
        tr = table.getElementsByTagName("tr");

     
        for (i = 0; i < tr.length; i++) {
            tdName = tr[i].getElementsByTagName("td")[1]; // Assuming the product name is in the second column
            tdCategory = tr[i].getElementsByTagName("td")[1]; // Assuming the category is in the third column
            tdOurPrice = tr[i].getElementsByTagName("td")[3]; // Assuming the "Our Price" column is the fifth column

            if (tdName || tdCategory || tdOurPrice) {
                txtValueName = tdName.textContent || tdName.innerText;
                txtValueCategory = tdCategory.textContent || tdCategory.innerText;
                txtValueOurPrice = tdOurPrice.textContent || tdOurPrice.innerText;

                if (txtValueName.toUpperCase().indexOf(filter) > -1 || txtValueCategory.toUpperCase().indexOf(filter) > -1 || txtValueOurPrice.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }
</script>
		
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
