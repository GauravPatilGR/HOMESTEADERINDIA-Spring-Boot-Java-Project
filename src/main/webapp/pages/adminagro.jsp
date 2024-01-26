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
	<title> Admin Agroagency Request</title> 
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
            <div class="logo">HomesteaderIndia</div> 
            <img src= 
"https://media.geeksforgeeks.org/wp-content/uploads/20221210182541/Untitled-design-(30).png"
                class="icn menuicn" 
                id="menuicn" 
                alt="menu-icon"> 
        </div> 
        

		<div class="searchbar" style="margin-left:100px; padding:20px;"> 
			
<input type="text" id="emailInput" onkeyup="searchBy('email')" placeholder="Search by Email"><div class="searchbtn" > 
				<i class="fa-solid fa-magnifying-glass"></i>
			</div> 


<input type="text" id="cityInput" onkeyup="searchBy('city')" placeholder="Search by City"  style="margin-left:20px;"><div class="searchbtn" > 
				<i class="fa-solid fa-magnifying-glass"></i>
			</div> 


<input type="text" id="townInput" onkeyup="searchBy('town')" placeholder="Search by Town" style="margin-left:20px;">

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
					<div class="nav-option option1"> 
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
					<div class="nav-option logout"> 
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


			<div class="report-container"> 
				<div class="report-header"> 
					<h1 class="recent-Articles" style="color:red;">Agroagency Request <i class="fa-regular fa-bell"></i></h1> 
					
				</div> 
                       
               <div class="table-container">
            <table id="tb">
                <thead>
                    <tr>
                        
                        <th >Agroagency Name</th>
                        <th >Email</th>
                        <th >Certificate</th>
                        <th >City</th>
                        <th >Town</th>
                        <th >Password</th>
                        <th >Account Status</th>
                        <th >@Admin Action</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${kk}" var="e">
                        <tr>
                            <td>${e.name}</td>
                            <td>${e.email}</td>
                            <td>
                                
                      <img src="certificate/${e.document}" alt="Certificate Image" style="width:80px; hight:40px;">


                      <a href="certificate/${e.document}" download="Agro_certificate.jpg">
                       <button>Download <i class="fa-solid fa-cloud-arrow-down"></i></button>
                       </a>
                            </td>
                            <td>${e.district}</td>
                            <td>${e.town}</td>
                            <td>${e.password}</td>
                            <td>${e.status}</td>
                            <td>
                           <form action="searchagro" method="post">
                          
                           <input type="hidden" value="${e.name}" name="name">
                             <button type="submit"  style="background-color: #29bf12;width:100px"" class="demo">Approve<i class="fa-solid fa-check"></i></button>
                          </form>
                          <br>
                          <a href="reject/${e.id}"><button type="button"  style="background-color: red;width:80px;" class="demo">Reject<i class="fa-solid fa-xmark"></i></button></a>
                            
                            </td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
                   </div> 
				</div> 
			</div> 
		</div> 
		
		<!-- Search Code Javascript -->
		
		<script>
  function searchBy(criteria) {
    var input, filter, table, tr, td, i, txtValue;
    input = document.getElementById(criteria + 'Input');
    filter = input.value.toUpperCase();
    table = document.getElementById('tb');
    tr = table.getElementsByTagName('tr');

    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName('td')[getIndexOfHeader(criteria)];
      if (td) {
        txtValue = td.textContent || td.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = '';
        } else {
          tr[i].style.display = 'none';
        }
      }
    }
  }

  function getIndexOfHeader(criteria) {
    var table = document.getElementById('tb');
    var headers = table.getElementsByTagName('th');
    
    for (var i = 0; i < headers.length; i++) {
      if (headers[i].textContent.toUpperCase() === criteria.toUpperCase()) {
        return i;
      }
    }
    return -1;
  }
  <!--End-->
</script>
	
	
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
      padding:10px;
      display: flex;
      text-align: center;
      align-items: center;
      
      border-radius: 12px;
      color: white;
      font-family: "Poppins", sans-serif;
    }
    
     button{
      text-decoration: none;
      padding: 10px;
      display: flex;
      text-align: center;
      align-items: center;
      background-color:#8ecae6;
      border-radius: 12px;
      color: blue;
      font-family: "Poppins", sans-serif;
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
