package com.Arc.controller.college;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.Arc.model.CompAdvertisement;
import com.Arc.service.ComponyService;



@Controller
public class CollegeDashboardController {
	@Autowired
	private ComponyService componyService;

	@RequestMapping("college_dashboard")
	public String getDashboerd(@RequestParam(value = "message", required = false) String message, Model model) {
	     List<CompAdvertisement> compAdvertisements = componyService.getAllCompAdvertisements();
         model.addAttribute("compAdvertisements", compAdvertisements);
			return "college_dashboard";
		
	}
}
