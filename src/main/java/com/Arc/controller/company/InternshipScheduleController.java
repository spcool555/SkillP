package com.Arc.controller.company;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class InternshipScheduleController {
	
	

	@RequestMapping(value = "/getInternshipScheduleByAdv_id", method = RequestMethod.GET)
	public @ResponseBody String getInternshipSchedule(@RequestParam String adv_id, Model model) {

		
		return "mainObj";
	}

	@RequestMapping(value="/saveschedule",method=RequestMethod.POST)
	public @ResponseBody String saveschedule(){
		
		return "success";
	}
	
}
