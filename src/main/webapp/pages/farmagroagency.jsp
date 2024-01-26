<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ include file="headerfile.jsp" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AgroAgency lits</title>
<link href="css/agrofarm.css" rel="stylesheet">
</head>
<body>

<!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4" style="font-size:30px;">HomeSteaderIndia Register AgroAgencies</h1>
                    <div class="container">

            <div class="row height d-flex justify-content-center align-items-center">

              <div class="col-">

                <div class="form">
                  <i class="fa fa-search"></i>
                  <input type="text" class="form-control form-input" id="searchInput" placeholder="Search by City or Town" onkeyup="searchTable()" style="border-radius:34px;">
                 
                </div>
                
              </div>
              
            </div>
            
          </div>
                   
                    
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->
    
    <style>
    
    .form{

    position: relative;
}

.form .fa-search{

    position: absolute;
    top:20px;
    left: 20px;
    color: #9ca3af;

}

.form span{

        position: absolute;
    right: 17px;
    top: 13px;
    padding: 2px;
    border-left: 1px solid #d1d5db;

}

.left-pan{
    padding-left: 7px;
}

.left-pan i{
   
   padding-left: 10px;
}

.form-input{

    height: 55px;
    text-indent: 33px;
    border-radius: 10px;
}

.form-input:focus{

    box-shadow: none;
    border:none;
}</style>



<table>
    <thead>
        <tr>
            <th scope="col">AgroAgency Name</th>
            <th scope="col">Email</th>
            <th scope="col">City</th>
            <th scope="col">Town</th>
            <th scope="col">Address</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach items="${kk}" var="e">
            <tr>
                <td data-label="AgroAgency Name">${e.name}</td>
                <td data-label="Email">${e.email}</td>
                <td data-label="City">${e.district}</td>
                <td data-label="Town">${e.town}</td>
                <td data-label="Address">${e.address}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<script>
    function searchTable() {
        var input, filter, table, tr, td, i, j;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector("table");
        tr = table.getElementsByTagName("tr");

        for (i = 1; i < tr.length; i++) { // Start from 1 to skip the table header
            var found = false;
            for (j = 2; j <= 3; j++) { // Check in City and Town columns (change the range as needed)
                td = tr[i].getElementsByTagName("td")[j];
                if (td) {
                    if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
                        found = true;
                        break;
                    }
                }
            }
            tr[i].style.display = found ? "" : "none";
        }
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