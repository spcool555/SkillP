package com.Arc.controller.company;


import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import com.Arc.model.Internships;
import com.Arc.model.User;
import com.Arc.service.InternshipService;

import jakarta.servlet.http.HttpSession;



@Controller
public class InternshipsAndFeedbackController {
	
	@Autowired
	private InternshipService internshipService;
	
	@Autowired
	private HttpSession session;

	@RequestMapping("/company_internships")
	public String viewInternships(Model model) {
		User user = (User) session.getAttribute("user");	
		  Long userId = (user != null) ? user.getId() : null;
		   
		    List<Internships> internships1 = internshipService.getUserDataListByUserId(userId);
		    List<Internships> internships2 = internshipService.getUserDataListByUserId2(userId);
		    List<Internships> internships3 = internshipService.getUserDataListByUserId3(userId);
		    List<Internships> internships4 = internshipService.getUserDataListByUserId4(userId);
		    
		    model.addAttribute("internship", internships1);
		    model.addAttribute("internship2", internships2);
		    model.addAttribute("internship3", internships3);
		    model.addAttribute("internship4", internships4);
			return "company_viewInternships";
		
	}


	@RequestMapping(value = "/saveFeedback", method = RequestMethod.POST)
	public @ResponseBody String savefeed() {
		
		return "success";
	}

	@RequestMapping("/editInternship")
	public @ResponseBody String editInternship() {
		
		return "success";
	}

	public static long getDifferenceDays(Date d1, Date d2) {
		long diff = d2.getTime() - d1.getTime();
		return TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
