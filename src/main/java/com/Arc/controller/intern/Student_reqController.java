package com.Arc.controller.intern;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class Student_reqController {


	/* Internship Status for student login hence input advertisement id*/
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/getInternshipStatus", method = RequestMethod.GET)
	public @ResponseBody String getInternshipStatus(@RequestParam String advertisement_id) {
		
		return "response";
	}
	
	/*  sk
	  // Internship Status for college login hence input student_id and company_id 
	@RequestMapping("/checkEligibleToApply")
	public @ResponseBody HashMap<String,Object> eligibleToApply(@RequestParam("company_id")String company_id,@RequestParam("student_id")String student_id){
		//System.out.println(student_id+"-"+company_id);
		HashMap<String,Object> map=new HashMap<>();
		if(internshipAndFeedbackService.getInternshipStatusOfStudent(student_id)) {
			map.put("result", true);
			map.put("reason", "ongoing");
			return map;
		}
		if(student_reqService.isStudentAlreadyApplied(student_id, company_id)) {
			map.put("result", true);
			map.put("reason", "applied");
			return map;
		}
		map.put("result", false);
		map.put("reason", "not applied");
		return map;
	}
*/  
	//Called when student applyies to companies from advertisements
	/* sk
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/applyInterns_req", method = RequestMethod.POST)
	public String applyInterns(HttpServletRequest request) {
		User user = (User) session.getAttribute("user_data");
		Student student =studentService.getSpecificStudent(user.getUser_id());
		
		String avd_id = request.getParameter("hid").toString();
		String redirect_page = request.getParameter("redirect_page").toString();
		CompAdvertisement comp_advertisements = companyAdvertiseDao.getCompAdv(avd_id);
				
		String request_id=student_reqService.apply_SaveIntern(comp_advertisements);
		
		HashMap<String, String> compMap=(HashMap<String, String>) session.getAttribute("appliedCompanies");
		compMap.put(comp_advertisements.getCompany_id(), "s");
		session.setAttribute("appliedCompanies", compMap);
		
		System.out.println(">>redirect_page" + redirect_page);
		
		//Notification
		String param[]=new String[3];
		param[0]=request_id;
		param[1]=student.getStudent_name();
		param[2]=avd_id;
		
		Notifications notif=new Notifications();
		notif.setFrom_user(student.getStudent_id());
		notif.setUser_id(userService.getHRorIIIHead(comp_advertisements.getCompany_id()).getUser_id());
		notif.setNotif_code(NotificationConstants.notif_code_std_req_received_throug_advt);
		notif.setCategory(NotificationConstants.notif_category_clg_comp_stud_direct_req);
		notificationsService.crNotifForUser(notif, param);
		return "redirect:" + redirect_page;
	}
*/
	//Called when student applyies to companies from industry list
	@SuppressWarnings("unchecked")
	@RequestMapping("/viewCompAndApply")
	public String viewandapply(Model model) {
		
			return "viewCompanyAndApply";
		

	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/viewCompAndApply", method = RequestMethod.POST)
	public String viewAndapply() {
		
		return "redirect:viewCompAndApply";
	}

	// student approve
	@RequestMapping(value = "studentRequestApprove", method = RequestMethod.GET)
	public @ResponseBody String studentapproval(@RequestParam("request_id")String request_id) {
		
		return "success";
	}

	// student request Rejection
	@RequestMapping(value = "/student_req_reject", method = RequestMethod.POST)
	public @ResponseBody String studentRequestReject() {
	
		return "json";

	}
	
	@RequestMapping("/undo_rejection")
	public @ResponseBody String undorejection(){
		
		return "success";
	}
	
	@RequestMapping("/is_any_ongoing_internship")
	public @ResponseBody String isAnyOngoingInternship(){
		return "internshipAndFeedbackService.getInternshipStatusOfStudent(student_id)";
	}
	
	@RequestMapping("/addNoteForHR")
	public @ResponseBody String addNote(){
		
		return "Note Successfully added.";
	}
}


