package com.example.demo;

import java.util.Date;
import java.util.List;

import org.hibernate.annotations.FilterDefs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Agroagency.product;

@Service
public class farmDao implements farmService {
	
	//Farmer Entity
	@Autowired
	farmRepository fd;
	
	//Farmer Training Entity
	@Autowired
	RepofarmerTrainingEntity rp;
	
	//Student Training Entity
	@Autowired
	RepostudntTrainingEntity rs;
	
	
	//Enqiry Entity
	@Autowired
	RepoEnqiryEntity re;
	
	
	//Contact Entity
	@Autowired
	RepositoryContactEnity rc;
	
	//Soil Analysis Repo
	@Autowired
	Reposoilanalysis rsa;

	
	
	
	//Service For Farmer Data Registration
	@Override
	public void Register(farmerEntity f1) {
		
		fd.save(f1);
		
	}
	
	
	//Service for Cheking Email Alredy present or not
	@Override
	public farmerEntity checkemail(String email) {
		
		return fd.findByEmail(email);
	}
	

	//Service for Cheking login Credentials
	@Override
	public farmerEntity logindetails(String email, String password) {
		
		return fd.findByEmailAndPassword(email, password);
	}

	//Service for Submit Farmer Training
	@Override
	public void submittraining(Training_Farmer t1) {
		
		fd.save(t1);
		
	}

	//Service for Submit Student Training
	@Override
	public void submitstudentrs(Training_Student t2) {
		
		fd.save(t2);
		
	}

	//Service for Showing Farmer Details
	@Override
	public List<Training_Farmer> Displayfarmerreq() {
		
		return rp.findAll();
	}

	//Service for Showing Student Details
	@Override
	public List<Training_Student> Displaystudentreq() {
		
		return rs.findAll();
	}

	//Service for Submit Farmer Enqiry
	@Override
	public void submitenquiry(enquiry_Entity t3) {
		
		fd.save(t3);
		
	}
	
	
	
	
	
	
	


	//Service for Showing Farmer Enqiry
	@Override
	public List<enquiry_Entity> DisplayEnqiry() {
	
		return re.findAll();
	}
	
	
	
	
	


	
	
	//Service for Save Contact Us
	@Override
	public void contactus(contact_Entity t4) {
		
		fd.save(t4);
		
	}


	//Show all Contact Enqiry
	@Override
	public List<contact_Entity> DisplayContactAdmin() {
		
		return rc.findAll();
	}


	//Generate Report By Date
	@Override
	public List<enquiry_Entity> reportget(Date startdate, Date enddate) {
		
		return re.findByDateoutBetween(startdate, enddate);
	}

    //Profile Page Display
	@Override
	public List<farmerEntity> findfarmerbyemail(String email) {
		
		return fd.findByEmailLike(email);
	}

    //Show All Farmers
	@Override
	public List<farmerEntity> showallfarmer() {
		
		return fd.findAll();
	}

    //Show all Student Request by Date
	@Override
	public List<Training_Student> reportgetstudent(Date startdate, Date enddate) {
		
		return rs.findBySdateBetween(startdate, enddate);
	}

	  //Show all Farmers Request by Date
	@Override
	public List<Training_Farmer> reportgetfarmer(Date startdate, Date enddate) {
	
		return rp.findByFdateBetween(startdate, enddate);
	}

 
	//Save Soil Analysis Report 
	@Override
	public void soilsave(soilanalysis_Enitty s1) {
		
		rsa.save(s1);
	}

  
	//Show all Report 
	@Override
	public List<soilanalysis_Enitty> showallreport() {
		
		return rsa.findAll();
	}


	//Find By Date
	@Override
	public List<soilanalysis_Enitty> soilreportget(Date startdate, Date enddate) {
		
		return rsa.findBySdateBetween(startdate, enddate);
	}


	@Override
	public List<enquiry_Entity> findenqiryfarmer(String email) {
		
		return re.findByFemailLike(email);
	}


	@Override
	public List<soilanalysis_Enitty> findsoilfarmer(String email) {
		
		return rsa.findBySemailLike(email);
	}


	@Override
	public List<Training_Farmer> findfarmertraining(String email) {
		
		return rp.findByFemailLike(email);
	}


	@Override
	public void withdrawrequest(int id) {
		
		rsa.deleteById(id);
		
	}


	@Override
	public soilanalysis_Enitty checksoildublicate(String email) {
		
		return rsa.findBySemail(email);
	}


	


	


	


	


	

	


	

	


	

	

	

}
