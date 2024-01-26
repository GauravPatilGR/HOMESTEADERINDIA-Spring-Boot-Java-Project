package com.example.demo.Admin;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.naming.java.javaURLContextFactory;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.example.demo.Training_Farmer;
import com.example.demo.Training_Student;
import com.example.demo.contact_Entity;
import com.example.demo.enquiry_Entity;
import com.example.demo.farmService;
import com.example.demo.farmerEntity;
import com.example.demo.soilanalysis_Enitty;
import com.example.demo.Agroagency.agroEntity;
import com.example.demo.Agroagency.product;
import com.example.demo.Agroagency.serviceagro;

@Controller
public class AdminController {
	
	//Farmer Service                                   //Shree Ganesha
	@Autowired
	farmService fs;
	
    //Agro Service
	@Autowired
	serviceagro sa;
	
	//Admin Service
	@Autowired
	serviceadmin saa;
	
	//Mapping For Admin Login
	@RequestMapping("/admin")
	public String AdminLogin()
	{
		
		return "loginadmin";
	}
	
	
	
	//Mapping for Admin Login 
	@PostMapping("/adminmapping")
	public String Adminlogincheck(@RequestParam("name") String name,@RequestParam("password") String password,HttpSession h1)
	{
		  //Subadmin Check
	        subadmin_Entity sa= saa.checksubadmin(name, password);
	        
	       
	        if ("admin".equals(name) && "admin123".equals(password) || sa!=null) {
			  
			    h1.setAttribute("username",name);
			    
			  
		    	return "redirect:/admindash";
		    } 
		    
		    else {
		    	
		        return "loginadmin";
		    }
		
	}
	
	//Mapping for Admin Dashboard
	@RequestMapping("/admindash")
	public String admindash(ModelMap mm,HttpSession h1)
	{
		
	String x =(String) h1.getAttribute("username");
	
	
	
	
	if(x==null)
	{
		return "loginadmin";
	}
	
	else
	{
		
		List<contact_Entity> ca=fs.DisplayContactAdmin();
		
		mm.addAttribute("kk",ca);
		
		return "admindash";
	}
		
		
	}
	
	//Mapping for Agroagency Request Pending Page At Admin Page
	@RequestMapping("/adminagro")
	public String adminagrolist(ModelMap mm,HttpSession h1)
	{
	String check=(String) h1.getAttribute("username");
	
	if(check.equals("admin"))
	{
		
	List<agroEntity> ae	=sa.getPendingAgro();
	
	mm.addAttribute("kk",ae);
		
		return "adminagro";
	}
	
	return "permisson";
	}
	
	
	//Mapping for Listed Agroagency Page At Admin Page
	@RequestMapping("/agropage")
	public String agroagencydisplayadmin(ModelMap mm)
	{
		
		
		
	List<agroEntity> a	=sa.getApproveAgro();
	
	mm.addAttribute("kk",a);
		
		
		return "agropage";
	}
	
	//Permisson Page for Subadmin
	@RequestMapping("/permisson")
	public String permission()
	{
		
		return "permisson";
	}
	
	//Mapping for Edit Agro Status
	@RequestMapping("/searchagro")
	public String actionagro(@RequestParam("name") String name,ModelMap mm)
	{
		
	List<agroEntity> ae=sa.findbyname(name);
	
	mm.addAttribute("kk",ae);
		
		return "agroaction";
	}
	
	
	//Mapping for Update Status of Agro
	@PostMapping("/submitagro")
	public String approveagro(@ModelAttribute ("c2") agroEntity c2,@RequestParam("file") MultipartFile filename) throws IOException
	{
		
        String f=filename.getOriginalFilename();
		
		String path=("C:\\Users\\gaura\\eclipse-workspace\\CravitaProject_HomeSteader\\src\\main\\resources\\static\\certificate");
		
		BufferedOutputStream b= new BufferedOutputStream(new FileOutputStream(path+"/"+f));
		
		byte bt [] =filename.getBytes();
		
	    b.write(bt);
	    b.close();
	    
	    c2.setDocument(f);
		
		
		
		
		
		agroEntity s= new agroEntity();
		s.setId(c2.getId());
		s.setName(c2.getName());
        s.setEmail(c2.getEmail());
        s.setDocument(c2.getDocument());
        s.setDistrict(c2.getDistrict());
        s.setTown(c2.getTown());
        s.setPassword(c2.getPassword());
        s.setStatus(c2.getStatus());
        s.setAddress(c2.getAddress());
        
        sa.registeragro(s);
		
		
		
		return "redirect:/adminagro";
	}
	
	
	
