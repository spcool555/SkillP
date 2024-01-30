package com.Arc.controller.other;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Optional;

import org.apache.catalina.connector.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Arc.model.User;
import com.Arc.service.UserService;

import jakarta.servlet.http.HttpSession;



@Controller
public class MainController {
	@Autowired
	private UserService userService;
	
	private Date today=new Date();
	@RequestMapping(value = "/home")
	public String getHomePage() {
		
		return "login_check";
	}

	@RequestMapping(value = "/login_check")
	public String getLogin() {
	return "login_check";
	}
	@RequestMapping(value = "/login")
	public String getLogin2() {
	return "login_check";
	}
	
	
	
	
	
	@PostMapping("/login")
	public String company_dashboard(@RequestParam String email, @RequestParam String password,HttpSession session, Model model) {
	   
	    // Check if the email and password match a user in the database
	    Optional<User> optionalUser = userService.getUserByEmail(email);

	    if (optionalUser.isPresent()) {
	        User user = optionalUser.get();
	       
	        // Check if the password is correct
	        if (password.equals(user.getPassword())) {
	            // Convert the role String to an integer
	            try {
	                int userRole = Integer.parseInt(user.getRole());
	               
	                
	                // Check the role of the user
	                if (userRole == 0 ||userRole == 10 && user.isVerified()) {
	                    // Redirect to stud_home if the role is 0
	                	  session.setAttribute("user", user);
	                    return "redirect:/stud_home";
	                }
	                else  if (userRole == 5 ||userRole == 8  ||userRole == 7  ||userRole == 6 && user.isVerified()) {
	                    // Redirect to college_dashboard if the role is 1
	                	session.setAttribute("user", user);
	                    return "redirect:/college_dashboard";
	                }   
	                else  if (userRole == 4 || userRole == 3 || userRole == 2 || userRole == 1  && user.isVerified()) {
	                    
	                	session.setAttribute("user", user);
	                    return "redirect:/company_dashboard";
	                }
	                else {
	                    // Redirect to a different page for other roles if needed
	                    // Example: return "redirect:/admin_home";
	                	return "redirect:/login_check";
	                }
	            } catch (NumberFormatException e) {
	                // Handle the case where the role is not a valid integer
	                // Log or throw an exception, or handle it according to your needs
	            }
	        }
	    }

	    // Show an error message if credentials are invalid
	    model.addAttribute("error", "Invalid email or password");
	    return "login_check";
	}




	@RequestMapping(value = "/logout")
	public String logout_user(HttpSession session ,  Model model) {
		session.removeAttribute("user");
		session.invalidate();
		model.addAttribute("message", "Oops! your session has expired. Please login again.");
		return "login_check";
	}
	
	@RequestMapping(value = "/")
	public String WebsiteHome() {
		return "home";
	}
/*sk
	@RequestMapping(value = "/get_logo", method = RequestMethod.GET)
	public String showImage(@RequestParam(value = "id", required = false) String id, HttpServletResponse response) {
		byte[] byteData = null;
		if (id != null) {
			Company company = companyService.getCompany(id);
			byteData = company.getLogo();
		} else {
			User user = (User) session.getAttribute("user_data");
			if(user!=null){
				if (user.getUser_id().substring(0, 2).equals(ProjectConstants.user_initials_student)) {
					if (null != studentService.getLoginStudent(user.getUser_id())) {
						Student student = studentService.getLoginStudent(user.getUser_id());
						byteData = student.getPhoto();
					}
				} else if (user.getUser_id().substring(0, 2).equals(ProjectConstants.user_initials_college)) {
					College college = collegeService.getCollege(user.getUser_id());
					byteData = college.getLogo();
				} else if (user.getUser_id().substring(0, 2).equals(ProjectConstants.user_initials_company)) {
					Company company = companyService.getCompany(user.getUser_id());
					byteData = company.getLogo();
				} else if (user.getUser_id().substring(0, 2).equals(ProjectConstants.user_initials_users)) {
					if (user.getInstitute_id().substring(0, 2).equals(ProjectConstants.user_initials_college)) {
						College college = collegeService.getCollege(user.getInstitute_id());
						byteData = college.getLogo();
					} else if (user.getInstitute_id().substring(0, 2).equals(ProjectConstants.user_initials_company)) {
						Company company = companyService.getCompany(user.getInstitute_id());
						byteData = company.getLogo();
					}
				}
			}
			else{
				return "redirect:logout";
			}
		}
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (null != byteData && byteData.length > 0) {
			try {
				response.getOutputStream().write(byteData);
				response.getOutputStream().close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			InputStream in = context.getResourceAsStream("/images/blank_profile.jpg");
			try {
				byteData = IOUtils.toByteArray(in);
				response.getOutputStream().write(byteData);
				response.getOutputStream().close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;

	}
	
	// get logo for chat window company/college tpo/manager/team lead/hod/hr 
	@RequestMapping(value = "/get_rec_logo/{user_id}", method = RequestMethod.GET)
	public String showRecImage(@PathVariable String user_id, HttpServletResponse response) {
		System.out.println("User id from get url = "+user_id);
		byte[] byteData = null;
		if (user_id != null) {
			User u = userService.getUser(user_id);
			if (user_id.contains("US")) {
				if (u.getInstitute_id().contains("CL")) {
					College college = collegeService.getCollege(u.getInstitute_id());
					byteData = college.getLogo();
				} else if (u.getInstitute_id().contains("CP")) {
					Company company = companyService.getCompany(u.getInstitute_id());
					byteData = company.getLogo();
				}
			}
		} 
		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
		if (null != byteData && byteData.length > 0) {
			try {
				response.getOutputStream().write(byteData);
				response.getOutputStream().close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			InputStream in = context.getResourceAsStream("/images/blank_profile.jpg");
			try {
				byteData = IOUtils.toByteArray(in);
				response.getOutputStream().write(byteData);
				response.getOutputStream().close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	*/
}
