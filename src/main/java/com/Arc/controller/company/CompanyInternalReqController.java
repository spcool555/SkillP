package com.Arc.controller.company;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CompanyInternalReqController {
	
	
	@RequestMapping(value = "assignInternshipByCompany", method = RequestMethod.POST)
	public  String scheduleInternship() {
		
		return "sucess";
	}

	@RequestMapping(value = "/company_internal_request", method = RequestMethod.GET)
	public String comp_internal_req(Model model) {
		
			return "company_internal_request";
		
	}

	@RequestMapping(value = "com_internal_req_A_R", method = RequestMethod.GET)
	public @ResponseBody String approveOrRejectInternalReq() {
		
		return "success";
	}

	@RequestMapping(value = "scheduleInternshipByCompany_Team", method = RequestMethod.GET)
	public String scheduleDate_for_internship() {

		
					return "map";
				}

	
	
	// get Rejection Reason
	@RequestMapping(value = "/intReqRejReason", method = RequestMethod.GET)
	public @ResponseBody String getRejectionReason(@RequestParam String request_id) {
//		CompanyInternalRequest comp_i_req = companyInternalRequestService.getCompInternal_Req(request_id);
		return "getRejection_msg";
	}
}
