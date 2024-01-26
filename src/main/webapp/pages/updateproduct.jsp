<!DOCTYPE html> 
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head> 
	<meta charset="UTF-8"> 
	<meta http-equiv="X-UA-Compatible"
		content="IE=edge"> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1.0"> 
	<title>Admin Agro</title> 
	<link rel="stylesheet"
		href="css/styleadmin.css"> 
	<link rel="css/stylesheet"
		href="responsive.css"> 
		
		<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
		
  
<body> 
	
	<!-- for header part -->
	<header> 

		<div class="logosec"> 
            <div class="logo">Homesteader<i class="fa-brands fa-pagelines"></i>India</div> 
            <img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                class="icn menuicn" 
                id="menuicn" 
                alt="menu-icon"> 
        </div> 

		<div class="searchbar"> 
			<input type="text"
				placeholder="Search"> 
			<div class="searchbtn"> 
				<i class="fa-solid fa-magnifying-glass"></i>
			</div> 
		</div> 

        <div style="margin-left:600px;"> <h3>Welcome Admin</h3></div>
			<div class="dp">
            
			<img src= 
           "https://media.geeksforgeeks.org/wp-content/uploads/20221210180014/profile-removebg-preview.png"
					class="dpicn"
					alt="dp"> 
                   
			</div> 
           
            
		</div> 

	</header> 

	<div class="main-container"> 
		<div class="navcontainer"> 
			<nav class="nav"> 
				<div class="nav-upper-options"> 
				<a href="admindash">
					<div class="nav-option option1"> 
						<i class="fa-solid fa-table-columns"></i>
						<h3> Dashboard</h3> 
					</div> 
					</a>

					 <a href="adminagro">
					<div class="option nav-option"> 
						<i class="fa-solid fa-building-circle-arrow-right"></i>
						<h3> Agro Agency</h3> 
					</div> </a>

					<div class="nav-option option3"> 
						<i class="fa-solid fa-file-circle-plus"></i>
						<h3>Farmer Report</h3> 
					</div> 

					 <a href="addproductadmin">
					<div class="nav-option option4"> 
						<i class="fa-solid fa-plus"></i>                       
						<h3>Add Product</h3> 
					</div></a> 
					
					 <a href="editproductadmin">
					<div class="nav-option option4"> 
						<i class="fa-solid fa-pen-to-square"></i>                        
						<h3>View & Edit Product</h3> 
					</div></a> 
					
					<div class="nav-option option5"> 
						<i class="fa-solid fa-cloud-moon-rain"></i>
						<h3> Climate</h3> 
					</div> 

					<div class="nav-option option6"> 
						<i class="fa-solid fa-chart-pie"></i>
						<h3>Soil Analysis</h3> 
					</div> 

					<div class="nav-option logout"> 
						<i class="fa-brands fa-blogger-b"></i>
						<h3>Blog</h3> 
					</div> 
					
                     <a href="logoutadmin">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-arrow-right-from-bracket"></i>
						<h3>Logout</h3>
					</div></a>

				</div> 
			</nav> 
		</div> 
		<div class="main"> 

			<div class="searchbar2"> 
				<input type="text"
					name=""
					id=""
					placeholder="Search"> 
				<div class="searchbtn"> 
				<img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210180758/Untitled-design-(28).png"
						class="icn srchicn"
						alt="search-button"> 
				</div> 
			</div> 


			<div class="report-container" style=width:650px;> 
				<div class="report-header"> 
					<h1 class="recent-Articles">&nbsp;<i class="fa-regular fa-pen-to-square"></i>Edit Existing Product</h1> 
				</div> 	
	                      <c:forEach items="${kk}" var="e">
	                     <form id="productForm" onsubmit="return validateForm()" action="updateproduct" method="post" enctype="multipart/form-data">
            <div class="form-group">
             <input type="hidden" class="form-control" id="productName" name="id" value="${e.id}" required>
                <label for="productName">Product Name</label>
                <input type="text" class="form-control" id="productName" name="pname" value="${e.pname}" required>
            </div>

            <div class="form-group">
                <label for="productType">Product Type</label>
                <select class="form-control" id="productType" name="ptype"   required>
                    <option value="${e.ptype}">${e.ptype}</option>
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
                    <input type="file" class="custom-file-input" id="productImage" name="pfile" value="${e.pfilen}"  required>
                    <label class="custom-file-label" for="productImage">Choose file</label>
                </div>
            </div>
            
             <img src="product/${e.pfilen}" alt="Certificate Image" style="width:200px; height:130px;">

            <div class="form-group">
                <label for="marketPrice">Current Market Price</label>
                <input type="number" name="pcprice" class="form-control" id="marketPrice" value="${e.pcprice}"  required>
            </div>

            <div class="form-group">
                <label for="bestPrice">Best Price We Offer</label>
                <input type="number" name="pwprice" class="form-control" id="bestPrice" value="${e.pwprice}"  required>
            </div>

            <button type="submit" class="btn btn-primary" style=" background-color:#ffb703;"><i class="fa-solid fa-pen"></i>&nbsp;Update</button>
        </form>
        </c:forEach>
	
                      
						

					</div> 
				</div> 
			</div> 
		
	
	<style> 
	
	.table-container {
            
            margin-right: 30px;
            width: 100%; /* Adjust the width as needed */
        }

        table {
            width: 100%;
            border-collapse: collapse;
            
        }

        th, td {
            padding: 12px;
            text-align: middle;
            border-bottom: 1px solid #ddd;
        }

        th {
            
            color: black;
        }
        td{
          color:black;
        }
        
        
    a,.demo{
      text-decoration: none;
      padding: 10px;
      display: flex;
      text-align: center;
      align-items: center;
      
      border-radius: 12px;
      color: white;
      font-family: "Poppins", sans-serif;
    }
    
     button{
      text-decoration: none;
      padding: 4px;
      display: flex;
      text-align: center;
      align-items: center;
      background-color:#ffb703;
      border-radius: 12px;
      color: blue;
      font-family: "Poppins", sans-serif;
    }
    
     
        .container {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: 600px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        button {
            background-color: #29bf12;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        
        


 
	</style>

	<script src="./index.js"></script> 

    <script>let menuicn = document.querySelector(".menuicn"); 
        let nav = document.querySelector(".navcontainer"); 
        
        menuicn.addEventListener("click", () => { 
            nav.classList.toggle("navclose"); 
        })
        </script>
</body> 
</html>
