package com.Arc.controller.college;







import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;




@Controller
public class CollegeReportController {


	@RequestMapping(value="/college_report",method = RequestMethod.GET)
	public String collegeReport(Model model){

		
		return "college_report";
	}


	@RequestMapping(value="/get_college_report",method = RequestMethod.GET)
	public @ResponseBody String getcollegeReport(){

		
		return null;
	}


	@RequestMapping(value = "collegepdfdownload",method = RequestMethod.GET)
	public @ResponseBody String generatePdfReport(){


		return "modelAndView";

	}

}
