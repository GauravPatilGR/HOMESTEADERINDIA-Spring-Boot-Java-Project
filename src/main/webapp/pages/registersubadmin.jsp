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
	<title>Register Admin</title> 
	<link rel="stylesheet"
		href="css/styleadmin.css"> 
	<link rel="css/stylesheet"
		href="responsive.css"> 
		
		<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
		
  
<body> 
	
	<!-- for header part -->
	<header> 

		<div class="logosec"> 
            <div class="logo">HomesteaderIndia</div> 
            <img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                class="icn menuicn" 
                id="menuicn" 
                alt="menu-icon"> 
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
						<h3> AgroAgency Request</h3> 
					</div> </a>
					
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
					
					<div class="nav-option option3"> 
						<i class="fa-solid fa-file-circle-plus"></i>
						<h3>Farmer Report</h3> 
					</div> 
					
					<a href="wheatherupdateadmin">
					<div class="nav-option option5"> 
						<i class="fa-solid fa-cloud-moon-rain"></i>
						<h3> Climate Update</h3> 
					</div></a> 
					
					<div class="nav-option option6"> 
						<i class="fa-solid fa-chart-pie"></i>
						<h3>Soil Analysis</h3> 
					</div> 
					
					 <a href="adminagro">
					<div class="option nav-option"> 
						<i class="fa-solid fa-building-wheat"></i>
						<h3> AgroAgency</h3> 
					</div> </a>
					
					<div class="nav-option option3"> 
						<i class="fa-solid fa-circle-user"></i>
						<h3>Farmers</h3> 
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
 <ul class="subadmin-list">
        <h3>Registered Subadmin list</h3>
        <c:forEach items="${kk}" var="e">
            <li class="subadmin-item">
                <span>${e.name}</span>
                <span>${e.email}</span>
                <spam>${e.password}</spam>
                <a href="removesubadmin/${e.id}">
                    <button class="remove-access-btn">Remove Access <i class="fa-regular fa-circle-xmark"></i></button>
                </a>
            </li>
        </c:forEach>
    </ul>

			<div class="report-container" style=width:500px;> 
				<div class="report-header"> 
					<h4 class="recent-Articles"></i>Sub-Admin Registration<i class="fa-regular fa-address-card"></i></h4> 
				</div> 	
	
	     <form action="registersubad" method="post">
       
        <label for="username">Username:</label>
        <input type="text" id="username" name="name"  placeholder="Enter Username"required>
        
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" placeholder="Enter Email" required>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" placeholder="Enter Password" required>

        

        <button type="submit">Register</button>
    </form>
                      
						

					</div> 
				</div> 
			</div> 
		
	
	<style> 
	
	
        /* Add your custom CSS styles here */
        .subadmin-list {
            list-style-type: none;
            padding: 0;
        }

        .subadmin-item {
            border: 1px solid #ddd;
            margin: 5px;
            padding: 10px;
            display: flex;
            justify-content: space-between;
        }

        .remove-access-btn {
            background-color: red;
            color: white;
            padding: 5px 10px;
            cursor: pointer;
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
    
    
    
     
     form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            position:center;
            margin-left:80px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            box-sizing: border-box;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }

        button:hover {
            background-color: #45a049;
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
