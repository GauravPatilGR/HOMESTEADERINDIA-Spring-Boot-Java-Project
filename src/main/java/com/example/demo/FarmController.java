package com.example.demo;




import java.util.List;


import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Admin.blog;
import com.example.demo.Admin.serviceadmin;
import com.example.demo.Agroagency.agroEntity;
import com.example.demo.Agroagency.product;
import com.example.demo.Agroagency.serviceagro;




@Controller
public class FarmController {
	private int cnt;
	
	                                      //Shree Ganesha
	//Farmer Service
	@Autowired
	farmService fs;
	
	
	//Agro Service
	@Autowired
	serviceagro sa;
	
	//Admin Service
	@Autowired
	serviceadmin saa;
                                           
	
	
	//Mapping For HomePage
	@RequestMapping("/farm")
	public String Home(ModelMap mm) {
		
		//for Product
	    List<product> pl=sa.showallpage();
	    
	    mm.addAttribute("k",pl);
	    
		//for Blog
        List<blog> b=saa.showallblog();
		
		mm.addAttribute("kk",b);
		
		
		return "index";
	}
	
	
	
	
	
	
	
	
	//Mapping For Register Page
	@RequestMapping("/register")
	public String Register() {
		
		
		
		return"register";
	}
	
	
	
	
	//Mapping For Register Farmer Data
	@PostMapping("/regfarmer")
	public String  regfarmer(@ModelAttribute("c1") farmerEntity c1,@RequestParam("email") String email,ModelMap m,HttpSession h1) {
	
	//Method for Avoid Dublicate Email
	farmerEntity a=fs.checkemail(email);
	
	if(a==null)
	{
	
         cnt++;
	    
	    h1.setAttribute("cnt", cnt);
		fs.Register(c1);
		
	
		return "login";
		
		
	}
	 
	    
	  
	  return "register";
	
		
	}
	
	
	
	//Mapping For Login Page
	@RequestMapping("/login")
	public String Login() {
		
		
		return "login";
	}
	
	
	
	
	
	//Mapping For Cheking Login Details And Session
	@PostMapping("/loginfarm")
	public String logincheck(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession h1) {
		
	 farmerEntity a=fs.logindetails(email, password);
	 
	 if(a==null) 
	 {
		 
		 return "redirect:/login";
		 
	 }
	 
	 else
	 {
		 //Session get
		h1.setAttribute("name", a.getName());
		h1.setAttribute("email", a.getEmail());
		h1.setAttribute("mobile", a.getMobile());
		h1.setAttribute("state", a.getState());
		h1.setAttribute("city", a.getCity());
		h1.setAttribute("Town", a.getTown());
		h1.setAttribute("village", a.getVillage());
		h1.setAttribute("soil", a.getSoiltype());
		h1.setAttribute("id", a.getId());
		h1.setAttribute("password", a.getPassword());
	
		
		 return "redirect:/home";
		 
	 }
	 
	         
	 }
	 
	                                   //Profile of Farmer
	
	
	
	//Mapping for Farmer Profile shwoing all activities by farmers
	@RequestMapping("/searchname")
	public String profilefarmer(@RequestParam("email") String email,ModelMap mm,HttpSession h3)
	{
		   List<farmerEntity> l =fs.findfarmerbyemail(email);
		   
		   List<enquiry_Entity> l2 = fs.findenqiryfarmer(email);
		   
		   List<soilanalysis_Enitty> l3 =fs.findsoilfarmer(email);
		   
		   List<Training_Farmer> l4 =fs.findfarmertraining(email);
		  
		   
		   
		
		   mm.addAttribute("k",l2);
		   
		   mm.addAttribute("kk",l);
		   
		   mm.addAttribute("kkk",l3);
		   
		   mm.addAttribute("kkkk",l4);
		
		return "profilefarmer";
		
	}
	
