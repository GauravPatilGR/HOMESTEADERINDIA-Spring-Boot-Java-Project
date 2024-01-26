<!DOCTYPE html>
<html lang="en">
 

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>HomeStederIndia Contact us</title>
    <%@ include file="headerfile.jsp" %>
    
    
</head>
<body>
    
    <!-- Hero Start -->
    <div class="container-fluid bg-primary py-5 bg-hero mb-5">
        <div class="container py-5">
            <div class="row justify-content-start">
                <div class="col-lg-8 text-center text-lg-start">
                    <h1 class="display-1 text-white mb-md-4">Contact Us</h1>
                   
                </div>
            </div>
        </div>
    </div>
    <!-- Hero End -->

<%HttpSession s3=request.getSession(false);%>
    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="mx-auto text-center mb-5" style="max-width: 500px;">
                <h6 class="text-primary text-uppercase">Contact Us</h6>
                <h1 class="display-5">Please Feel Free To Contact Us</h1>
            </div>
            <div class="row g-0">
                <div class="col-lg-7">
                    <div class="bg-primary h-100 p-5">
                        <form action="contact" method="post">
                            <div class="row g-3">
                                <div class="col-6">
                                    <input type="text" name="name" class="form-control bg-light border-0 px-4" value="<%out.println(s3.getAttribute("name"));%>" style="height: 55px;" readonly>
                                </div>
                                <div class="col-6">
                                    <input type="email" name="email" class="form-control bg-light border-0 px-4" value="<%out.println(s3.getAttribute("email"));%>" style="height: 55px;" readonly>
                                </div>
                                <div class="col-12">
                                    <input type="text" name="subject"class="form-control bg-light border-0 px-4" placeholder="Subject" style="height: 55px;">
                                </div>
                                <div class="col-12">
                                    <textarea class="form-control bg-light border-0 px-4 py-3" name="message" rows="2" placeholder="Message"></textarea>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-secondary w-100 py-3" type="submit">Send Message</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="bg-secondary h-100 p-5">
                        <h2 class="text-white mb-4">Get In Touch</h2>
                        <div class="d-flex mb-4">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-geo-alt fs-4 text-white"></i>
                            </div>
                             <div class="ps-3">
                                <h5 class="text-white">Our Office</h5>
                                <span class="text-white">Pune,Maharashtra</span>
                            </div>
                        </div>
                        <div class="d-flex mb-4">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-envelope-open fs-4 text-white"></i>
                            </div>
                           <div class="ps-3">
                                <h5 class="text-white">Email Us</h5>
                                <span class="text-white">gauravpatilgr13@gmail.com</span>
                            </div>
                        </div>
                        <div class="d-flex">
                            <div class="bg-primary rounded-circle d-flex align-items-center justify-content-center" style="width: 60px; height: 60px;">
                                <i class="bi bi-phone-vibrate fs-4 text-white"></i>
                            </div>
                            <div class="ps-3">
                                <h5 class="text-white">Call Us</h5>
                                <span class="text-white">+91 9834583904</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->


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