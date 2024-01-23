package com.Arc.controller.company;


import java.util.Date;

import java.util.concurrent.TimeUnit;




import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class InternshipsAndFeedbackController {
	

	@RequestMapping("/company_internships")
	public String viewInternships(Model model) {
		
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
