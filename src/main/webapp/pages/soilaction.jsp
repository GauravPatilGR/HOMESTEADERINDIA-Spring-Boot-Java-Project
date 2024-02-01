<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>HomeStederIndia SoilAnalysis Not Proceed</title>
 <%@ include file="headerfile.jsp" %>
  <style>
        body {
            background-color: #f8f9fa;
        }

        .containers {
            margin-top: 100px;
        }

        .verification-card {
            border-radius: 15px;
            border: 2px solid #007bff;
            margin-bottom: 20px;
        }

        .verification-info {
            color: #007bff;
            font-weight: bold;
        }

        h2 {
            font-size: 2.5rem;
        }

        .card-text {
            font-size: 1.2rem;
            line-height: 1.6;
        }
    </style>
</head>
<body>

 <%HttpSession h1=request.getSession(false);%>

  <!-- Message -->
    <div class="containers">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card verification-card">
                    <div class="card-body text-center">
                     <h1 class="card-title" style=background-color:red;color:#fff;border-radius:32px;>Sorry ! <%out.println(h1.getAttribute("name"));%></h1>
                        <h2 class="card-title">You Alredy Submitted Soil Analysis Request</h2>
                        <p class="card-text">Please withdraw the first request before proceeding with another request.</p>
                        <p class="verification-info"><form action="searchname" method="post">
                 
                 <input type="text" value="<%out.println(s1.getAttribute("email"));%>" name="email" style="display:none;">
                
               
                <button type="submit">Withdraw</button></form></p>
                       
                       
                    </div>
                </div>

                <!-- Additional card -->
                <div class="card verification-card">
                    <div class="card-body text-center">
                        <h2 class="card-title">Need Help?</h2>
                        <p class="card-text">If you have any questions or concerns, please contact our support team at<br>
                            gauravpatilgr13@gmail.com</p>
                    </div>
                </div>
            </div>
        </div>
    </div>


 <!-- Message End -->
 
 
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