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
	<title> Admin Blog</title> 
	<link rel="stylesheet"
		href="css/styleadmin.css"> 
	<link rel="css/stylesheet"
		href="responsive.css"> 
		
		<script src="https://kit.fontawesome.com/afcf20c6bc.js" crossorigin="anonymous"></script>
		<link rel="shortcut icon" href="img/favicon-32x32.png" type="image/x-icon">
		
  
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

		

     
           
            
		

	</header> 

        
	 <div class="main-container"> 
		<div class="navcontainer"> 
			<nav class="nav"> 
				<div class="nav-upper-options"> 
				<a href="admindash">
					<div class="nav-option option"> 
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
					
					<a href="farmreport">
					<div class="nav-option option3"> 
						<i class="fa-solid fa-laptop-file"></i>
						<h3>Farmer Report</h3> 
					</div></a>
					 
					
					
					
					<a href="soilreportadmin">
					<div class="nav-option option6"> 
						<i class="fa-solid fa-chart-pie"></i>
						<h3>Soil Analysis</h3> 
					</div></a> 
					
					 <a href="agropage">
					<div class="option nav-option"> 
						<i class="fa-solid fa-building-wheat"></i>
						<h3> AgroAgency</h3> 
					</div> </a>
					<a href="totalfarmeradmin">
					<div class="nav-option option3"> 
						<i class="fa-solid fa-circle-user"></i>
						<h3>Farmers</h3> 
					</div></a>
					
					<a href="adminstudentrequest">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-graduation-cap"></i>
						<h3>Student Training</h3>
					</div></a>
					
					<a href="adminfarmerrequest">
					<div class="nav-option logout"> 
						<i class="fa-solid fa-tractor"></i>
						<h3>Farmer Training</h3>
					</div></a>
					
					<a href="blog">
					<div class="nav-option option1"> 
						<i class="fa-brands fa-blogger-b"></i>
						<h3>Blog</h3>
					</div></a>
					
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
			
        <h3>Currently <span style="color:green;">Active</span> Blog On Website<i class="fa-solid fa-globe"></i></h3>
   
			 <div class="content-container">
		<c:forEach items="${kk}" var="e">
        <div class="content-div" style="background: url(blogimg/${e.blogimg}) top left no-repeat;">
            <h2 style="color:#fff;">${e.title}</h2>
            <p style="color:#fff;">${e.dateout}</p>
            <a href="removeblog/${e.id}" style="color:red;">Remove&nbsp;<i class="fa-solid fa-trash"></i></a>
        </div>
        </c:forEach>
       
    </div>


			<div class="report-container" style="width:900px;"> 
				<div class="report-header"> 
					<h1 class="recent-Articles" style=" color:#ef2d56;">
					  Blog Upload Form&nbsp;<i class="fa-solid fa-blog"></i></h1> 
				</div> 	
	
	                 
    <form action="uploadblog" method="post" enctype="multipart/form-data">
        <label for="title">Title:</label>
        <input type="text" name="title" required><br>

        <label for="content">Paragraph One:</label>
        <textarea name="cone" rows="4" required></textarea><br>
        
        <label for="content">Paragraph Two:</label>
        <textarea name="ctwo" rows="4" required></textarea><br>
        
        <label for="content">Paragraph Three:</label>
        <textarea name="cthree" rows="4" required></textarea><br>
        
        <input type="date" id="myDate" name="dateout" value="" />

        <label for="image">Image:</label>
        <input type="file" name="blogfile"><br>

        <input type="submit" value="Upload Blog">
    </form>
	      
						

					</div> 
				</div> 
			</div> 
		
	
	 <script>
    
                        document.getElementById('myDate').valueAsDate = new Date();
                       </script>
	
	
            
    
         <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
          
            justify-content: center;
            align-items: center;
           
        }
      
           .content-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
            
        }

        .content-div {
            box-sizing: border-box;
            width: calc(33.33% - 20px);
            margin: 10px;
            padding: 20px;
            
            border: 1px solid #ddd;
            border-radius: 8px;
        }
        
        body {
            
            justify-content: space-between;
            align-items: center;
            height: 100vh;
            margin: 0;
            
        }

        #info-container {
            width: 1250px;
            padding: 20px;
            background-color: #f2f2f2;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color:#d7e3fc
            ;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input, textarea, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        button:hover {
            background-color: #45a049;
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
    
    h2 {
    color: #333;
}

form {
    max-width: 600px;
    margin: 20px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
    display: block;
    margin-bottom: 8px;
    color: #555;
}

input[type="text"],
textarea,
input[type="file"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

textarea {
    resize: vertical;
}

input[type="submit"] {
    background-color: #4caf50;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type="submit"]:hover {
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
