package com.Arc.controller.other;

import java.io.IOException;
import java.util.Date;
import java.util.Random;
//
//import javax.mail.BodyPart;
//import javax.mail.MessagingException;
//import javax.mail.internet.MimeBodyPart;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Arc.model.User;
import com.Arc.service.UserService;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController{
	@Autowired
	private HttpSession session; 
	@Autowired
	private UserService userService; 

	@RequestMapping(value = "/change_password", method = RequestMethod.GET)
	public String changepass(Model model) {
		
			return "change_password";
		
	}
	@RequestMapping("/editUserProfile")
	public String updateuser(Model model) {
		User  user1 = (User) session.getAttribute("user");
		
		if(user1==null) {
			return "redirect:/editUserProfile";
		}
		User user = userService.getUserById(user1.getId());
		model.addAttribute("user", user);
	
	return "editUserProfile";
	}
	
	@PostMapping("/editUserProfile")
	public String editUser(@ModelAttribute User user, String username, Long contact_no) {
	    User user1 = (User) session.getAttribute("user");
	    if (user1 == null) {
	        return "redirect:/editUserProfile";
	    }
	    Long id = user1.getId();
	    User existingUser = userService.getUserById(id);
	  
	    if (existingUser == null) {
	       
	        return "redirect:/editUserProfile";
	    }
	  
	    existingUser.setUsername(username);
	    existingUser.setContact_no(contact_no);
	    userService.saveUser(existingUser);
	    return "redirect:/editUserProfile";
	}
}

