package com.Arc.controller.college;


import java.util.List;




import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class CollegeReqToCompanyController {

	

	@RequestMapping(value = "/college_internal_req", method = RequestMethod.GET)
	public String requestForInternship(Model model) {

		
			return "college_internal_req";
		
	}

	// Send All Interns Group from Role 3
	@RequestMapping(value = "/sendInternsReqFromRole", method = RequestMethod.GET)
	public @ResponseBody String cr_coll_internal_req() {
		
			return "error";
		

	}

	// Approve/Reject Request By Role1 and role2
	@RequestMapping(value = "/approveInternsRequestByRole")
	public @ResponseBody String ApprByRole(@RequestParam String req_id) {
					return "redirect:logout";
		

	}

	// Rejection Request by Hod
	@RequestMapping(value = "/reject_clg_internal_req")
	public @ResponseBody String sendRequest() {
		
			return "redirect:logout";
		

	}

	// get intren Group details individually
	@RequestMapping(value = "/internsgroupIds")
	public @ResponseBody List<?> internsReqGroup(@RequestParam String studentids) {
		
		return null;
	}

	// get Rejection Reason
	@RequestMapping(value = "/rejectionReason", method = RequestMethod.GET)
	public @ResponseBody String getRejectionReason(@RequestParam String request_id) {
//		CollegeInternalRequest coll_i_req = internalRequestService.getInternalRequest(request_id);
//		return coll_i_req.getRejection_msg();
		return null;
	}

	// college sent intern grp to company :- status of grp
	@RequestMapping(value = "/external_internship_request_college", method = RequestMethod.GET)
	public String getExternalReq_college(Model model) {

			return "external_internship_request_college";
		
	}

	// Cancled Request by College (Role-1)
	@RequestMapping(value = "/cancledInternsRequest", method = RequestMethod.GET)
	public @ResponseBody String cancledReq(@RequestParam String request_id) {
		
		return "Sucess";
	}
	
	@RequestMapping(value="/editInternalRequestMessage",method=RequestMethod.POST)
	public String editMessage(){
		
		return "redirect:college_internal_req";
	}
	@RequestMapping(value="/editExtRequestMessage",method=RequestMethod.POST)
	public String editExternalReqMessage(){
	
		return "redirect:external_internship_request_college";
	}
}
