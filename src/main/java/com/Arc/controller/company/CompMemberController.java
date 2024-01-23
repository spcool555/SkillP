package com.Arc.controller.company;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.ResponseBody;

import com.Arc.model.User;
import com.Arc.service.UserService;
import com.Arc.utility.ProjectConstants;


@Controller
public class CompMemberController {
@Autowired
private UserService userService;
	
	@RequestMapping(value = "/add_company_member", method = RequestMethod.GET)
	public String addCompMember(Model model) {
	List<User> userList=	userService.findAllByManager();
	List<User> userListDeleted=	userService.findAllByManagerDeleted();

	model.addAttribute("userList", userList);
	model.addAttribute("userListDeleted", userListDeleted);
			return "comp_member";
		
	}
	@RequestMapping(value = "/add_company_member", method = RequestMethod.POST)
	public String add_Member(User user) {
		
		user.setRole(ProjectConstants.iii_role4manager);
		userService.saveUser(user);
			return "redirect:add_company_member";
		
	}

	@RequestMapping("/cancel_com_team")
	public @ResponseBody String cancelMemReq(){
		
			return "sucess";
	

	}
}
