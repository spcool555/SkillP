package com.Arc.controller.intern;

import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.Random;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.Arc.model.User;
import com.Arc.repository.UserRepository;
import com.Arc.utility.ProjectConstants;

@Controller
//public class StudentRegistrationController extends BeanCopyUtil {
public class StudentRegistrationController{
    @Autowired
    private UserRepository userRepository;
    @Autowired
    private JavaMailSender javaMailSender;

	@GetMapping("/student_reg_step1")
	public String regStep1(Model model) { 
		 model.addAttribute("user", new User());
		return "student_reg_email";
	}

	@RequestMapping(value = "/student_reg_step1", method = RequestMethod.POST)
	public String regStep_one(@ModelAttribute("user") User user) {
		
		
		
	
	
		user.setRole(ProjectConstants.iii_role0);
		
		
		  // Save user to the database
        user.setOtp(generateOtp());
        userRepository.save(user);

        // Send email with OTP (you need to implement this)
        // Send email with OTP
        sendVerificationEmail(user.getEmail(), user.getOtp());
      

        return "redirect:/student_reg_step2";
			
		
		
	}
	private void sendVerificationEmail(String toEmail, String otp) {
	    try {
	        SimpleMailMessage message = new SimpleMailMessage();
	        message.setTo(toEmail);
	        message.setSubject("Email Verification");
	        message.setText("Your OTP for email verification is: " + otp);

	        javaMailSender.send(message);
	    } catch (Exception e) {
	        e.printStackTrace();
	        // Handle the exception (log it or take appropriate action)
	    }
	}
	//getmaping
	@RequestMapping("/student_reg_step2")
	public String regStep_two() {
	
		return "stud_reg_step_two";
	
	
		
	}
	@PostMapping("/verify")
	public String processVerification(@ModelAttribute("user") User user, RedirectAttributes redirectAttributes) {
	    // Check if the entered OTP matches the stored OTP
	    User storedUser = userRepository.findByEmail(user.getEmail()).orElse(null);
	   
	    if (storedUser != null && storedUser.getOtp().equals(user.getOtp())) {
	        // Successful verification
	        storedUser.setVerified(true);
	        userRepository.save(storedUser);

	        // Redirect to change password page after successful verification
	        redirectAttributes.addAttribute("email", user.getEmail());
	        return "redirect:/stud_reg_step_two2";
	    } else {
	        // Handle invalid OTP
	        return "redirect:/verify";
	    }
	}


	@RequestMapping("/stud_reg_step_two2")
	public String regStep_two2(@RequestParam("email") String email, Model model) {
	    // Use the email parameter as needed
	    model.addAttribute("email", email);
	    return "stud_reg_step_two2";
	}


	@PostMapping("/changepass")
	public String saveOrUpdateByEmail(@ModelAttribute("user") User user, Model model) {
	    // Check if the email already exists in the database
	    Optional<User> existingUserOptional = userRepository.findByEmail(user.getEmail());

	    if (existingUserOptional.isPresent()) {
	        // Email exists, update the existing user's data (e.g., password)
	        User existingUser = existingUserOptional.get();
	        existingUser.setPassword(user.getPassword());  // Update the password or other fields as needed
	        userRepository.save(existingUser);
	        System.out.println("User with email " + existingUser.getEmail() + " updated.");
	    } else {
	        // Email doesn't exist, save a new user
	        userRepository.save(user);
	        System.out.println("New user with email " + user.getEmail() + " saved.");
	    }

	 

	    return "redirect:/login_check";
	}

	
	 private String generateOtp() {
	        // Implement your OTP generation logic
	        return "007"; // For demonstration purposes
	    }
	
	


	@RequestMapping(value = "/check_reg_code", method = RequestMethod.POST)
	public @ResponseBody String checregcode() {
	        
			return "This Email-id is not registered!";
		}
	
	

	/*@RequestMapping(value = "/check_reg_code_new" , method = RequestMethod.POST)
	public @ResponseBody String checregcode2(@RequestParam("email_id") String email,
			@RequestParam("regCode") String regCode) {
		System.out.println("***Active***");
		System.out.println("INside refd code");
		System.out.println(email + "   " + regCode);
		User user = userService.getValidUserByEmailId(email);
		if (null != user) {
			if (user.getUsername() != null && !user.getUsername().isEmpty()) {
				return "Profile already created with this email-id!";
			} else {
				if (user.getPsswrd_data().equals(regCode)) {
					return "success";
				} else {
					return "Email-id and registration code not matched!";
				}
			}

		} else {
			return "This Email-id is not registered!";
		}
	}	*/

	@RequestMapping("/confirm_current_edu")
	public String confirmCurrEd(Model model) {
	
			return "confirmStudCurrEdu";
		}
	
	@RequestMapping(value = "/confirm_current_edu", method = RequestMethod.POST)
	public String confirmurrEd(@RequestParam("confirm") String confirm, Model model) {
		if (confirm.equals("logout"))
			return "redirect:logout";
		model.addAttribute("confirm", confirm);
		return "redirect:stud_profile";
	}

	@RequestMapping("/stud_profile")
	public String studprofile() {
		
			
			return "stud_profile";
	
	}
	

	@RequestMapping(value = "/add_stu", method = RequestMethod.POST)
	public String addStudent() {
		
			return "redirect:add_stu_past";
		}
		
	@RequestMapping("/add_stu_past")
	public String addpast()  {
	
			return "student_past_education";
		} 
	

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

}
