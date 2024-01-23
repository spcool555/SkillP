package com.Arc.controller.intern;

import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class TestController {
	
	
	@RequestMapping("/stud_testHistory")
	public String getHistory() {
//		User user = (User) session.getAttribute("user_data");
//		List<Object[]> testHistory = studentTestDataService.getTestHistory(user.getUser_id());
//		List<Object[]> assessmenttestHistory = assessmentTestService.getAssessTestHistory(user.getUser_id());
//		model.addAttribute("testHistory", testHistory);
//		model.addAttribute("assessmenttestHistory", assessmenttestHistory);
//		model.addAttribute("sidebar", navBarUtil.getStudNavBar(ProjectConstants.sidebar_map_key_studtesthistory));
		return "studentTestHistory";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/startTest")
	public String startMyTest() {
		
		return "testPaper";
	}
	
	@RequestMapping(value = "updateTestData", method = RequestMethod.GET)
	public @ResponseBody String updateTestData(@RequestParam("test_data_id") String test_data_id,
			@RequestParam(value = "status") String status) {

	
		return "success";
	}
/*
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/submitTest", method = RequestMethod.GET)
	public @ResponseBody Map<String, Object> submitTest(@RequestParam("test_data_id") String test_data_id,
			@RequestParam(value = "ans", required = false) String ans,
			@RequestParam(value = "testStatus", required = false) char testStatus) {
		StudentTestData studentTestData = studentTestDataService.getStudentTestData(test_data_id);
		studentTestData.setUpdation_date(new Date());
		String againse_request = studentTestData.getAgainst_ext_req();
		StudentRequest sr = new StudentRequest();
		if (testStatus == ProjectConstants.student_test_data_status_disqualified_char) {
			studentTestData.setStatus(ProjectConstants.student_test_data_status_disqualified);
			studentTestDataService.updateStudentTestData(studentTestData);
			if (againse_request.startsWith(ProjectConstants.student_request_id_initial)) {
				sr = student_reqService.getStudentRequest(againse_request);
				sr.setApproval_status(ProjectConstants.student_req_approval_status_result_declared);
				sr.setUpdation_date(new Date());
				student_reqService.updateStudentRequest(sr);
			}
			return null;
		} else {
			studentTestData.setAnswer_set(ans);
			ObjectMapper mapper = new ObjectMapper();
			Map<String, HashMap<String, String>> answers = new HashMap<>();
			try {
				answers = (HashMap<String, HashMap<String, String>>) mapper.readValue(ans, Map.class);
			} catch (Exception e) {
				e.printStackTrace();
			}
			CompanyTest test = onlineTestService.getCompanyTestData_by_id(studentTestData.getTest_id());
			studentTestData.setOut_off(test.getTotal_marks());

			// type of test
			Map<String, String> testType = new HashMap<>();
			try {
				testType = (HashMap<String, String>) mapper.readValue(test.getTest_type(), Map.class);
			} catch (Exception e) {
				e.printStackTrace();
			}

			Map<String, Object> result = userBeanService.getTestResult(answers, testType, test);

			studentTestData.setMarks_scored(Integer.parseInt(result.get("totalMarks").toString()));
			if (result.get("testResult").toString().equals(ProjectConstants.company_test_result_passed)) {
				studentTestData.setStatus(ProjectConstants.student_test_data_status_passed);
			} else {
				studentTestData.setStatus(ProjectConstants.student_test_data_status_failed);
			}
			studentTestDataService.updateStudentTestData(studentTestData);
			if (againse_request.startsWith(ProjectConstants.student_request_id_initial)) {
				sr = student_reqService.getStudentRequest(againse_request);
				sr.setApproval_status(ProjectConstants.student_req_approval_status_result_declared);
				sr.setUpdation_date(new Date());
				student_reqService.updateStudentRequest(sr);
			} else if (againse_request.startsWith(ProjectConstants.external_request_id_initial)) {
			}

			return result;
		}
	}

	@SuppressWarnings("unchecked")
	@RequestMapping("/getTestResult")
	public @ResponseBody Map<String, Object> gethist(@RequestParam("test_data_id") String test_data_id,
			@RequestParam(value = "student_id", required = false) String student_id) {
		StudentTestData studentTestData = new StudentTestData();
		System.out.println(">>>>  "+test_data_id+"  "+student_id);
		if (test_data_id.startsWith(ProjectConstants.student_request_id_initial)||test_data_id.startsWith(ProjectConstants.external_request_id_initial)) {
			studentTestData = studentTestDataService.getStudTestDataAgainstReq(test_data_id, student_id);
		} else if (test_data_id.startsWith(ProjectConstants.student_test_data_id_initial)) {
			studentTestData = studentTestDataService.getStudentTestData(test_data_id);
		}
		if(studentTestData.getStatus().equals(ProjectConstants.student_test_data_status_pending)){
			Map<String, Object> result = new HashMap<>();
			result.put("status", studentTestData.getStatus());
			result.put("exp_date",studentTestData.getExpiration_date());
			System.out.println(studentTestData.getExpiration_date()+"   "+studentTestData.getExpiration_date().toString());
			return result;
		}else if(studentTestData.getStatus().equals(ProjectConstants.student_test_data_status_disqualified)){
			return null;
		}
		else{
			ObjectMapper mapper = new ObjectMapper();
			Map<String, HashMap<String, String>> answers = new HashMap<>();
			try {
				answers = (HashMap<String, HashMap<String, String>>) mapper.readValue(studentTestData.getAnswer_set(),
						Map.class);
			} catch (Exception e) {
				e.printStackTrace();
			}
			CompanyTest test = onlineTestService.getCompanyTestData_by_id(studentTestData.getTest_id());
			// type of test
			Map<String, String> testType = new HashMap<>();
			try {
				testType = (HashMap<String, String>) mapper.readValue(test.getTest_type(), Map.class);
			} catch (Exception e) {
				e.printStackTrace();
			}

			Map<String, Object> result = userBeanService.getTestResult(answers, testType, test);
			result.put("status", studentTestData.getStatus());
			result.put("exp_date",studentTestData.getExpiration_date());
			System.out.println(studentTestData.getExpiration_date()+"   "+studentTestData.getExpiration_date().toString());
			return result;
		}
	}
 */
	@RequestMapping(value="/view_test_result",method=RequestMethod.POST)
	public String getResult(){
		
		return "redirect:get_test_result";
	}

	@RequestMapping("/get_test_result")
	public String viewResult(){
		
		return "test_result";
	}
}