package com.Arc.controller.college;





import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Arc.model.User;
import com.Arc.service.UserService;
import com.Arc.utility.ProjectConstants;


@Controller
public class CollegeMemberController {

@Autowired
private UserService userService;
	
	@RequestMapping(value = "/college_dept", method = RequestMethod.GET)
	public String addCollegeMember(Model model) {
		List<User> data = userService.findAll();
        model.addAttribute("dataList", data);
			return "college_member";
		 
	}

	@RequestMapping(value = "/college_dept", method = RequestMethod.POST)
	public String save_Member(User user) {
		
		user.setRole(ProjectConstants.iii_role3deptIn);
		userService.saveUser(user);
		return "redirect:college_dept";
	}
	
	@RequestMapping("/remove_member")
	public  String alterDept(@RequestParam Long id, @RequestParam short type) {
	    // Retrieve the existing user from the database
	    User existingUser = userService.getUserById(id);

	    if (existingUser != null) {
	        // Update only the 'type' field
	        existingUser.setType(type);

	        // Save the updated user
	        userService.saveUser(existingUser);
	    }

	    return "redirect:/add_company_member";
	}

	
	//hod 
	@RequestMapping(value="getApprovedStudentList",method=RequestMethod.GET)
	public String getApprovedStudentList(Model model){
		
		
		return "studentList_for_clg_mem";
	}
	
	@RequestMapping("/check_member_balance")
	public @ResponseBody String checkmemberbalance(@RequestParam(value="user_id",required=false) String user_id){
//		BalanceData balanceData=balanceDataService.getBalanceDept(session.getAttribute("institute_id").toString());
//		if(null!=balanceData && balanceData.getNo_of_dept()>0){  sk
//			return "success";
//		}else{
			return "failed";
//		}
	}
	
	@PostMapping("/cancel_dept/{id}")
	public String cancleMemReq(@PathVariable Long id, RedirectAttributes redirectAttributes) {
	    System.out.println("Received request for cancellation with ID: " + id);
	    User userToDelete = userService.getUserById(id);
	    System.out.println("User found: " + (userToDelete != null));

	    if (userToDelete != null) {
	        userService.deleteUserById(id);
	        redirectAttributes.addFlashAttribute("successMessage", "User removed successfully");
	    } else {
	        redirectAttributes.addFlashAttribute("errorMessage", "Failed to remove user");
	    }

	    return "redirect:/college_dept";
	}


	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
}
