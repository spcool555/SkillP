package com.Arc.controller.intern;




import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

public class StudentPastController {

/* sk
	@RequestMapping("/saveStudentPast")
	public @ResponseBody String savePast(@ModelAttribute StudentPast studentPast) {
		System.out.println("--------------"+studentPast.getOrganization());
			if (studentPast.getStud_past_id() > 0) {
				StudentPast stu = studentService.getStudentPast(studentPast.getStud_past_id());
				if (!studentPast.getOrganization().equals("")) {
				}else {
					studentPast.setOrganization(stu.getOrganization());
					studentPast.setDepartment(stu.getDepartment());
				}
				studentPast.setUpdation_date(new Date());
				studentService.updateStudentPast(studentPast);
			} else {
				studentPast.setCreation_date(new Date());
				studentService.saveStudentPast(studentPast);
			}
		return ""+studentPast.getStud_past_id();
	}
	*/
	@RequestMapping(value = "/addStudentPast", produces = { MediaType.APPLICATION_JSON_VALUE },method=RequestMethod.POST)
	   public @ResponseBody String savePastEdu(){
//		 studentService.saveStudentPast(studentPast);
		  return null;
	  }
	@RequestMapping("/removeStudentPast")
	   public @ResponseBody String removePast(@RequestParam("past_id")long past_id){
//		 studentService.removeStudentPast(past_id);
		  return "Success";
	  }
}
