package com.Arc.controller.company;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.Arc.model.Internships;
import com.Arc.model.User;
import com.Arc.service.InternshipService;

import jakarta.servlet.http.HttpSession;



@Controller
public class CompanyDashboardController {
	@Autowired
	private HttpSession session;
	@Autowired
	private InternshipService internshipService;
	
	@RequestMapping("/company_dashboard")
	public String getDashboerdCompany(Model model){
		
		User user = (User) session.getAttribute("user");
		   Long userId = (user != null) ? user.getId() : null;
		  
		    List<Internships> internships1 = internshipService.getUserDataListByUserId(userId);
		    List<Internships> internships2 = internshipService.getUserDataListByUserId2(userId);
		    List<Internships> internships3 = internshipService.getUserDataListByUserId3(userId);
		    List<Internships> internships4 = internshipService.getUserDataListByUserId4(userId);
		  
		   
		    long pendingCount = internships1.stream().count();
		    model.addAttribute("pendingCount", pendingCount);
		   
		    System.out.println("pending count is "+pendingCount);
		    long ongoingCount = internships2.stream().count();
		    model.addAttribute("ongoingCount", ongoingCount);
		   
		    long completedCount = internships3.stream().count();
		    model.addAttribute("completedCount", completedCount);
		   
		    long company_internal_request_count = internships4.stream().count();
		    model.addAttribute("company_internal_request_count", company_internal_request_count);
		   
		 
		   
	
				
			return "company_dashboard";
		
		
	}


}