	 //Mapping for Add New Product
		@PostMapping("/productadmin")
		public String addnewproduct(@ModelAttribute("c2") product c2,@RequestParam("pfile")MultipartFile filename1) throws IOException
		{
			String f1=filename1.getOriginalFilename();
			
			String path1="C:\\Users\\gaura\\eclipse-workspace\\CravitaProject_HomeSteader\\src\\main\\resources\\static\\product";
			
			BufferedOutputStream b1= new BufferedOutputStream( new FileOutputStream(path1+"/"+f1));
			
	        byte bt1 [] =filename1.getBytes();
			
		    b1.write(bt1);
		    b1.close();
		    
		    c2.setPfilen(f1);
		    
		    sa.addnewproduct(c2);
			
			
			
			return "message";
		}
		
		
		
		
		//Showing all Product at Admin Page
		@RequestMapping("/editproductadmin")
		public String editproduct(ModelMap mm)
		{
			
		List<product> pa =sa.showallproductadmin();
		
		mm.addAttribute("kk",pa);
			
			
			return "editproductadmin";
		}
		
		//Mapping for Get Single Product
		@RequestMapping("/searchproductforedit")
		public String EditProductbyAdmin(@RequestParam ("name") String name,ModelMap mm)
		{
			
		List<product> pd=sa.updateproduct(name);
		
		mm.addAttribute("kk",pd);
			
			return "updateproduct";
			
		}
		
		//Mapping for Get Updating Product
		@PostMapping("/updateproduct")
		public String updateproductagro(@ModelAttribute ("c3") product c3,@RequestParam("pfile")MultipartFile filename1) throws IOException
		{
			String f1=filename1.getOriginalFilename();
			
			String path1="C:\\Users\\gaura\\eclipse-workspace\\CravitaProject_HomeSteader\\src\\main\\resources\\static\\product";
			
			BufferedOutputStream b1= new BufferedOutputStream( new FileOutputStream(path1+"/"+f1));
			
	        byte bt1 [] =filename1.getBytes();
			
		    b1.write(bt1);
		    b1.close();
		    
		    c3.setPfilen(f1);
		    
		    
		    product p1= new product();
		    p1.setId(c3.getId());
		    p1.setPname(c3.getPname());
		    p1.setPtype(c3.getPtype());
		    p1.setPfilen(c3.getPfilen());
		    p1.setPcprice(c3.getPcprice());
		    p1.setPwprice(c3.getPwprice());
		    
		    sa.addnewproduct(p1);
		    
		    
			return "redirect:/editproductadmin";
		}
		
		//Mapping for delete product by id
		@RequestMapping("/deleteproduct/{id}")
		public String deleteproduct(@PathVariable int id)
		{
			
			sa.deleteproduct(id);
			
			return "redirect:/editproductadmin";
			
		}
		
		
		
		
		
		
		//Mapping for Shwoing farmer Report  or Enquiry
		@RequestMapping("/farmreport")
		public String farmerreport(ModelMap mm)
		{
		List<enquiry_Entity> e=fs.DisplayEnqiry();
		
		mm.addAttribute("k",e);
			
			return "farmreport";
		}
		
		
		
		
		//Mapping for Get Report By Date
		@GetMapping("/reportget")
		public String reportgenerate(@RequestParam ("startdate") Date startdate,@RequestParam ("enddate")Date enddate,ModelMap mm)
		{
			
		List<enquiry_Entity> e=fs.reportget(startdate, enddate);
		
		mm.addAttribute("k",e);
		
		return "farmreport";
		
			
		}
		
		
                                       //Wheather Start		                               
		
		                            //Wheather End
		
		
		
		//Shwoing all Farmer list to Admin
		@RequestMapping("/totalfarmeradmin")
		public String totalfarmerdisplay(ModelMap mm)
		{
			
		List<farmerEntity> li=fs.showallfarmer();
		
		mm.addAttribute("kk",li);
			
			return "totalfarmeradmin";
		}
		
		                                   //Blog Start
		
		//Blog Upload page of Admin
		@RequestMapping("/blog")
		public String Blogupload(ModelMap mm)
		{
			//for Blog
	        List<blog> b=saa.showallblog();
			
			mm.addAttribute("kk",b);
			
			return "blog";
		}
		
		//Blog Form Mapping
		@PostMapping("/uploadblog")
		public String uploadblog(@ModelAttribute ("c4") blog c4,@RequestParam("blogfile") MultipartFile filename) throws IOException
		{
			
            String  f1=filename.getOriginalFilename();
			
			String path1="C:\\Users\\gaura\\eclipse-workspace\\CravitaProject_HomeSteader\\src\\main\\resources\\static\\blogimg";
			
			BufferedOutputStream b1= new BufferedOutputStream( new FileOutputStream(path1+"/"+f1));
			
	        byte bt1 [] =filename.getBytes();
			
		    b1.write(bt1);
		    b1.close();
		    
		    c4.setBlogimg(f1);
		    
		    saa.blogupload(c4);
		    
		    
			
			
			
			
			return "redirect:/blog";
		}
		
		//Blog Remove Mapping
		@GetMapping("/removeblog/{id}")
		public String removeblog(@PathVariable int id)
		{
			
			saa.deleteblog(id);
			
			return "redirect:/blog";
			
		}
		
