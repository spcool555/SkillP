package com.Arc.controller.college;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CompTieUpController {
	
	@RequestMapping(value = "/comp_tie_up", method = RequestMethod.GET)
	public String tie_up(Model model) {
	
			return "coll_comp_tie_up";
		}
	

	@RequestMapping(value = "/comp_tieup_req", method = RequestMethod.POST)
	public String tieup_req() {
		
		return "redirect:comp_tie_up";
	}

	@RequestMapping("/accept_reject_req")
	public @ResponseBody String acceptRejectRequest() {
		
		return "success";
	}
}
