package com.Arc.controller.college;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Arc.model.College;
import com.Arc.model.User;
import com.Arc.service.CollegeService;
import com.Arc.service.UserService;
import com.Arc.utility.ProjectConstants;


@Controller
//public class CollegeController extends BeanCopyUtil {  sk
public class CollegeController{

	@Autowired
	private CollegeService collegeService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/college_reg")
	public String getCollegeRegistrationForm() {
		
		
		return "collegeRegistration";
	}

	@RequestMapping(value = "/college_registration", method = RequestMethod.POST)
	public String saveCollege(College college,RedirectAttributes redirectAttributes) {
		
		User user = new User();
		user.setEmail(college.getEmail_id());
		user.setRole(ProjectConstants.iii_role1);
		userService.saveUser(user);
		boolean saved = collegeService.saveCollege(college);

	    if (saved) {
	        // Add a flash attribute for the success message
	        redirectAttributes.addFlashAttribute("successMessage", "College information saved successfully!");
	    } else {
	        // Add a flash attribute for the error message if saving fails
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to save college information. Please try again.");
	    }
		return "redirect:/college_reg";
	}
    
    
	@RequestMapping("/get_coll_dept_link")
	public String getCollDeptLink() {
//	public @ResponseBody CollDeptLink getCollDeptLink(@RequestParam("dept_link_id") String dept_link_id) {
//		CollDeptLink collDept = collegeService.getDeptLinkBYID(dept_link_id);
//		return collDept;
		return null;
	}

	//get all college departments 
	@RequestMapping(value = "/getCollegeDetails", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> getdetails(@RequestParam("college_id") String college_id ) {
		
			return null;
	}

	@RequestMapping("/editCollegeProfile")
	public String updatepro() {
		
		return "changeCollegeProfile";
	}

	@RequestMapping(value = "/editCollegeProfile", method = RequestMethod.POST)
	public String updateprofile() {
		
		return "redirect:college_dashboard";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

}
