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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

//import com.skillpilots.model.BalanceData;
//import com.skillpilots.model.CollDeptLink;
//import com.skillpilots.model.FunctionStatus;
//import com.skillpilots.model.NewsletterSubscription;
//import com.skillpilots.model.PackagesData;
//import com.skillpilots.model.Queries;
//import com.skillpilots.model.Student;
//import com.skillpilots.model.User;
//import com.skillpilots.service.BalanceDataService;
//import com.skillpilots.service.CollegeService;
//import com.skillpilots.service.CompanyService;
//import com.skillpilots.service.FunctionStatusService;
//import com.skillpilots.service.NewsletterSubscriptionService;
//import com.skillpilots.service.PackageService;
//import com.skillpilots.service.QueriesService;
//import com.skillpilots.service.StudentService;
//import com.skillpilots.service.UserService;
//import com.skillpilots.utility.BeanCopyUtil;
//import com.skillpilots.utility.CommonUtil;
//import com.skillpilots.utility.FuncConstants;
//import com.skillpilots.utility.MessageConstants;
//import com.skillpilots.utility.NavigationBarUtilityService;
//import com.skillpilots.utility.ProjectConstants;
//import com.skillpilots.utility.UserBeanService;

@Controller
//public class UserController extends BeanCopyUtil {
public class UserController{
////	@Autowired UserService userService;
////	@Autowired HttpSession session;
////	@Autowired UserBeanService userBeanService;
////	@Autowired BalanceDataService balanceDataService;
////	@Autowired PackageService packageService;
////	@Autowired FunctionStatusService functionStatusService;
////	@Autowired CollegeService collegeService;
////	@Autowired CompanyService companyService;
////	@Autowired NewsletterSubscriptionService newsletterservice;
////	@Autowired QueriesService queriesservice;
////	@Autowired NavigationBarUtilityService navBarUtil;
////	@Autowired StudentService studentService;
////	@Autowired CommonUtil CommonUtil;
////	
////	@RequestMapping("/email_exists")
////	public @ResponseBody String checkMail(@RequestParam String email_id) {
////		System.out.println("------------" + email_id);
////		if (userService.emailExist(email_id)) {
////			User u = userService.getValidUserByEmailId(email_id);
////			String userid = u.getUser_id().substring(0, 2);
////			System.out.println("user id : " + userid);
////			String temp_pass = u.getTemp_pass();
////			System.out.println("temp_pass : " + temp_pass);
////			if (userid.equals(ProjectConstants.user_initials_student)
////					&& temp_pass.equalsIgnoreCase(ProjectConstants.reg_user_temp_pass_yes)) {
////				System.out.println("inside if");
////				return ProjectConstants.user_initials_student;
////			} else {
////				return "exists";
////			}
////		} else {
////			return "notexist";
////		}
////	}
////
////	@RequestMapping("/contact_exists")
////	public @ResponseBody String checkContact(@RequestParam("contact") String contact) {
////		long contactno = 0;
////		if (contact.equals("")) {
////		} else {
////			try {
////				contactno = Long.parseLong(contact);
////			} catch (NumberFormatException e) {
////				e.printStackTrace();
////			}
////		}
////		if (userService.contactExist(contactno)) {
////			return "exist";
////		} else {
////			return "notexists";
////		}
////	}
////
////	@RequestMapping("/check_old_pass")
////	public @ResponseBody String checkPass(@RequestParam String old_pass) {
////		User user = (User) session.getAttribute("user_data");
////		if (user.getPsswrd_data().equals(userBeanService.encryptWithMD5(old_pass))) {
////			System.out.println("Password Check Successfull");
////			return "success";
////		} else {
////			return "failed";
////		}
////	}
////
	@RequestMapping(value = "/change_password", method = RequestMethod.GET)
	public String changepass(Model model) {
		
			return "change_password";
		
	}
////
////	@RequestMapping(value = "/change_password", method = RequestMethod.POST)
////	public String changepass(@ModelAttribute User user, Model model) {
////		System.out.println("change password post method Activated*******");
////		User us = (User) session.getAttribute("user_data");
////		us.setPsswrd_data((userBeanService.encryptWithMD5(user.getPsswrd_data())));
////		model.addAttribute("message", MessageConstants.password_changed);
////		String userType = (String) session.getAttribute("log_type");
////
////		if (us.getTemp_pass().equalsIgnoreCase(ProjectConstants.reg_user_temp_pass_yes)) {
////			System.out.println("change password post method Accesss*******");
////			us.setTemp_pass(ProjectConstants.reg_user_temp_pass_no);
////			us.setEmail_verified(true);
////			us.setAcc_verified(true);
////			String institute_id = (String) session.getAttribute("institute_id");
////			String inst_type = (String) session.getAttribute("inst_type");
////			
////			int role = (int) session.getAttribute("role");
////			if (role == ProjectConstants.iii_Role && (userType.equalsIgnoreCase(ProjectConstants.user_initials_college)
////					|| (userType.equalsIgnoreCase(ProjectConstants.user_initials_users) && inst_type.equals(ProjectConstants.user_initials_college)))) {
////				FunctionStatus functionStatus = functionStatusService
////						.getFunctionStatus(FuncConstants.func_name_clg_default_pkg);
////				// set default balance data for college.
////				
////					PackagesData packageData = packageService
////							.getDefaultPkg(ProjectConstants.package_data_package_for_college);
////					if (!balanceDataService.isDefaultPkgAvailable(institute_id, packageData.getPackage_id())) {
////						BalanceData balanceData = new BalanceData();
////						balanceData.setCreation_date(new Date());
////						balanceData.setUser_id(institute_id);
////						balanceData.setNo_of_dept(packageData.getNo_of_dept());
////						balanceData.setNo_of_internships(packageData.getNo_of_internships());
////						balanceData.setPackage_id(packageData.getPackage_id());
////						Date dt = new Date();
////						balanceData.setEffective_date(dt);
////						balanceData.setExpiration_date(userBeanService.getDateAfterDays(dt, packageData.getValidity()));
////						
////						String balanceDataId=String.format("%016d", balanceDataService.getNextBalanceDataId());
////						balanceData.setBalance_data_id(ProjectConstants.balance_data_id_initial+balanceDataId);
////						balanceDataService.addBalanceData(balanceData);
////					}
////				
////			}
////			if (role == ProjectConstants.hr_Role && (userType.equalsIgnoreCase(ProjectConstants.user_initials_company)
////					|| (userType.equalsIgnoreCase(ProjectConstants.user_initials_users) && inst_type.equals(ProjectConstants.user_initials_company)))) {
////				FunctionStatus functionStatus = functionStatusService
////						.getFunctionStatus(FuncConstants.func_name_com_default_pkg);
////				// set default balance data for college.
////			
////					PackagesData packageData = packageService
////							.getDefaultPkg(ProjectConstants.package_data_package_for_company);
////					if (!balanceDataService.isDefaultPkgAvailable(institute_id, packageData.getPackage_id())) {
////						BalanceData balanceData = new BalanceData();
////						balanceData.setCreation_date(new Date());
////						balanceData.setUser_id(institute_id);
////						balanceData.setNo_of_dept(packageData.getNo_of_dept());
////						balanceData.setNo_of_internships(packageData.getNo_of_internships());
////						balanceData.setPackage_id(packageData.getPackage_id());
////						Date dt = new Date();
////						balanceData.setEffective_date(dt);
////						balanceData.setExpiration_date(userBeanService.getDateAfterDays(dt, packageData.getValidity()));
////						String balanceDataId=String.format("%016d", balanceDataService.getNextBalanceDataId());
////						balanceData.setBalance_data_id(ProjectConstants.balance_data_id_initial+balanceDataId);
////						balanceDataService.addBalanceData(balanceData);
////					}
////				
////			}
////		}
////
////		userService.updateUser(us,false);//dont update session
////		return "redirect:logout";
////	}
////
////	@RequestMapping("/get_user")
////	public @ResponseBody User getuser(@RequestParam("user_id") String user_id) {
////		User user = userService.getUser(user_id);
////		return user;
////	}
////
//	@RequestMapping("/editUserProfile")
//	public String updateuser() {
//		
//		return "editUserProfile";
//	}
////
////	@SuppressWarnings("unused")
////	@RequestMapping(value = "/editUserProfile", method = RequestMethod.POST)
////	public String edituser(@ModelAttribute User user,@RequestParam(value="hrSign",required = false) MultipartFile hrSign) throws IOException {
////		User oldUser = (User) session.getAttribute("user_data");
////		System.out.println("Inside edit profile"+user.getRole());
////		boolean inst_logged = true;
////
////		if (oldUser.getUser_id().substring(0, 2).equals(ProjectConstants.user_initials_users)) {
////			inst_logged = false;
////		} else {
////			oldUser = userService.getHRorIIIHead(oldUser.getUser_id());
////		} 
////		user.setUpdation_date(new Date());
////		copyNonNullProperties(user, oldUser);
////		if(inst_logged)
////			userService.updateUser(oldUser,false);//dont update session since coll/comp is logged in
////		else
////			userService.updateUser(oldUser,true);//update session
////		
////		String institute_type = session.getAttribute("inst_type").toString();
////		
////		if (institute_type.equals(ProjectConstants.user_initials_college)) {
////			System.out.println("Inside College");
////			return "redirect:college_dashboard";
////		} else if (institute_type.equals(ProjectConstants.user_initials_company)) {
////			if(null!=hrSign){
////				System.out.println("upload Sign"+hrSign.getBytes());
////				System.out.println("Uploading Signature"+user.getRole());
////				byte[] bytes = hrSign.getBytes();
////					oldUser.setSignature(bytes);
////					userService.updateUser(oldUser,true);//dont update session since coll/comp is logged in
////			
////			System.out.println("Inside company");
////			System.out.println(oldUser.getRole());
////			System.out.println(oldUser.getUsername());
////	 		System.out.println(oldUser.getEmail_id());
////	 		return "redirect:editUserProfile";
////			}else{
////				return "redirect:editUserProfile";
////			}
////			
////		} 
////		return "redirect:company_dashboard";
////	}
////
////	@RequestMapping("/forgot_password")
////	public String forgetPassword(@RequestParam(value = "error", required = false) String error, Model model) {
////		model.addAttribute("error", error);
////		return "forgotPassword";
////	}
////
////	@RequestMapping(value = "/forgot_password", method = RequestMethod.POST)
////	public String forgetUserPassword(@RequestParam("email_id") String email_id, Model model,RedirectAttributes redirectAttributes) {
////		User user = userService.getValidUserByEmailId(email_id);
////		if (null != user) {
////			
////			if (!user.isAcc_verified()) {
////				model.addAttribute("error", MessageConstants.acc_not_verified);
////				return "redirect:forgot_password";
////			}
////			// set new password
////			Random random = new Random();
////			String password = user.getUsername().substring(0, 2) + "" + random.nextInt(100000);
////			password = password.replaceAll("\\s", "");
////			user.setPsswrd_data(userBeanService.encryptWithMD5(password));
////			user.setTemp_pass(ProjectConstants.reg_user_temp_pass_yes);
////			user.setLogin_attempt(0);
////			user.setUpdation_date(new Date());
////
////			// send new password on email-id
////			BodyPart txt = new MimeBodyPart(), img = new MimeBodyPart();
////			String body = "<h1 style=\"font-size:55px;margin:20px;text-align:center\">Welcome to <span style=\"color:#1974c3;\">Interns<span style=\"color:#01af36;\">Orbit</span> </h1>"
////					+ "<p style=\"text-align:center\">The login password for your Skillpilots account has been reset to - <strong>"
////					+ password + "</strong><br>"
////					+ "You'll be asked to change the temporary password on your login for security reasons.<br></p>"
////					+ ProjectConstants.mail_footer;
////			//CommonUtil.SendSms("Hello "+user.getUsername()+" Your New Password Is "+password+"", user.getContact_no());
////			CommonUtil.SendSms("Your Forget Password for Otp is :"+password+" Thank You", user.getContact_no());
////			//DataSource fds = new FileDataSource(ProjectConstants.server_img_internsorbit_png);
////			int status = 0;
////			try {
////				txt.setContent(body, "text/html");
////				//img.setDataHandler(new DataHandler(fds));
////				//img.setHeader("Content-ID", "<image>");
////				userBeanService.sendMimeMail(ProjectConstants.mail_from, user.getEmail_id(),
////						ProjectConstants.mail_subject_forgot_pass, body);
////				userService.updateUser(user,false);//dont update session
////				model.addAttribute("message", MessageConstants.new_pass_sent);
////				model.addAttribute("user", new User());
////				redirectAttributes.addFlashAttribute("forPass", MessageConstants.new_pass_sent);
////				return "redirect:/";
////			} catch (MessagingException e) {
////				e.printStackTrace();
////				model.addAttribute("erorr", "Server Error! Please try after sometime.");
////				return "redirect:login";
////			}
////
////			/*if (status > 0) {
////				userService.updateUser(user,false);//dont update session
////				model.addAttribute("message", MessageConstants.new_pass_sent);
////				model.addAttribute("user", new User());
////				return "login";
////			} else {
////				model.addAttribute("erorr", "Server Error! Please try after sometime.");
////				return "redirect:forgot_password";
////			}*/
////
////		} else {
////			model.addAttribute("error", MessageConstants.user_not_found_with_email);
////			return "redirect:login_check";
////		}
////	}
////
////	@RequestMapping("/subscribe")
////	public @ResponseBody String subscribe(@RequestParam String email_id) {
////		System.out.println("------------" + email_id);
////		NewsletterSubscription subscription = new NewsletterSubscription();
////		subscription.setEmail_id(email_id);
////		subscription.setStatus(ProjectConstants.newsletter_subscription_status_subscribed);
////		subscription.setCreation_date(new Date());
////		return newsletterservice.add(subscription);
////	}
////
////	@RequestMapping("/unsubscribe")
////	public @ResponseBody String unsubscribe(@RequestParam String email_id) {
////		System.out.println("------------" + email_id);
////		NewsletterSubscription subscription = new NewsletterSubscription();
////		subscription.setEmail_id(email_id);
////		subscription.setStatus(ProjectConstants.newsletter_subscription_status_unsubscribed);
////		subscription.setUpdation_date(new Date());
////		newsletterservice.update(subscription);
////		return "Un-Subscribed";
////	}
////
////	@RequestMapping("/query")
////	public @ResponseBody String query(@RequestParam("email_id") String email_id,
////			@RequestParam("username") String username, @RequestParam("query") String query) {
////		System.out.println("------------" + email_id + ":" + username + ":" + query);
////		if (email_id != null && !email_id.isEmpty() && username != null && !username.isEmpty() && query != null
////				&& !query.isEmpty()) {
////			Queries qry = new Queries();
////			qry.setEmail_id(email_id);
////			qry.setUsername(username);
////			qry.setQuery(query);
////			return queriesservice.add(qry);
////		}
////		return "Error! Please fill all the fields.";
////	}
////	
////	@RequestMapping("/getSignature")
////	public @ResponseBody User getSignature(@RequestParam("user_id") String user_id){
////		System.out.println("User_id is = " +user_id);
////		//User id = userService.getUser(user_id);
////		
////		User hr = userService.getHrUser(user_id);
////		System.out.println("New User id "+hr.getUser_id());
////		User user=userService.getSignature(hr.getUser_id());
////		return user;
////	}
////	
////	@RequestMapping(value = "/hrSign", method = RequestMethod.GET)
////	public String hrSign(HttpServletResponse response) {
////		User user = (User) session.getAttribute("user_data");
////		byte[] byteData = null;
////
////		if (null != user) {
////			User u = userService.getHr(user.getUser_id());
////			byteData = u.getSignature();
////			System.out.println("image data = "+"data:image/png;base64,"+byteData);
////		}
////		response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
////		if (null != byteData && byteData.length > 0) {
////			try {
////				response.getOutputStream().write(byteData);
////				response.getOutputStream().close();
////			} catch (IOException e) {
////				e.printStackTrace();
////			}
////		} else {
////
////		}
////		return null;
////	}
}

