package com.Arc.controller.company;


import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
public class OnlineTestController {


	@RequestMapping(value = "/company_online_test", method = RequestMethod.GET)
	public String online_test(Model model) {
		
			return "company_online_test";
		
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/saveCompanyTestData", method = RequestMethod.POST)
	public String saveCompanyTestData() {
		
		return "redirect:company_online_test";
	}

	@RequestMapping(value = "/get_Company_Test_Data", method = RequestMethod.GET)
	public @ResponseBody String get_Company_Test_Data() {
//		CompanyTest company_test = onlineTestService.getCompanyTestData_by_id(id);
		return "company_test";
	}

	@RequestMapping(value = "/insertsectiondata", method = RequestMethod.POST)
	public @ResponseBody String insertSectionData() {
		
		return "redirect:company_online_test";
	}

	@RequestMapping(value = "/update_section_data", method = RequestMethod.POST)
	public @ResponseBody String saveSectionData() {

		
		return "redirect:company_online_test";
	}

	@RequestMapping(value = "/get_sec_data", method = RequestMethod.GET)
	public @ResponseBody List<Object[]> get_sec_data(@RequestParam String id, Model model) {
//		List<Object[]> ts = onlineTestService.getTest_Section_data(id);
		return null;
	}

	@RequestMapping(value = "/update_status_of_company_test", method = RequestMethod.POST)
	public @ResponseBody String update_status_of_company_test(@RequestParam String test_id,
			@RequestParam boolean status) {
	
			return "Test Successfully de-activated!";
		
	}

	@RequestMapping(value = "/save_questions_data", method = RequestMethod.POST)
	public @ResponseBody String save_questions_data(@RequestParam String sec_id, @RequestParam String question,
			@RequestParam String option_a, @RequestParam String option_b, @RequestParam String option_c,
			@RequestParam String option_d, @RequestParam String ans, @RequestParam String ques_time,
			@RequestParam String ques_mark) {

		
		return "Data inserted Successfully";
	}

//	@RequestMapping(value = "/getQuestions_per_section", method = RequestMethod.GET)
//	public @ResponseBody List<SectionQuestion> getQuestions_per_section(@RequestParam String sec_id) {
//		List<SectionQuestion> list = onlineTestService.getQuestions_data(sec_id);
//		return list;
//	}

	@RequestMapping(value = "/assignTest",method=RequestMethod.POST)
	public @ResponseBody String assignTestToStud(@RequestParam("request_id") String request_id,
			@RequestParam("test_id") String test_id) {
		
		return "Success";
	}

	@RequestMapping(value = "/update_question_data", method = RequestMethod.POST)
	public @ResponseBody String update_question_data(@RequestParam String ques_update_str) {
		
		return "success";
	}

	
	// download Excel File For Multiple Test Questions
	@SuppressWarnings({ "resource"})
	public @ResponseBody String getSection() {

		
		return "company_online_test";
	}

	// Uploading Excel File for Multiple Questions in TestSection

	@RequestMapping(value = "/onlineTestQuestionsXL", method = RequestMethod.POST)
	public String queUpload() {

		
		return "redirect:company_online_test";
	}
	
	@RequestMapping(value = "/reassignedTest",method=RequestMethod.POST)
	public @ResponseBody String reassignedTestToStud(@RequestParam("request_id") String request_id,@RequestParam("test_id") String test_id) {
		
		return "inside success";
	}
	
}
