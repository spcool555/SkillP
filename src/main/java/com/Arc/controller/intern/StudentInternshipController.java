package com.Arc.controller.intern;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.Arc.model.Internships;
import com.Arc.model.User;
import com.Arc.service.InternshipService;

import jakarta.servlet.http.HttpSession;


@Controller
public class StudentInternshipController {
	@Autowired
	private InternshipService internshipService;
	
	@RequestMapping("/studentinternships")
	public String internships(Model model, HttpSession session){
		
		User user = (User) session.getAttribute("user");

	    // Extract only the id from the User object
	    Long userId = (user != null) ? user.getId() : null;
	   
	    List<Internships> internships1 = internshipService.getUserDataListByUserId(userId);
	    List<Internships> internships2 = internshipService.getUserDataListByUserId2(userId);
	    List<Internships> internships3 = internshipService.getUserDataListByUserId3(userId);
	    List<Internships> internships4 = internshipService.getUserDataListByUserId4(userId);
	    
	    model.addAttribute("internship", internships1);
	    model.addAttribute("internship2", internships2);
	    model.addAttribute("internship3", internships3);
	    model.addAttribute("internship4", internships4);
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