	//Profile Page
	@RequestMapping("/profilefarmer")
	public String profilepage() {
		
		
		return "profilefarmer";
	}
	
	
	//Update Farmer Profile
	@PostMapping("/setprofile")
	public String setprofile(@ModelAttribute ("c2") farmerEntity c2)
	{
		farmerEntity f= new farmerEntity();
		f.setId(c2.getId());
		f.setName(c2.getName());
		f.setEmail(c2.getEmail());
		f.setMobile(c2.getMobile());
		f.setState(c2.getState());
		
		f.setCity(c2.getCity());
		f.setVillage(c2.getVillage());
		f.setTown(c2.getTown());
		f.setPassword(c2.getPassword());
		f.setSoiltype(c2.getSoiltype());
		
		fs.Register(f);
		
		return "home";
	}
	
	//Generate Soil analysis PDF Anytime
	@RequestMapping("/getpdf")
	public String getsoildata(@RequestParam("email") String email,ModelMap mm)
	{
		
		 List<soilanalysis_Enitty> l4 =fs.findsoilfarmer(email);
		 
		 mm.addAttribute("k",l4);
		
		
		return "pdfget";
	}
	
	//Withdraw Soil analysis Request By Farmer
	@RequestMapping("/withdraw/{id}")
	public String removesoilanalysisrequest(@PathVariable int id)
	{
		
		fs.withdrawrequest(id);
		
		return "redirect:/home";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	//Mapping For Home Page After Farmer Login and Session
	@RequestMapping("/home")
	public String home(HttpSession h1,ModelMap mm) {
		
		String name = (String) h1.getAttribute("name");
		
		if(name==null)
		{
			return "redirect:/login";
		}
		//for Product
	    List<product> pl=sa.showallpage();
	    
	    mm.addAttribute("k",pl);
		    
		//for Blog
        List<blog> b=saa.showallblog();
		
		mm.addAttribute("kk",b);
		
		
		
		return "home";
	}
	
	
	
	//Mapping For Logout And Session
	@RequestMapping("/logout")
	public String logout(HttpSession h1) {
		
		h1.invalidate();
		
		
		return "redirect:/login";
	}
	
	//Mapping For Farmer Training Page
	@RequestMapping("/farmtrain")
	public String farmtrain() {
		
		
		
		return "farmtrain";
	}
	
	
	//Mapping For Farmer Training Submit Form
	@RequestMapping("/trainingsubmit")
	public String trainingsubmit() {
		
	 
		
		
		return "trainingsubmit";
	}
	
	@RequestMapping("/enquiryproduct")
	public String enquiryproduct()
	{
	   
		return "enquiryproduct";
	}
	
	
	
	
	
	
	
    //Mapping for Student Training Page
		@RequestMapping("/stutrain")
		public String studenttraining() {
			
			
			return "stutrain";
	  }
		
		
		//Mapping for Contact Page
		@RequestMapping("/contact")
		public String contact() {
			
			
			
			return "contact";
		}


	
	//Mapping for Save Farmer Training form
	@PostMapping("/ram")
	public String training_Response(@ModelAttribute("c2") Training_Farmer c2) {
		
		
		fs.submittraining(c2);
		
		 return "farmtrain";
	}
	
	
	//Mappping for Save Student Training form	
		@PostMapping("/student")
		 public String Student_response(@ModelAttribute("c3") Training_Student c3) {
			 
			 
			fs.submitstudentrs(c3);
			 
			return "redirect:/";
	 }
		
		@RequestMapping("/productsearch")
		public String getproductname(@RequestParam("name")String name,ModelMap mm)
		{
			
		  List<product> pa=sa.findbynameproduct(name);
		  
		  mm.addAttribute("kk",pa);
		  
		  return "enquiryproduct";
		  
			
		}
		
		
		
		//Mapping for Save Enqiry form
		@PostMapping("/enqiryservice")
		public String EnquiryDetails(@ModelAttribute("c4") enquiry_Entity c4)
		{
			
			fs.submitenquiry(c4);
			
			return "redirect:/farmproduct";
			
		}
		
		
		
		//Mapping for Save Contact Details
		@PostMapping("/contact")
		private String contact(@ModelAttribute ("c4") contact_Entity c4)
		{
			fs.contactus(c4);
			
			return "home";
		}
		
	
		       
	
		
	
	//Mapping for Showing Farmer Data
	@RequestMapping("/farmdisplay")
	public String showfarmerreq(ModelMap mm)
	{
		
	 List<Training_Farmer> t1=fs.Displayfarmerreq();
	 
	 
	 mm.addAttribute("kk",t1);
		
		return "farmdisplay";
	}
	
	
    //Mapping for Shwoing Student data
	@RequestMapping("/studisplay")
	public String showstudentreq(ModelMap m)
	{
	 List<Training_Student> t2= fs.Displaystudentreq();
		
		 m.addAttribute("kk", t2);
			 
		return "studisplay";
	 }
	
	
	
	  //Mapping for Showing Enqiry
		@RequestMapping("/enqirydisplay")
		public  String showEnqnqiry(ModelMap mm)
		{
		List<enquiry_Entity> listen=fs.DisplayEnqiry();
		
		mm.addAttribute("ke",listen);
			
			
			return "enqirydisplay";
		}
		
		//Mapping for Soilanalysis Page Mapping
		@RequestMapping("/soilfarmer")
		public String soilanalysisfarmer()
		{
			
			return "soilfarmer";
		}
		
		
		                                          //Soil Analysis
		//Save Soil Response
		@PostMapping("/savesoilresponse")
		public String savesoilanalysisresponse(@ModelAttribute("c6") soilanalysis_Enitty c6,@RequestParam("semail") String semail,HttpSession h3)
		{
			
			
		soilanalysis_Enitty soil = fs.checksoildublicate(semail);
		
		if(soil==null)
		{
		  
		
			
			fs.soilsave(c6);
			
			h3.setAttribute("sid", c6.getId());
			h3.setAttribute("sname", c6.getSname());
			h3.setAttribute("slocation", c6.getSlocation());
			h3.setAttribute("smobile", c6.getSmobile());
			h3.setAttribute("semail", c6.getSemail());
			h3.setAttribute("sdepth", c6.getSdepth());
			h3.setAttribute("stype", c6.getStype());
			h3.setAttribute("sorganic", c6.getSorganic());
			h3.setAttribute("stexture", c6.getStexture());
			h3.setAttribute("scrop", c6.getScrop());
			h3.setAttribute("spcrop", c6.getSpcrop());
			h3.setAttribute("sfertilizer", c6.getSfertilizer());
			h3.setAttribute("sirrigation", c6.getSirrigation());
			h3.setAttribute("sdate", c6.getSdate());
			h3.setAttribute("scomments", c6.getScomments());
			
			return "pdfgenerate";
		
		}
			
		
		return "soilaction";
		
			
			
			
			
		}
		
		@RequestMapping("/soilaction")
		public String soilrequest()
		{
			
			return "soilaction";
		}
		
		//Redirect PDF page
		@RequestMapping("/pdfgenerate")
		public String pdfpage()
		{
			
			return "pdfgenerate";
		}
		
		//Show All Agroagency To Farmer
		@RequestMapping("/farmagroagency")
		public String agroshowfarmer(ModelMap mm)
		{
			
	   List<agroEntity> a	=sa.getApproveAgro();
		
		mm.addAttribute("kk",a);
			
			return "farmagroagency";
			
		 }
		
		
		
	
	
	
	
	
		
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	//Mapping for About Page
	@RequestMapping("/about")
	public String about() {
		
		
		return "about";
	}
	
	
	
	//Mapping for About Page after Login
	@RequestMapping("/aboutl")
	public String aboutl() {
		
		
		
		return "aboutl";
	}
	
	
	
	
	//Mapping For Service Page
	@RequestMapping("/service")
	public String service() {
		
		
		
		return "service";
	}
	
	
	
	
	
				
			
	
	
	
	//Mapping For Header Nav Bar
	@RequestMapping("/headerfile")
	public String headerfile() {
		
		
		
		return "headerfile";
	}
	
	
	
	//Mapping For footer Section
	@RequestMapping("/footer")
	public String footer() {
		
		
		
		return "footer";
	}
	
	
	
	

	
	
	
	
	

}
