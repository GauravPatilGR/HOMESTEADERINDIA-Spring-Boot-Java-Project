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
	<title>Admin View Product</title> 
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

		<div class="searchbar" style="margin-left:100px; "> 
			<input type="text" id="searchInput" placeholder="Search by Product Name, Category, or Price  &nbsp;&#x20B9;" oninput="searchTable()" style="width:500px;">
				 
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
					<div class="nav-option option1"> 
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
					<h1 class="recent-Articles" style="color:#f77f00;"><i class="fa-solid fa-list-ol"></i>&nbsp;&nbsp;Listed Product List</h1> 
					
				</div> 
                       
               <div class="table-container">
            <table id="tb">
                <thead>
                    <tr>
                        
                        <th >Product Name</th>
                        <th >Product Category</th>
                        <th >Product Image</th>
                        <th >Market Price</th>
                        <th >Our Price</th>
                        <th >@Admin Action</th>
                      
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${kk}" var="e">
                        <tr>
                            <td>${e.pname}</td>
                            <td>${e.ptype}</td>
                            <td>
                                
                      <img src="product/${e.pfilen}" alt="Certificate Image" style="width:130px; height:100px;">


                      <a href="product/${e.pfilen}" download="Product.jpg">
                       <button style="margin-left: 50px;">Download <i class="fa-solid fa-cloud-arrow-down"></i></button>
                       </a>
                            </td>
                            <td>&#x20B9;&nbsp;${e.pcprice}</td>
                            <td>&#x20B9;&nbsp;${e.pwprice}</td>
                         
                            <td>
                           <form action="searchproductforedit" method="post">
                          
                           <input type="hidden" value="${e.pname}" name="name">
                             <button type="submit"  style="background-color: #29bf12;width:100px;font-size: 15px;margin-left: 10px;" class="demo">Edit&nbsp;&nbsp;&nbsp;<i class="fa-regular fa-pen-to-square"></i></button>
                          </form>
                          <br>
                          <a href="deleteproduct/${e.id}"><button type="button"  style="background-color: red;width:100px;" class="demo">Remove&nbsp;&nbsp;&nbsp;<i class="fa-solid fa-trash"></i></button></a>
                            
                            </td>
                            
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            
                   </div> 
				</div> 
			</div> 
		</div> 
		
		<script>
function searchTable() {
    // Declare variables
    var input, filter, table, tr, tdName, tdCategory, tdOurPrice, i, txtValueName, txtValueCategory, txtValueOurPrice;
    input = document.getElementById("searchInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("tb");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows and hide those that don't match the search query
    for (i = 0; i < tr.length; i++) {
        tdName = tr[i].getElementsByTagName("td")[0];
        tdCategory = tr[i].getElementsByTagName("td")[1];
        tdOurPrice = tr[i].getElementsByTagName("td")[4]; // Assuming the "Our Price" column is the fifth column

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
          align-items: center;
          text-align: center;
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
      align-items: center;
          text-align: center;
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
      align-items: center;
      text-align: center;
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
