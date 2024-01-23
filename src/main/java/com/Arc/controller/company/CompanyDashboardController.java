package com.Arc.controller.company;





import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class CompanyDashboardController {
	
	
	@RequestMapping("company_dashboard")
	public String getDashboerdCompany(){
	
			return "company_dashboard";
		
		
	}
}
