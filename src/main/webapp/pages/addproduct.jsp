<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>AgroAgency AddProduct</title>
<%@ include file="headeragro.jsp" %>
  <style>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap">
  
               body {
           
            font-family: 'Poppins', sans-serif;
        }
        .sidebar {
            height: 100%;
            width: 300px;
            position: fixed;
            background-color: #1b3a4b;
            padding-top: 20px;
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
        h2 {
            color: #343a40;
        }
         .container {
            max-width: 600px;
            margin-top: 50px;
        }
        .form-group {
            margin-bottom: 20px;
            color:#023047;
        }
        label {
            font-weight: bold;
        }
        .custom-file-label::after {
            content: "Browse";
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
    
      <div class="container">
        <h2 class="mb-4"><i class="fas fa-plus"></i>Add New Product</h2>
        <form id="productForm" onsubmit="return validateForm()" action="product" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="productName">Product Name</label>
                <input type="text" class="form-control" id="productName" name="pname" placeholder="Enter product name" required>
            </div>

            <div class="form-group">
                <label for="productType">Product Type</label>
                <select class="form-control" id="productType" name="ptype" required>
                    <option value="" disabled selected>Select product type</option>
                    <option value="Crop">Crop</option>
                    <option value="Herbs">Herbs</option>
                    <option value="Fertilizers">Fertilizers</option>
                    <option value="Vegetables">Vegetables</option>
                    <option value="Seeds">Seeds</option>
                    <option value="Fruits">Fruits</option>
                    <!-- Add more options as needed -->
                   
                </select>
            </div>

            <div class="form-group">
                <label for="productImage">Product Image</label>
                <div class="custom-file">
                    <input type="file" class="custom-file-input" id="productImage" name="pfile" required>
                    <label class="custom-file-label" for="productImage">Choose file</label>
                </div>
            </div>

            <div class="form-group">
                <label for="marketPrice">Current Market Price</label>
                <input type="number" name="pcprice" class="form-control" id="marketPrice" placeholder="Enter current market price" required>
            </div>

            <div class="form-group">
                <label for="bestPrice">Best Price We Offer</label>
                <input type="number" name="pwprice" class="form-control" id="bestPrice" placeholder="Enter best price" required>
            </div>

            <button type="submit" class="btn btn-primary"><i class="fa-solid fa-cart-shopping"></i> Add</button>
        </form>
    </div>

    <script>
        function validateForm() {
            var productName = document.getElementById('productName').value;
            var productType = document.getElementById('productType').value;
            var productImage = document.getElementById('productImage').value;
            var marketPrice = document.getElementById('marketPrice').value;
            var bestPrice = document.getElementById('bestPrice').value;

            if (productName === '' || productType === '' || productImage === '' || marketPrice === '' || bestPrice === '') {
                alert('Please fill in all fields.');
                return false;
            }

          

            return true;
        }
    </script>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   

</body>
</html>