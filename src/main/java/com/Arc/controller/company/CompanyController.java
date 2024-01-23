package com.Arc.controller.company;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Arc.model.Company;
import com.Arc.model.User;
import com.Arc.service.ComponyService;
import com.Arc.service.UserService;
import com.Arc.utility.ProjectConstants;

@Controller
//public class CompanyController extends BeanCopyUtil{
public class CompanyController{
	@Autowired
	private UserService userService;
	
	@Autowired
	private ComponyService compService;
	
	
	@RequestMapping("/comp_reg")
	public String regComp() {
		
		return "company_registration";
	}

	@RequestMapping(value="/add_company",method=RequestMethod.POST)
	public String addComp(Company compony) {
		User user = new User();
		user.setEmail(compony.getEmail_id());
		user.setRole(ProjectConstants.iii_role2);
		userService.saveUser(user);
		
		compService.saveCompony(compony);
			return "redirect:comp_reg";
	}
   
	//**************Interns Request***************
	
	@RequestMapping(value="/approveStudentRequest")
	public String internsApprove_Reject(){
		
		return "redirect:interns_verify_reuest";
	}
	
	@RequestMapping("/compname_exists")
	public @ResponseBody String checkcompname(@RequestParam String company_name){
			return "exists";
		}
	
	
	@RequestMapping("/getCompanyDetails")
	public  String  getdetails(){
		
		return "company";
	}
	
	@RequestMapping("/editCompProfile")
	public String changeProfile(){
		
		return "changeCompanyProfile";
	}
	
	@RequestMapping(value="/editCompProfile",method=RequestMethod.POST)
	public String updateProfile() {
		
		return "redirect:company_dashboard";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
