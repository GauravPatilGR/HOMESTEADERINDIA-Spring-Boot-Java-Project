package com.example.demo;

import java.util.*;

import com.example.demo.Agroagency.product;

public interface farmService {
	
	//Service for Farmer Registration
	void Register(farmerEntity f1);
	
	//Service for Record Farmer Training Responce
	void submittraining(Training_Farmer t1);
		
	//Service for Record Student Response
	void submitstudentrs(Training_Student t2);
	
	//Service for Rocord Farmer Enquiry
	void submitenquiry(enquiry_Entity t3);
	
	//Service for Record Contact us
	void contactus(contact_Entity t4);
	
	//Service for Save Soil Analysis Report
	void soilsave(soilanalysis_Enitty s1);
	
	//Servie for Cheking login Details
	farmerEntity logindetails(String email,String password);
	
	//Service for Cheking Email alredy Present or not
	farmerEntity checkemail(String email);
	
	
	//Service For Showing Farmer Training Request
  	List<Training_Farmer> Displayfarmerreq();
  	
  //Service For Showing Student Training Request
  	List<Training_Student> Displaystudentreq();
  	
  	//Show all Request
  	List<soilanalysis_Enitty> showallreport();
  	
    //Service For Showing Enqiry Request
    List<enquiry_Entity> DisplayEnqiry();
    
    //Show all Contact To Admin
    List<contact_Entity> DisplayContactAdmin();
    
    //Show report datewise
    List<enquiry_Entity> reportget(Date startdate,Date enddate);
    
    //Show report datewise
    List<Training_Student> reportgetstudent(Date startdate,Date enddate);
    
    //Show report datewise
    List<Training_Farmer> reportgetfarmer(Date startdate,Date enddate);
    
    //Show report datewise
    List<soilanalysis_Enitty> soilreportget(Date startdate,Date enddate);
    
    //Show Profile
    List<farmerEntity> findfarmerbyemail(String email);
    
    //Show Enqiry to Farmer
    List<enquiry_Entity> findenqiryfarmer(String email);
    
    //Show Soil Analysis Report to Farmer
    List<soilanalysis_Enitty> findsoilfarmer(String email);
    
    //Show Farmer Training to Farmer
    List<Training_Farmer> findfarmertraining(String email);
    
    //Soil analysis check
    soilanalysis_Enitty checksoildublicate(String email);
    
    //for Withdraw Soil analysis Request
    public void withdrawrequest(int id);
    
    //Show Farmers
    List<farmerEntity> showallfarmer();
  	
   
	
}
