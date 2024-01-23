package com.Arc.controller.company;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CompanyExternalReqCollegeController {
	

	@RequestMapping(value = "/external_internship_request_company", method = RequestMethod.GET)
	public String requestForInternship(Model model) throws Exception {
		
			return "external_internship_request_company";
		
	}

	@RequestMapping(value = "/ext_req_status_change")
	public String companyReq() {
				return "redirect:external_internship_request_company";
	}

	@RequestMapping("/undoExtReqRejection")
	public @ResponseBody String undoExtReqRejection(@RequestParam("request_id") String request_id) {
		
		return "success";
	}

	@RequestMapping(value = "checkAvailabiltyOfInterns", method = RequestMethod.GET)
	public @ResponseBody Map<String, String> checkAvailabiltyOfInterns(@RequestParam String request_id) {
		
			return null;
		}
	

	@RequestMapping("/assignCompTeamToStudent")
	public  String assignTeamToStudent() {
			return "assignCompTeamToStudent";
		}
	

	@RequestMapping("/getAssignedTestName")
	public String getAssignedTestName(@RequestParam("request_id") String request_id) {
		
		return "getAssignedTestName";
	}

}
