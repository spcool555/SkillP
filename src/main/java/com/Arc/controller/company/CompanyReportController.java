package com.Arc.controller.company;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class CompanyReportController {


	@RequestMapping(value="/company_report",method = RequestMethod.GET)
	public String companyReport(Model model){
		
		return "company_report";
	}


	@SuppressWarnings("unchecked")
	@RequestMapping(value="/get_company_report",method = RequestMethod.GET)
	public String  getcompanyReport(){

		
		return "mainObj";
	}


	@RequestMapping(value = "companypdfdownload")
	public @ResponseBody String generatePdfReportforCompany(){
		

		return "modelAndView";

	}
}
