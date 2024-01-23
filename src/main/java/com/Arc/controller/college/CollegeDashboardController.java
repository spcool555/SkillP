package com.Arc.controller.college;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class CollegeDashboardController {


	@RequestMapping("college_dashboard")
	public String getDashboerd(@RequestParam(value = "message", required = false) String message, Model model) {
		
			return "college_dashboard";
		
	}
}
