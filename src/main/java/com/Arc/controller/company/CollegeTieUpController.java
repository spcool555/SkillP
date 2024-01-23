package com.Arc.controller.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.Arc.model.College;
import com.Arc.service.CollegeService;

@Controller
public class CollegeTieUpController {

	@Autowired
	private CollegeService collegeService;

	@RequestMapping("/college_tie_up")
	public String viewCollegeList(Model model) {
		List<College> college = collegeService.getAllTieColleges();
		List<College> college2 = collegeService.getAllTieCollegesByType();
		List<College> college3 = collegeService.getAllTieCollegesByType();
		List<College> college4 = collegeService.getAllTieCollegesByType();
		
		 model.addAttribute("colleges", college);
		 model.addAttribute("sentRequest", college2);
		 model.addAttribute("receivedRequest", college3);
		 model.addAttribute("tiedupcolleges", college4);
		
			return "comp_coll_tie_up";
		
	}
	
	@RequestMapping(value = "/college_tieup_req", method = RequestMethod.POST)
	public String tieUpRequest() {
		List<College> college = collegeService.getAllTieColleges();
		return "redirect:college_tie_up";
	}
	
}
