package com.Arc.controller.intern;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class StudentInternshipController {
	
	
	@RequestMapping("/studentinternships")
	public String internships(Model model){

			return "student_viewInternship";
		

	}
	@RequestMapping("/saveFeedbackAgainstCompany")
	public @ResponseBody String savefeed(@RequestParam("internship_id")String internship_id,@RequestParam("feeds")String feeds){
	
		return "success";
	}

	@RequestMapping("/getStudentsFeed")
	public @ResponseBody String getfeed(@RequestParam("internship_id")String internship_id,@RequestParam("student_id")String student_id){
//		FeedbackData feedbackData=internshipAndFeedbackService.getFeedbackData(internship_id, student_id);
		return "feedbackData";
	}


	@RequestMapping("/cancel_my_internship")
	public @ResponseBody String cancelInternship(@RequestParam("internship_id")String internship_id,
			@RequestParam("reason") String reason){
	
		return "success";
	}
}
