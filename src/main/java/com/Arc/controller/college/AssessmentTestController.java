package com.Arc.controller.college;

import java.text.SimpleDateFormat;
import java.util.Date;




import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class AssessmentTestController {

	

	@RequestMapping(value = "/assessment_test", method = RequestMethod.GET)
	String AssessmentTest(Model model) {
		

		return "assessment_test";
	}

	public String saveTest() {
		
		return "redirect:assessment_test";

	}

	@RequestMapping(value = "/get_Assessment_Test_Data", method = RequestMethod.GET)
	public @ResponseBody String get_Assessment_Test_Data() {
		
		return "assessment_test";
	}
	
	@RequestMapping(value = "/delete_assessment_Test_Data")
	public @ResponseBody String delete_assessment_Test_Data(String test_id) {
		
//		assessmentTestService.delete_assessment_Test(test_id);
		return "success";
	}
	
	
	@RequestMapping(value = "/update_status_of_assessment_test", method = RequestMethod.POST)
	public @ResponseBody String update_status_of_assessment_test() {
		
		
			return "Test Successfully de-activated!";
		
	}
	
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

}