		//Mapping for Get Blog by Name Farmer Page
		@PostMapping("/blogget")
		public String getblog(@RequestParam ("title") String title,ModelMap mm)
		{
			
		List<blog> b=saa.findblogbytittle(title);
		
			
		mm.addAttribute("kk",b);
		
			return "blogfarmer";
		}
		
		
		// Farmer Blog Page
		@RequestMapping("/blogfarmer")
		public String farmerblogshow()
		{
		
		
		
			return "blogfarmer";
			
		}  
	                                         	//Blog END
		
		
		                                   //Register Sub admin Start
		//Mapping for Register Subadmin Page
		@RequestMapping("/registersubadmin")
		public String registersubadminpage(HttpSession h1,ModelMap mm)
		{
			String check=(String) h1.getAttribute("username");
			
			if(check.equals("admin"))
			{
				 List<subadmin_Entity> ab=saa.showallsubadmin();
				 mm.addAttribute("kk",ab);
				return "registersubadmin";
			}
			
		
			
			return "permisson";
		}
		
		//Mapping for Subadmin Form
		@PostMapping("/registersubad")
		public String subadmin(@ModelAttribute ("c5") subadmin_Entity c5)
		{
			
			saa.savasubadmin(c5);
			
			return "redirect:/registersubadmin";
			
		}
		
		//Remove subadmin Access
		@GetMapping("/removesubadmin/{id}")
		public String removesubadminaccess(@PathVariable int id)
		{
			saa.removesubadminaccress(id);
			
			return "redirect:/registersubadmin";
		}
		
		
		
		
		
		
		
		                                //Register Sub admin END
		
		
		                             //Student And Farmer Tarining Start
		
		
		//Mapping for Show Student Training Request
		@RequestMapping("/adminstudentrequest")
		public String  studentadmin(ModelMap mm)
		{
			
		List<Training_Student> sr=fs.Displaystudentreq();
		
		mm.addAttribute("kk",sr);
			
			return "adminstudentrequest";
		}
		
		//Mapping for Search The Student Enquiry Data
		@GetMapping("/reportgetstudent")
		public String reportgenerateStudent(@RequestParam ("startdate") Date startdate,@RequestParam ("enddate")Date enddate,ModelMap mm)
		{
			
		List<Training_Student> sr=fs.reportgetstudent(startdate, enddate);
		
		mm.addAttribute("kk",sr);
		
		return "adminstudentrequest";
		
			
		}
		
		//Mapping for Show Farmer Training Request
		@RequestMapping("/adminfarmerrequest")
		public String farmertrainingadmin(ModelMap mm)
		{
			
		List<Training_Farmer> fr=fs.Displayfarmerreq();
		
		mm.addAttribute("kk",fr);
			
			return "adminfarmerrequest";
		}
		
		//Mapping for Search The Student Enquiry Data
		@GetMapping("/reportgetfarmer")
		public String reportgeneratefarmer(@RequestParam ("startdate") Date startdate,@RequestParam ("enddate")Date enddate,ModelMap mm)
		{
			
		List<Training_Farmer> fr=fs.reportgetfarmer(startdate, enddate);
		
		mm.addAttribute("kk",fr);
		
		return "adminfarmerrequest";
		
			
		}		
		
		                                        //Soil Analysis Show
		
		@RequestMapping("/soilreportadmin")
		public String showsoilreportadmin(ModelMap mm)
		{
		List<soilanalysis_Enitty> sa=fs.showallreport();
		
		mm.addAttribute("kk",sa);
			
			return "soilreportadmin";
		}
		
		
		@GetMapping("/reportsoil")
		public String soilreportger(@RequestParam ("startdate") Date startdate,@RequestParam ("enddate")Date enddate,ModelMap mm)
		{
			
		List<soilanalysis_Enitty> sa=fs.soilreportget(startdate, enddate);
		
		mm.addAttribute("kk",sa);
			
			return "soilreportadmin";
		}
		
		
		
		
		
		
		
		
		
		
		                                  //Other Pages Mapping Start
		
		
	//Mapping for Page	
    @RequestMapping("/updateproduct")
	public String updateproduct()
	{
		
		
		return "updateproduct";
	}
		
		
		
	
	//Remove Agroagency Request
	@RequestMapping("/reject/{id}")
	public String rejectagro(@PathVariable int id)
	{
		
		sa.delete(id);
		
	   
	  return "redirect:/adminagro";

	}
	
	//Remove Agro Access
	@RequestMapping("/removeagro/{id}")
	public String RemoveAccess(@PathVariable int id)
	{
		
		sa.delete(id);
		
	   
	  return "redirect:/agropage";

	}
	
	//Mapping for Page add product
	@RequestMapping("/addproductadmin")
	public String Addproductadmin()
	{
		
		
		return "addproductadmin";
	}
	
	
	//Mapping for Permission Agro
	@RequestMapping("/agroaction")
	public String editagro()
	{
		
		return "agroaction";
	}
	
	//Mapping for Logout
	@RequestMapping("/logoutadmin")
	public String logout(HttpSession h1)
	{
		h1.invalidate();
		
		return "loginadmin";
		
	}
	
	//Mapping for Message
	@RequestMapping("/message")
	public String messagepage()
	{
		
		return "message";
		
	}

	                                  //Other Pages Mapping END
	
	   
		
			
	

}
