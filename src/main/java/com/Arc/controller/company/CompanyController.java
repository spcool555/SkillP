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
import org.springframework.web.bind.annotation.PostMapping;
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

import jakarta.servlet.http.HttpSession;

@Controller
//public class CompanyController extends BeanCopyUtil{
public class CompanyController{
	@Autowired
	private UserService userService;
	
	@Autowired
	private ComponyService compService;
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/comp_reg")
	public String regComp() {
		
		return "company_registration";
	}
// old sk working
//	@RequestMapping(value="/add_company",method=RequestMethod.POST)
//	public String addComp(Company compony) {
//		User user = new User();
//		user.setEmail(compony.getEmail_id());
//		user.setRole(ProjectConstants.iii_role2);
//		userService.saveUser(user);
//		
//		compService.saveCompony(compony);
//			return "redirect:comp_reg";
//	}
	
	
	
	@PostMapping("/add_company")
    public String addComp(
            Company company,
             String username,
           String gender,
           String email,
             Long contact_no
    ) {
       //addcompanyUser
        User companyUser = new User();
        companyUser.setUsername(company.getCompany_name());
        companyUser.setEmail(company.getEmail_id());
        companyUser.setContact_no(company.getContact_1());
        companyUser.setRole(ProjectConstants.company);
        userService.saveUser(companyUser);
      //add hr
        User hrUser = new User();
        hrUser.setUsername(username);
        hrUser.setGender(gender);
        hrUser.setEmail(email);
        hrUser.setContact_no(contact_no);
        hrUser.setRole(ProjectConstants.hr);
        userService.saveUser(hrUser);
        company.setCompany_id(companyUser.getId());
        // Save the company details
        compService.saveCompony(company);
        return "redirect:/comp_reg";
    }


	@RequestMapping("/editCompProfile")
	public String changeProfile(Model model){
		User user1 = (User) session.getAttribute("user");
		
		if(user1==null) {
			return "redirect:/editCompProfile";
		}
		User user = userService.getUserById(user1.getId());
		model.addAttribute("user", user);
		String email = user.getEmail();
		
		Company company = compService.getCompanyById(email);
		model.addAttribute("company", company);
	
		return "changeCompanyProfile";
	}
	
	@RequestMapping(value="/editCompProfile",method=RequestMethod.POST)
	public String updateProfile(@ModelAttribute Company company, String about, Long contact_1, Long contact_2, String web_url, String city) {
		User user1 = (User) session.getAttribute("user");
		
		if(user1==null) {
			return "redirect:/editCompProfile";
		}
		User user = userService.getUserById(user1.getId());
		
		String email = user.getEmail();
		
		Company existCompany = compService.getCompanyById(email);
		if(existCompany==null) {
			return "redirect:/editCompProfile";
		}
		
		existCompany.setAbout(about);
		existCompany.setContact_1(contact_1);
		existCompany.setContact_2(contact_2);
		existCompany.setWeb_url(web_url);
		existCompany.setCity(city);
		
		compService.saveCompony(existCompany);
		return "redirect:company_dashboard";
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
	
	
	
	

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
