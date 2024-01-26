package com.example.demo.Agroagency;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import com.example.demo.farmService;
import com.example.demo.soilanalysis_Enitty;
import com.example.demo.Admin.blog;
import com.example.demo.Admin.serviceadmin;
import com.fasterxml.jackson.annotation.ObjectIdGenerators.StringIdGenerator;

@Controller
public class agroController {
	                                          //Shree Ganesha
	
	@Autowired
	serviceagro sa;
	
	@Autowired
	farmService fs;
	
	@Autowired
	serviceadmin saa;
	                                   
	
	//Mapping for Homepage
	@RequestMapping("/agro")
	public String agrohomepage(ModelMap mm)
	{
		
		//for Blog
        List<blog> b=saa.showallblog();
		
		mm.addAttribute("kk",b);
		
		return "Agrohome";
	}
	
	
	//Mapping for RegsiterPage
	@RequestMapping("/registeragro")
	public String registeragro()
	{
		
		return "registeragro";
	}
	
	//Mapping for LoginPage
	@RequestMapping("/loginagro")
	public String loginagro()
	{
		
		return "loginagro";
	}
	
	@RequestMapping("/verification")
	public String verification()
	{
		
		return "verification";
	}
	
	
	//Mapping for Agroagency Registration
	@PostMapping("/agro")
	public String agroagencyRegisterprocess(@ModelAttribute("c1") agroEntity c1,@RequestParam("email") String email,@RequestParam("file") MultipartFile filename) throws IOException
	{
		String f=filename.getOriginalFilename();
		
		String path=("C:\\Users\\gaura\\eclipse-workspace\\CravitaProject_HomeSteader\\src\\main\\resources\\static\\certificate");
		
		BufferedOutputStream b= new BufferedOutputStream(new FileOutputStream(path+"/"+f));
		
		byte bt [] =filename.getBytes();
		
	    b.write(bt);
	    b.close();
	    
	    c1.setDocument(f);
	    
	 agroEntity ae  =sa.checkemailagro(email);
	 
	 if(ae==null)
	 {
	 
	    sa.registeragro(c1);
	    return "loginagro";
	 }
	 
	 return  "registeragro";
		
		
		
		
		
	}
	
	
	//Mapping for Cheking Login Details
	@PostMapping("/agrologin")
	public String checkAgroLogin(@RequestParam("email") String email,@RequestParam("password") String password,HttpSession h1)
	{
	agroEntity ae=	sa.CheckLoginagro(email, password);
	
	if(ae==null)
	{
		return "redirect:/loginagro";
	}
	
	else 
	{
		
		h1.setAttribute("aname", ae.getName());
		
		
		if (ae.getStatus().equals("pending")) {
			
			return "verification";
		}
		
		else 
		{
			
			
			   return "agroWelcome";
		}
		
        
	
		
   	}
		
}
	

	
	
	
	//Mapping for Homepage AfterLogin
		@RequestMapping("/agroWelcome")
	    public String agroWelcome(HttpSession h1)
	    {
	    String x=(String) h1.getAttribute("aname");
	    
	    if(x==null)
	    {
	    	return "redirect:/loginagro";
	    }
	    else 
	    {
	    	
	    	
	    	return "agroWelcome";
		}
			
	    	
	    }
	
	//Mapping for Logout
	@RequestMapping("/logoutagro")
	public String logoutagro(HttpSession h1) {
		
		h1.invalidate();
		
		return "loginagro";
	}
	
	//Mapping for Agro Dashboard
    @RequestMapping("/Dashagro")	
	public String dashboardagro()
	{
		
		return "Dashagro";
		
	}
	
	
    //Mapping for Headerfile
	@RequestMapping("/headeragro")
	public String agroheader()
	{
		
		
		return"headeragro";
		
	}
	
	                                        //Dashboard Start
	//Mapping for addproduct page
	@RequestMapping("/addproduct")
	public String  addproduct()
	{
		
		
		return "addproduct";
	}
	
	
	//Mapping for Add New Product
	@PostMapping("/product")
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
		
		
		
		return "Dashagro";
	}
	
	@RequestMapping("/viewproduct")
	public String viewproduct(ModelMap m)
	{
	 List<product> p=sa.showallproduct();
	
	 m.addAttribute("kp",p);
	 
	   
		return "viewproduct";
	}
	
	//Mapping For Product page Farmer Module for Shwoing Product
	@RequestMapping("/product")
		public String product(ModelMap mm) {
			
		List<product> pf=sa.showallproductfarmer();
			
		mm.addAttribute("kf",pf);
			
			return "product";
	 }
	
	//Mapping for Showing all Product and Search Farmer Module
	@RequestMapping("/farmproduct")
	public String viewallproductfinal(ModelMap m)
	{
		
	  List<product> ps=sa.showallpage();
	 
	  m.addAttribute("ks",ps);
		
		return "farmproduct";
	}
	
	
	//Mapping for Serach Product or Type Farmer Module
	@RequestMapping("/search")
	public String serac(@RequestParam("name") String name,@RequestParam ("type") String type,ModelMap mm)
	{
		List<product> ps=sa.serch(name,type);
		
		mm.addAttribute("ks",ps);
		
		
		return "farmproduct";
	}
	
	
	//Mapping for Get Single Product Agro
	@RequestMapping("/searchproductagroforedit")
	public String EditProductbyAdmin(@RequestParam ("name") String name,ModelMap mm)
	{
		
	List<product> pd=sa.updateproduct(name);
	
	mm.addAttribute("kk",pd);
		
		return "updateproductagro";
		
	}
	
	 //Mapping for Get Updating Product Agroagency
	@PostMapping("/updateproductagro")
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
	    
	    
		return "redirect:/viewproduct";
	}
	
	//Mapping for delete product by id
	@RequestMapping("/deleteproductagro/{id}")
	public String deleteproduct(@PathVariable int id)
	{
		
		sa.deleteproduct(id);
		
		return "redirect:/viewproduct";
		
	}
	
	//Mapping for Show Soil Request Agro
	@RequestMapping("/soilrequestfarmeragro")
	public String getsoilanalysisreport(ModelMap mm)
	{
	 List<soilanalysis_Enitty> se=fs.showallreport();
	 
	 mm.addAttribute("kk",se);
		
		return "soilrequestfarmeragro";
	}
	
	


	//Mapping for Update Page		
	@RequestMapping("/updateproductagro")
	public String updateproduct()
	{
		
		
		return "updateproductagro";
	}
			
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
