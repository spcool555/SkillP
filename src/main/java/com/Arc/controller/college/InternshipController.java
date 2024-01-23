package com.Arc.controller.college;


import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class InternshipController {


	
	@RequestMapping("/collegeViewInternships")
	public String viewIntersnhips(Model model){
		
			return "college_viewInternships";
		}
	
	@RequestMapping("/feedbackFromCollToComp")
	public @ResponseBody String saveCollfeed(){
		
		return "success";
	}
	@SuppressWarnings({ "unchecked" })
	@RequestMapping("/checkNoOfInternships")
	public @ResponseBody String checkInternships(){
		
		
			return "false";
		}
	
	
	@RequestMapping("/getAppliedStudentsOfCollege")
	public String getappliedstud(Model model) {
		
			return "appliedStudentsOfCollege";
		
		
	}
	
	@RequestMapping("/getStudentInternshipData")
	public String getdetails(){
//		System.out.println("Student_Internship_id = " +student_id);
//		Internships stud_data=internshipsService.getStudentData(student_id);
		
		return "stud_data";
	}
}
