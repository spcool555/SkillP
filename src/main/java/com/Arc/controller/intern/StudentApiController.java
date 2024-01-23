//package com.Arc.controller.intern;
//
//import org.hibernate.SessionFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//import org.springframework.web.bind.annotation.ResponseStatus;
//import org.springframework.web.multipart.MultipartFile;
//import java.io.IOException;
//import java.net.URI;
//import java.net.URISyntaxException;
//import java.util.ArrayList;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Random;
//import java.util.concurrent.TimeUnit;
//import javax.mail.BodyPart;
//import javax.mail.MessagingException;
//import javax.mail.internet.MimeBodyPart;
//import javax.servlet.http.HttpSession;
//import com.skillpilots.dao.CompanyAdvertiseDao;
//import com.skillpilots.dao.StudentRequestDao;
//import com.skillpilots.dao.UserDao;
//import com.skillpilots.model.CollDeptLink;
//import com.skillpilots.model.College;
//import com.skillpilots.model.CompAdvertisement;
//import com.skillpilots.model.CompDeptLink;
//import com.skillpilots.model.Company;
//import com.skillpilots.model.Department;
//import com.skillpilots.model.FeedbackData;
//import com.skillpilots.model.InternshipSchedule;
//import com.skillpilots.model.Internships;
//import com.skillpilots.model.LiveChat;
//import com.skillpilots.model.Notifications;
//import com.skillpilots.model.ProgressData;
//import com.skillpilots.model.SavedInternships;
//import com.skillpilots.model.Student;
//import com.skillpilots.model.StudentPast;
//import com.skillpilots.model.StudentRequest;
//import com.skillpilots.model.Technologies;
//import com.skillpilots.model.User;
//import com.skillpilots.service.CollegeService;
//import com.skillpilots.service.CompDeptLinkService;
//import com.skillpilots.service.CompanyService;
//import com.skillpilots.service.DepartmentService;
//import com.skillpilots.service.ExternalRequestService;
//import com.skillpilots.service.InternshipAndFeedbackService;
//import com.skillpilots.service.InternshipScheduleService;
//import com.skillpilots.service.InternshipsService;
//import com.skillpilots.service.NewsletterSubscriptionService;
//import com.skillpilots.service.NotificationsService;
//import com.skillpilots.service.SavedInternshipService;
//import com.skillpilots.service.StudentRequestService;
//import com.skillpilots.service.StudentService;
//import com.skillpilots.service.StudentTestDataService;
//import com.skillpilots.service.StudentTestDataServiceImpl;
//import com.skillpilots.service.TechnologiesService;
//import com.skillpilots.service.UserService;
//import com.skillpilots.utility.BeanCopyUtil;
//import com.skillpilots.utility.CommonUtil;
//import com.skillpilots.utility.LiveChatService;
//import com.skillpilots.utility.MessageConstants;
//import com.skillpilots.utility.NotificationConstants;
//import com.skillpilots.utility.ProjectConstants;
//import com.skillpilots.utility.UserBeanService;
//import com.ibm.icu.text.SimpleDateFormat;
//
//@Controller
//public class StudentApiController {
//
//	@SuppressWarnings("unused")
//	@PostMapping("/studLogin")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getStudent(@RequestParam("email") String email,
//			@RequestParam("password") String password) {
//		User user = userService.getStudent(email, password);
//
//		System.out.println(">>>>>>>>>>>>>>" + user);
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//
//		if (user != null) {
//			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
//			String creation_date = sdf.format(user.getCreation_date());
//			if (user.getExpiration_date() == null && user.getEffective_date() == null) {
//				userMap.put("expiration_date", null);
//				userMap.put("effective_date", null);
//			} else {
//				String expiration_date = sdf.format(user.getExpiration_date());
//				String effective_date = sdf.format(user.getEffective_date());
//				userMap.put("expiration_date", expiration_date);
//				userMap.put("effective_date", effective_date);
//			}
//			if (user.isAcc_verified()) {
//				userMap.put("acc_verified", true);
//			} else {
//				userMap.put("acc_verified", false);
//			}
//			if (user.getLast_login() == null) {
//				userMap.put("last_login", null);
//			} else {
//				String last_login = sdf.format(user.getLast_login());
//				userMap.put("last_login", last_login);
//			}
//			if (user.isMob_verified()) {
//				userMap.put("mob_verified", true);
//			} else {
//				userMap.put("mob_verified", false);
//			}
//			if (user.isEmail_verified()) {
//				userMap.put("email_verified", true);
//			} else {
//				userMap.put("email_verified", false);
//			}
//			if (user.getUpdation_date() == null) {
//				userMap.put("updation_date", null);
//			} else {
//				userMap.put("updation_date", sdf.format(user.getUpdation_date()));
//			}
//
//			userMap.put("res_code", 200);
//			userMap.put("user_id", user.getUser_id());
//			userMap.put("psswrd_data", user.getPsswrd_data());
//			userMap.put("creation_date", creation_date);
//			userMap.put("expiration_rsn", user.getExpiration_rsn());
//			userMap.put("email_id", user.getEmail_id());
//			userMap.put("temp_pass", user.getTemp_pass());
//			userMap.put("institute_id", user.getInstitute_id());
//			// userMap.put("email_verified", user.gete);
//			// userMap.put("mob_verified", user.getE);
//			userMap.put("username", user.getUsername());
//			userMap.put("contact_no", user.getContact_no());
//			userMap.put("user_text", user.getUser_text());
//			userMap.put("signature", user.getSignature());
//			userMap.put("msg", "login success.");
//			userMap.put("act", "Login");
//			// userMap.put("", value);
//
//			return ResponseEntity.ok(userMap);
//		} else if (user == null) {
//			userMap.put("msg", "Invalid userName and Password or User not found");
//			userMap.put("res_code", 404);
//			return ResponseEntity.ok(userMap);
//		} else {
//			userMap.put("msg", "User not found with this email id.");
//			userMap.put("res_code", 404);
//			return ResponseEntity.ok(userMap);
//		}
//
//	}
//
//	@PostMapping("/getAllSkill")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getAllSkill(int pageno,int limit) {
//		List<Technologies> skillList = technologiesService.getTechnology(pageno,limit);
//		String count = technologiesService.getTechCount();
//		HashMap<String, Object> skillMap = new HashMap<String, Object>();
//		int cout = Integer.valueOf(count);
//		double pge = Integer.valueOf(limit);
//		double countPage = (Math.ceil(cout/pge));
//		System.out.println(">>>>>>>>>>>>>> "+countPage);
//		if (skillList != null) {
//			skillMap.put("msg", "success");
//			skillMap.put("res code", 200);
//			skillMap.put("tot_page", String.format("%.0f", countPage));
//			skillMap.put("skills", skillList);
//			
//			return ResponseEntity.ok(skillMap);
//		}
//		skillMap.put("msg", "Not Found");
//		skillMap.put("res code", 400);
//		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(skillMap);
//	}
//
//	@GetMapping("/getAllCollege")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getAllColleges() {
//		
//		List<College> collegeList = collegeService.getAllCollege();
//		
//		HashMap<String, Object> collegeMap = new HashMap<String, Object>();
//		if (collegeList != null) {
//			collegeMap.put("res", 200);
//			collegeMap.put("msg", "record found");
//			collegeMap.put("college_list", collegeList);
//			return ResponseEntity.ok(collegeMap);
//		}
//		collegeMap.put("res", 400);
//		collegeMap.put("msg", "No College Added Yet");
//		return ResponseEntity.ok(collegeMap);
//	}
//	
//	@PostMapping("/getAllCompanies")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getAllCompanies(@RequestParam("pageno") int pageno,
//			@RequestParam("limit") int limit){
//		List<Company> compList = companyservice.getCompanyList(pageno,limit);
//		HashMap<String, Object> compMap = new HashMap<String, Object>();
//		String count = companyservice.getCompCount();
//		int cout = Integer.valueOf(count);
//		double pge = Integer.valueOf(limit);
//		double countPage = (Math.ceil(cout/pge));
//		if(compList!=null){
//			compMap.put("msg", "Record Found");
//			compMap.put("res", 200);
//			compMap.put("tot_page", String.format("%.0f", countPage));
//			
//			compMap.put("company_list", compList);
//			return ResponseEntity.ok(compMap);
//		}
//		compMap.put("msg", "Not Found");
//		compMap.put("res", 400);
//		return ResponseEntity.ok(compMap);
//	}
//
//	@PostMapping("/getAllDept")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> getAllDepartment(@RequestParam("dept_type") String type) {
//		List<Department> deptList = deptartmentService.getAllCollege_Department(type);
//		//String count = departmentService.getDeptCount();
//		HashMap<String, Object> deptMap = new HashMap<String, Object>();
//		if (deptList != null) {
//			deptMap.put("msg", "Record Found");
//			deptMap.put("res", 200);
//			deptMap.put("departments", deptList);
//			return ResponseEntity.ok(deptMap);
//		}
//		deptMap.put("msg", "Not Added");
//		deptMap.put("res", 400);
//		return ResponseEntity.ok(deptMap);
//	}
//
//	@PostMapping("/personal_info")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getPersonalInfo() {
//		List<Student> studentData = studentService.getAllStudent();
//		if (studentData != null) {
//			return ResponseEntity.ok(studentData);
//		}
//		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("No Record Found");
//	}
//
//	@PostMapping("/getCompById")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getCompById(@RequestParam("company_id") String company_id) {
//
//		Company company = companyservice.getCompany(company_id);
//		if (company != null) {
//			return ResponseEntity.ok(company);
//		}
//		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("No Record Found");
//	}
//
//	@PostMapping("/getEducationInfo")
//	@ResponseStatus
//	@ResponseBody
//	public ResponseEntity<Object> getEduInfo(@RequestParam("student_id") String stud_id,
//			@RequestParam("student_past_id") long stud_past_id) {
//
//		Student student = studentService.getStudentData(stud_id, stud_past_id);
//		if (student != null) {
//			return ResponseEntity.ok(student);
//		}
//		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("No Student Record Found With This id");
//	}
//
//	@PostMapping("/getAdvertisement")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getAdvertisement(@RequestParam("page_no") int pageno,@RequestParam("limit") int limit) {
//		List<CompAdvertisement> advList = companyAdvertiseDao.getAdvertisement(pageno,limit);
//		String count = companyservice.getAdvCount();
//		int cout = Integer.valueOf(count);
//		double pge = Integer.valueOf(limit);
//		double countPage = (Math.ceil(cout/pge));
//		System.out.println(">>>>>>>>>>>>>> "+countPage);
//		HashMap<String, Object> advtMap = new HashMap<String, Object>();
//		if (advList != null) {
//			advtMap.put("msg", "success");
//			advtMap.put("res", 200);
//			advtMap.put("tot_page", String.format("%.0f", countPage));
//			advtMap.put("advertisements", advList);
//			return ResponseEntity.ok(advtMap);
//		}
//		advtMap.put("res",400);
//		advtMap.put("msg", "Not Found");
//		return ResponseEntity.ok(advtMap);
//	}
//
//	@PostMapping("/stud_reg_step1")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> regStep_one(@RequestParam("emailid") String emailid, Model model,
//			@RequestParam("resend") String resend, @RequestParam("mobileno") Long mobile) throws URISyntaxException {
//		System.out.println("indiside method 2");
//		System.out.println("mobile nnumber = " + mobile);
//		emailid = emailid.trim().toLowerCase();
//		if (resend.equals("no")) {
//			if (userService.emailExist(emailid)) {
//				// model.addAttribute("linkAlreadySent",
//				// MessageConstants.regLinkAlreadySent);
//				HashMap<String, Object> userMap = new HashMap<String, Object>();
//				userMap.put("msg", "link already send to your registered email id.");
//				userMap.put("res code", 404);
//				return ResponseEntity.ok(userMap);
//			} else {
//				User user = new User();
//				user.setEmail_id(emailid);
//				user.setContact_no(mobile);
//				if (null != studentService.getLastStudentUser()) {
//					String next_num = String.format("%010d", userService.getNextStudentId());
//					String stud_id = ProjectConstants.user_initials_student + next_num;
//					user.setUser_id(stud_id);
//				} else {
//					user.setUser_id("ST0000000001");
//				}
//				Random random = new Random();
//				String password = emailid.substring(0, 4) + "" + random.nextInt(10000);
//				password = password.replaceAll("\\s", "");
//				commonUtil.SendSms(
//						"Thank You For Register.!! " + " Here is your registration code : " + password
//								+ " Plese Follow the link  " + ProjectConstants.student_reg_step_2_link
//								+ " to complete your registration. You'll be asked to change your password for security reasons. ",
//						mobile);
//				BodyPart txt = new MimeBodyPart();
//				String body = "<h1 style=\"font-size:55px;margin:20px;text-align:center\">Welcome to SkillPilots </h1>"
//						+ "<p style=\"text-align:center\"> Here is your registration code - <strong>" + password
//						+ "</strong><br>" + "Click <a href='" + ProjectConstants.student_reg_step_2_link
//						+ "'><strong>here</strong></a>" + " to complete your registration.<br>"
//						+ "You'll be asked to change your password for security reasons.<br></p>"
//						+ ProjectConstants.mail_footer;
//
//				user.setPsswrd_data(password);
//				user.setTemp_pass(ProjectConstants.reg_user_temp_pass_yes);
//				user.setCreation_date(new Date());
//				try {
//					txt.setContent(body, "text/html");
//
//					userBeanService.sendMimeMail1("SkillPilots", emailid, "Registration Code & Link for SkillPilots",
//							body);
//					userService.addUser(user);
//					model.addAttribute("message", MessageConstants.regLinkSent);
//				} catch (MessagingException e) {
//					e.printStackTrace();
//				}
//				URI step1 = new URI("redirect:stud_reg_step1");
//				HttpHeaders httpheaders = new HttpHeaders();
//				httpheaders.setLocation(step1);
//			}
//		} else if (resend.equals("yes")) {
//			User u = userService.getValidUserByEmailId(emailid);
//
//			Random random = new Random();
//			String password = emailid.substring(0, 4) + "" + random.nextInt(10000);
//			password = password.replaceAll("\\s", "");
//			BodyPart txt = new MimeBodyPart();
//			String body = "<h1 style=\"font-size:55px;margin:20px;text-align:center\">Welcome to SkillPilots </h1>"
//					+ "<p style=\"text-align:center\"> Here is your registration code - <strong>" + password
//					+ "</strong><br>" + "Click <a href='" + ProjectConstants.student_reg_step_2_link
//					+ "'><strong>here</strong></a>" + " to complete your registration.<br>"
//					+ "You'll be asked to change your password for security reasons.<br><br>"
//					+ "Thanks & Regards,<br>SkillPilots Team</p>"
//					+ "<p style=\"text-align:justify;font-size:12px;\">Note:This is a system generated mail, please do not reply to it. This mailbox isn't being monitored.<br>"
//					+ "The information contained in this e-mail and/or attachments to it contain confidential or privileged information."
//					+ "If you are not the intended recipient, any dissemination, use, review, distribution, printing or copying of the"
//					+ " information contained in this e-mail message and/or attachments to it are strictly prohibited."
//					+ "If you have received this communication in error, please notify us at +91712-2241405.</p>";
//			u.setPsswrd_data(password);
//
//			try {
//				txt.setContent(body, "text/html");
//				txt.setHeader("Content-ID", "SkillPilots");
//				userBeanService.sendMimeMail1("SkillPilots", emailid, "Registration Code & Link for SkillPilots",
//						body);
//				userService.updateUser(u, true);
//				model.addAttribute("message", MessageConstants.resendRegCode);
//			} catch (MessagingException e) {
//				e.printStackTrace();
//			}
//			URI step1 = new URI("redirect:stud_reg_step1");
//			HttpHeaders httpheaders = new HttpHeaders();
//			httpheaders.setLocation(step1);
//		} else {
//			URI step1 = new URI("redirect:stud_reg_step1");
//			HttpHeaders httpheaders = new HttpHeaders();
//			httpheaders.setLocation(step1);
//		}
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		userMap.put("msg", "success");
//		userMap.put("res_code", 404);
//		return ResponseEntity.status(HttpStatus.OK).body(userMap);
//	}
//
//	@PostMapping("/registration")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> loginApi(@RequestParam("emailid") String emailid,
//			@RequestParam("mobileno") Long mobileno) {
//
//		User user = userService.checkData(emailid, mobileno);
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		if (user != null) {
//
//			userMap.put("email_id", user.getEmail_id());
//			userMap.put("res_code", 404);
//			userMap.put("msg", "user alredy registed with this email id");
//			return ResponseEntity.ok(userMap);
//		}
//		User u = new User();
//		Random random = new Random();
//		String password = emailid.substring(0, 4) + "" + random.nextInt(10000);
//		password = password.replaceAll("\\s", "");
//		BodyPart txt = new MimeBodyPart();
//		String body = "<h1 style=\"font-size:55px;margin:20px;text-align:center\">Welcome to SkillPilots </h1>"
//				+ "<p style=\"text-align:center\"> Here is your registration code - <strong>" + password
//				+ "</strong><br>" + "Click <a href='" + ProjectConstants.student_reg_step_2_link
//				+ "'><strong>here</strong></a>" + " to complete your registration.<br>"
//				+ "You'll be asked to change your password for security reasons.<br><br>"
//				+ "Thanks & Regards,<br>SkillPilots Team</p>"
//				+ "<p style=\"text-align:justify;font-size:12px;\">Note:This is a system generated mail, please do not reply to it. This mailbox isn't being monitored.<br>"
//				+ "The information contained in this e-mail and/or attachments to it contain confidential or privileged information."
//				+ "<br> If you are not the intended recipient, any dissemination, use, review, distribution, printing or copying of the"
//				+ "<br> information contained in this e-mail message and/or attachments to it are strictly prohibited."
//				+ "If you have received this communication in error, please notify us at <span style=\"color:#4daafb;\">+917588807491.<span></p>";
//
//		try {
//			txt.setContent(body, "text/html");
//			txt.setHeader("Content-ID", "SkillPilots");
//			userBeanService.sendMimeMail1("SkillPilots", emailid, "Registration Code & Link for SkillPilots", body);
//			System.out.println(">>>>>>>>>>>" + password);
//			u.setPsswrd_data(password);
//			u.setContact_no(mobileno);
//			u.setRole(ProjectConstants.user_role_student);
//			u.setEmail_id(emailid);
//			u.setTemp_pass(ProjectConstants.reg_user_temp_pass_yes);
//			u.setLogin_attempt(0);
//			String next_num = String.format("%010d", userService.getNextStudentId());
//			u.setUser_id(ProjectConstants.user_initials_student + next_num);
//			u.setTemp_pass(ProjectConstants.reg_user_temp_pass_yes);
//			u.setCreation_date(new Date());
//			userService.addUser(u);
//			userMap.put("res_code", 200);
//			userMap.put("msg", "Registration success");
//			return ResponseEntity.ok(userMap);
//		} catch (MessagingException e) {
//			e.printStackTrace();
//		}
//		userMap.put("res_code", 200);
//		userMap.put("msg", "success");
//		return ResponseEntity.ok(userMap);
//
//	}
//
//	@PostMapping("/checkRegCode")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> checkRegCode(@RequestParam("email") String email,
//			@RequestParam("regCode") String regCode) {
//		System.out.println(email + "   " + regCode);
//		User user = userService.getValidUserByEmailId(email);
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		if (null != user) {
//			if (user.getUsername() != null && !user.getUsername().isEmpty()) {
//				userMap.put("res_code", 200);
//				userMap.put("msg", "Profile already created with this emailid");
//				return ResponseEntity.ok(userMap);
//			} else {
//				if (user.getPsswrd_data().equals(regCode)) {
//					userMap.put("res_code", 200);
//					userMap.put("msg", "success");
//					return ResponseEntity.ok(userMap);
//				} else {
//					userMap.put("res_code", 200);
//					userMap.put("msg", "Email-id and registration code not matched!");
//					return ResponseEntity.ok(userMap);
//				}
//			}
//
//		} else {
//			userMap.put("res_code", 200);
//			userMap.put("msg", "This Email-id is not registered!");
//			return ResponseEntity.ok(userMap);
//		}
//	}
//
//	@PostMapping("/checkPassword")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> changePass(@RequestParam("pass") String old_pass,
//			@RequestParam("confPass") String new_pass) {
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		if (old_pass.equals((new_pass))) {
//			userMap.put("res_code", 200);
//			userMap.put("msg", "success");
//			return ResponseEntity.ok(userMap);
//		} else {
//			userMap.put("res_code", 400);
//			userMap.put("msg", "password not matched.");
//			return ResponseEntity.ok(userMap);
//		}
//	}
//
//	@PostMapping("/confEducation")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> confirmEducation(Model model, @ModelAttribute Student student,
//			@RequestParam("confirm") String confirm) {
//		User user = (User) session.getAttribute("user_data");
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		if (null != user) {
//			if (null != user.getUsername()) {
//				Student stu = studentService.getLoginStudent(user.getUser_id());
//				if (null != stu.getStudentPast()) {
//					System.out.println("in stud_profile - past_id = " + stu.getStudentPast().getStud_past_id());
//					confirm = "yes";
//				} else
//					confirm = "no";
//
//				model.addAttribute("gender", user.getGender());
//			} else {
//				Student stu = studentService.getLoginStudent(user.getUser_id());
//				stu.setEmail_id(user.getEmail_id());
//				stu.setStudent_id(user.getUser_id());
//			}
//
//			model.addAttribute("confirm", confirm);
//			if (confirm.equals("yes")) {
//				System.out.println("mobile  " + user.getContact_no());
//				List<College> colleges = collegeService.getAllCollege();
//				// remove unverified colleges from college list
//				List<String> unverifiedColleges = collegeService.getUnverifiedColleges();
//				colleges.removeIf(c -> unverifiedColleges.contains(c.getCollege_id()));
//
//				model.addAttribute("colleges", colleges);
//				List<Department> defaultDepartments = departmentService
//						.getAllCollege_Department(ProjectConstants.student_education_diploma);
//				model.addAttribute("defaultDepartments", defaultDepartments);
//			}
//			model.addAttribute("hide_profile", true);
//			userMap.put("res_code", 200);
//			userMap.put("msg", "stud_profile");
//			return ResponseEntity.ok(userMap);
//		} else {
//			userMap.put("res_code", 400);
//			userMap.put("msg", "logout");
//			return ResponseEntity.ok(userMap);
//
//		}
//	}
//
//	@PostMapping("/changePass")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> changePass(@RequestParam("email") String email, @RequestParam("password") String pass,
//			Model model) {
//		User us = userService.getValidUserByEmailId(email);
//		System.out.println(">>>>>>>>" + email);
//		us.setPsswrd_data((userBeanService.encryptWithMD5(pass)));
//		us.setTemp_pass(ProjectConstants.reg_user_temp_pass_no);
//		us.setEmail_verified(true);
//		// us.setAcc_verified(true);
//		us.setUpdation_date(new Date());
//		userService.updateUser(us, false);// dont update session
//		HashMap<String, Object> userMap = new HashMap<String, Object>();
//		userMap.put("msg", "password changed");
//		userMap.put("res", 200);
//		return ResponseEntity.ok(userMap);
//	}
//
//	@PostMapping("/saveStudentData")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> saveStudentData(@ModelAttribute Student student,
//			@RequestParam(value = "profile_photo", required = false) MultipartFile profile_photo,
//			@RequestParam(value = "collegeName", required = false) String clgid,
//			@RequestParam(value = "gender", required = false) String gender, Model model,
//			@RequestParam(value = "subscribe", required = false) boolean subscribe) {
//		HashMap<String, Object> studentMap = new HashMap<String, Object>();
//		User user = userService.getUser(student.getStudent_id());
//		Student stud = studentService.getStudent(student.getStudent_id());
//		boolean institute_upd = false;
//		
//		if(stud!=null){
//			if (null != profile_photo) {
//				try {
//					student.setPhoto(profile_photo.getBytes());
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//			System.out.println(">>>>>>>>>>>>>>>>>>>>>> in update"+stud.getCurr_enroll_no());
//			System.out.println(">>>>>>>>>>>>>>>>>>>>>> in update"+stud.getStudentPast());
//			student.setUpdation_date(new Date());
//			//student.setStudentPast(student.getStudentPast());
//			studentService.updateStudent(student);
//			user.setGender(gender);
//			user.setInstitute_id(clgid);
//			user.setUsername(student.getStudent_name());
//			user.setContact_no(student.getContact());
//			user.setUpdation_date(new Date());
//			userService.updateUser(user, true);
//			Student stud1 = studentService.getSpecificStudent(student.getStudent_id());
//			studentMap.put("msg", "update_success");
//			studentMap.put("res", 200);
//			studentMap.put("stud_info", stud1);
//			return ResponseEntity.ok(studentMap);
//		}else{
//			if (null != profile_photo) {
//				try {
//					student.setPhoto(profile_photo.getBytes());
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//			System.out.println(">>>>>>>>>>>>>>>>>>>>>>"+student.getStudentPast());
//			student.setCreation_date(new Date());
//			studentService.saveStudent(student);
//			user.setGender(gender);
//			user.setInstitute_id(clgid);
//			user.setUsername(student.getStudent_name());
//			user.setContact_no(student.getContact());
//			user.setUpdation_date(new Date());
//			userService.updateUser(user, true);
//			Student stud2 = studentService.getSpecificStudent(student.getStudent_id());
//			studentMap.put("msg", "success");
//			studentMap.put("res", 200);
//			studentMap.put("stud_info", stud2);
//			return ResponseEntity.ok(studentMap);
//		}
//		
//	}
//
//	@PostMapping("/saveStudEdu")
//	@ResponseBody
//	@ResponseStatus
//
//	public ResponseEntity<Object> saveStudEdu(@ModelAttribute StudentPast studentPast,
//			@RequestParam("enroll_no") String enroll,@RequestParam("curr_year") String curr_year,boolean acc_verified) {
//		HashMap<String, Object> studentMap = new HashMap<String, Object>();
//		StudentPast stu = studentService.getStudentPast(studentPast.getStudent_id(), studentPast.getCategory());
//		Student student = studentService.getStudent(studentPast.getStudent_id());
//		User user = userService.getUser(studentPast.getStudent_id());
//		System.out.println(">>>>>>>>>>>>"+studentPast.getCategory()+" "+studentPast.getStudent_id());
//		if(stu.getCategory()!=null && stu.getStudent_id()!=null){
//			StudentPast studentPast1 = studentService.getStudentPast(studentPast.getStudent_id(),studentPast.getCategory());
//			System.out.println(">>>>>>>>>>>>>"+studentPast1);
//			if(studentPast1.getCategory().equals("I") || studentPast1.getCategory().equals("J")
//					||studentPast1.getCategory().equals("P")||studentPast1.getCategory().equals("T")
//					||studentPast1.getCategory().equals("W") || studentPast1.getCategory().equals("SSC")
//					|| studentPast1.getCategory().equals("HSC")){
//				studentService.updateStudentPast(stu);
//			}else{
//				if(acc_verified){
//					
//				}else{
//					student.setStudentPast(studentPast1);
//					student.setCurr_enroll_no(enroll);
//					student.setCurr_year(curr_year);
//				
//					stu.setUpdation_date(new Date());
//					studentService.updateStudentPast(stu);
//					user.setInstitute_id(studentPast.getOrganization());
//					userService.updateUser(user, true);
//					studentService.updateStudent(student);
//				}
//			}
//			studentMap.put("msg", "update success");
//			studentMap.put("res", 200);
//			return ResponseEntity.ok(studentMap);
//			
//		}if (studentPast.getStud_past_id() > 0) {
//			studentPast.setUpdation_date(new Date());
//			studentService.updateStudentPast(studentPast);
//			studentMap.put("msg", "update success");
//			studentMap.put("res", 200);
//			return ResponseEntity.ok(studentMap);
//
//		} /*else if(){
//			studentPast.setCreation_date(new Date());
//			//Student student = studentService.getStudent(studentPast.getStudent_id());
//			student.setCurr_enroll_no(enroll);
//			student.setCurr_year(curr_year);
//			String college = collegeService.getCollegeName(studentPast.getOrganization());
//			System.out.println(">>>>>>>>>>>> "+college);
//			User user1 = userService.getUser(studentPast.getStudent_id());
//			user.setInstitute_id(studentPast.getOrganization());
//			userService.updateUser(user1, true);
//			
//			studentPast.setOrganization(college);
//			studentService.saveStudentPast(studentPast);
//			StudentPast studentPast1 = studentService.getStudentPast(studentPast.getStudent_id(),studentPast.getCategory());
//			student.setStudentPast(studentPast1);
//			studentService.updateStudent(student);
//			studentMap.put("msg", "success");
//			studentMap.put("res", 200);
//			return ResponseEntity.ok(studentMap);
//		}*/else{
//			studentPast.setCreation_date(new Date());
//			String college = collegeService.getCollegeName(studentPast.getOrganization());
//			studentPast.setOrganization(college);
//			studentService.saveStudentPast(studentPast);
//			studentMap.put("msg", "success");
//			studentMap.put("res", 200);
//			String dept_id = studentService.getSpecificStudent(student.getStudent_id()).getStudentPast()
//					.getDepartment();
//			Notifications notif = new Notifications();
//			notif.setFrom_user(user.getUser_id());
//			notif.setUser_id(user.getInstitute_id());
//			notif.setNotif_code(NotificationConstants.notif_code_new_std_admission_req);
//			notif.setCategory(NotificationConstants.notif_category_clg_admission_req);
//			notif.setDept_id(dept_id);
//			notificationsService.crNotifForDept(notif, null);
//			commonUtil.SendSms(
//					"Thank You For Registering At Our Portal.. Please Wait till Approval From Your Releted Department",
//					student.getContact());
//			
//			return ResponseEntity.ok(studentMap);
//		}
//		
//	}
//	
//	@PostMapping("/getStudentInfo")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getStudentInfo(@RequestParam("student_id") String student_id){
//		Student student = studentService.getStudent(student_id);
//		User user = userService.getUser(student_id);
//		HashMap<String, Object> studentMap = new HashMap<String, Object>();
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//		if(student!=null){
//			studentMap.put("gender", user.getGender());
//			studentMap.put("d_o_b", dateFormat.format(student.getD_o_b()));
//			studentMap.put("res", 200);
//			studentMap.put("acc_verified", user.isAcc_verified());
//			studentMap.put("msg", "Record Found");
//			studentMap.put("Student_Data", student);
//			return ResponseEntity.ok(studentMap);
//		}
//		studentMap.put("res", 400);
//		studentMap.put("msg", "Record Not Found");
//		return ResponseEntity.ok(studentMap);
//	}
//	
//	@PostMapping("/getInternshipData")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getInternshipData(@RequestParam("student_id") String student_id){
//		List<Internships> list = internshipsService.getInternshipDataWithCompanyName(student_id);
//		
//		HashMap<String, Object> studentMap = new HashMap<String, Object>();
//		if(list!=null){
//			studentMap.put("msg", "success");
//			studentMap.put("res", 200);
//			studentMap.put("internship_data", list);
//			return ResponseEntity.ok(studentMap);
//		}
//		studentMap.put("msg", "Student Not Found");
//		studentMap.put("res", 400);
//		return ResponseEntity.ok(studentMap);
//		
//	}
//	
//	@PostMapping("getEduInfo")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getEduInfo(@RequestParam("student_id") String student_id,
//
//			@RequestParam("category") String category){
//		StudentPast student = studentService.getStudentPast(student_id, category);
//		HashMap<String, Object> studentMap = new HashMap<String, Object>();
//		if(student.getStudent_id()!=null){
//			
//			studentMap.put("msg", "Student Record Found");
//			studentMap.put("res_code", 200);
//			studentMap.put("Student Data", student);
//			return ResponseEntity.ok(studentMap);
//		}
//			studentMap.put("res_code", 400);
//			studentMap.put("msg", "Record Not Found");
//			return ResponseEntity.ok(studentMap);
//	}
//	
//	@PostMapping("/getAllEduData")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getAllEduInfo(@RequestParam("student_id") String student_id){
//		
//		List<StudentPast> eduList = studentService.getStudentPastEducation(student_id);
//		HashMap<String, Object> eduMap = new HashMap<String, Object>();
//		if(eduList!=null){
//			eduMap.put("msg", "Edu Record");
//			eduMap.put("res_code", 200);
//			eduMap.put("Edu Info", eduList);
//			return ResponseEntity.ok(eduMap);
//		}
//		eduMap.put("msg", "Record Not Found");
//		eduMap.put("res_code", 400);
//		return ResponseEntity.ok(eduMap);
//	}
//	
//	@PostMapping("/getProfessionalData")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getProfessionalData(@RequestParam("student_id") String student_id){
//
//		List<StudentPast> profList = studentService.getStudentsPastProfessions(student_id);
//		HashMap<String, Object> profMap = new HashMap<String, Object>();
//		
//		if(profList.isEmpty()){
//			profMap.put("msg", "Record Not Found");
//			profMap.put("res_code", 400);
//			return ResponseEntity.ok(profMap);
//		}
//		profMap.put("msg", "Record Found");
//		profMap.put("res_code", 200);
//		profMap.put("Professional Data", profList);
//		return ResponseEntity.ok(profMap);
//	}
//	
//	@PostMapping("/getRequestStatus")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getRequestStatus(@RequestParam("student_id") String student_id){
//		
//		List<StudentRequest> reqList = studentRequestService.getStudentRequests(student_id);
//		HashMap<String, Object> erReqMap = new HashMap<String, Object>();
//		if(reqList!=null){
//			return ResponseEntity.ok(reqList);
//		}
//		return ResponseEntity.ok("Not Found");
//	}
//	
//	@PostMapping("/getSchedule")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getSchedule(@RequestParam("adv_id") String adv_id){
//		
//		List<InternshipSchedule> schList = internshipScheduleService.advertisementScheduleStatus(adv_id);
//		HashMap<String, Object> schMap = new HashMap<String, Object>();
//		if(schList.isEmpty()){
//			schMap.put("msg", "No Schedule Found");
//			schMap.put("res",400);
//			return ResponseEntity.ok(schMap);
//		}
//		schMap.put("msg", "schedule Found");
//		schMap.put("res","200");
//		schMap.put("ScheduleList", schList);
//		 return ResponseEntity.ok(schMap);
//	}
//	
//	
//	@PostMapping("/getApplyStatus")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getApplyStatus(@RequestParam("student_id") String student_id,
//			@RequestParam("adv_id") String adv_id){
//		StudentRequest stuReq = studentRequestService.getStudentReqAgainstAdvt(student_id, adv_id);
//		//List<StudentRequest> sr = studentRequestService.getStatus(student_id);
//		HashMap<String, Object> stuReqMap = new HashMap<String, Object>();
//		if(stuReqMap!=null){
//			String company = companyservice.getCompanyName(stuReq.getCompany_id());
//			if(stuReq.getApproval_status().equals("P")){
//				stuReq.setApproval_status("Company approval pending");
//			}else if(stuReq.getApproval_status().equals("2")){
//				stuReq.setApproval_status("HOD approval pending");
//			}else if(stuReq.getApproval_status().equals("1")){
//				stuReq.setApproval_status("T&P approval pending");
//			}else if(stuReq.getApproval_status().equals("R")){
//				stuReq.setApproval_status("Internship Rejected");
//			}else if(stuReq.getApproval_status().equals("A")){
//				stuReq.setApproval_status("Request Approved");
//			}else if(stuReq.getApproval_status().equals("S")){
//				stuReq.setApproval_status("Team Assigned");
//			}else if(stuReq.getApproval_status().equals("T")){
//				stuReq.setApproval_status("Test Assigned");
//			}
//			stuReq.setCompany_id(company);
//			stuReqMap.put("msg", "Record Found");
//			stuReqMap.put("res", 200);
//			stuReqMap.put("Request_status", stuReq);
//			return ResponseEntity.ok(stuReqMap);
//		}
//		stuReqMap.put("msg", "Not Found");
//		stuReqMap.put("res", 400);
//		return ResponseEntity.ok(stuReqMap);
//		
//	}
//	
//	@PostMapping("/applyInternship")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> applyInternship(@RequestParam("student_id") String student_id,
//
//			@RequestParam("adv_id") String adv_id){
//		Student student =studentService.getSpecificStudent(student_id);
//		CompAdvertisement comp_advertisements = companyAdvertiseDao.getCompAdv(adv_id);
//		
//		StudentRequest student_req = new StudentRequest();
//		String next_num=String.format("%010d", student_reqService.getNextStudentRequestId());
//		String request_id=ProjectConstants.student_request_id_initial+next_num;
//		student_req.setRequest_id(request_id);
//		student_req.setStudent_id(student_id);
//		student_req.setAdvertisement_id(comp_advertisements.getAdvertisement_id());
//		student_req.setCompany_id(comp_advertisements.getCompany_id());
//		student_req.setCreation_date(new Date());
//		student_req.setDuration(comp_advertisements.getDuration());
//		student_req.setApproval_status(ProjectConstants.student_req_approval_status_pending);
//		student_req.setTechnology(comp_advertisements.getTechnology_name());
//		student_req.setExpiration_date(userBeanService.getDateAfterDays(new Date(), ProjectConstants.req_expiration_after_days));
//		liveChatService.saveStudentRequest(student_req);
//		
//		//String request_id=student_reqService.apply_SaveIntern(comp_advertisements);
//		//Notification
//		String param[]=new String[3];
//		param[0]=request_id;
//		param[1]=student.getStudent_name();
//		param[2]=adv_id;
//		
//		Notifications notif=new Notifications();
//		notif.setFrom_user(student.getStudent_id());
//		notif.setUser_id(userService.getHRorIIIHead(comp_advertisements.getCompany_id()).getUser_id());
//		notif.setNotif_code(NotificationConstants.notif_code_std_req_received_throug_advt);
//		notif.setCategory(NotificationConstants.notif_category_clg_comp_stud_direct_req);
//		notificationsService.crNotifForUser(notif, param);
//		HashMap<String, Object> irApplyMap = new HashMap<String, Object>();
//		irApplyMap.put("msg", "Internship Applied Successfully");
//		irApplyMap.put("res", "200");
//		return ResponseEntity.ok(irApplyMap);
//	}
//	
//	
//	@PostMapping("/cancelInternship")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> cancelInternship(@RequestParam("internship_id")String internship_id,
//			@RequestParam("reason") String reason,@RequestParam("student_id") String student_id){
//		User user = userService.getUser(student_id);
//		Internships internship = internshipAndFeedbackService.getInternship(internship_id);
//		internship.setStatus(ProjectConstants.internships_status_cancelled);
//		internship.setUpdation_date(new Date());
//		internship.setReason(reason);
//		internshipAndFeedbackService.updateInternship(internship);
//		
//		//Notifications
//		Notifications notif = new Notifications();
//		notif.setNotif_code(NotificationConstants.notif_code_internship_cancelled);
//		notif.setCategory(NotificationConstants.notif_category_clg_comp_ongoing_internship);
//		notif.setFrom_user(student_id);
//		String param[] = new String[4];
//		param[0] = user.getUsername();
//		param[2] = "student";
//		param[3] = "\'"+reason+"\'";
//		
//		//For Comp
//		param[1] = "from institute - " + collegeService.getCollegeName(internship.getCollege_id());
//		//HR
//		notif.setUser_id(userService.getHRorIIIHead(internship.getCompany_id()).getUser_id());
//		notificationsService.crNotifForUser(notif, param);
//		
//		//Comp Team 
//		notif.setUser_id(internship.getCompany_id());
//		notif.setDept_id(internship.getComp_dept_id());
//		notificationsService.crNotifForDept(notif, param);
//		
//		//For Coll
//		param[1] = "in industry - " + companyservice.getCompanyName(internship.getCompany_id());
//		//III/T&P Head
//		notif.setUser_id(userService.getHRorIIIHead(internship.getCollege_id()).getUser_id());
//		notif.setDept_id(null);
//		notificationsService.crNotifForUser(notif, param);
//		
//		//Coll Dept
//		notif.setUser_id(internship.getCollege_id());
//		notif.setDept_id("" + internship.getColl_dept());
//		notificationsService.crNotifForDept(notif, param);
//		HashMap<String, Object> irMap = new HashMap<String, Object>();
//		irMap.put("msg", "Internship Cancelled Successfully");
//		irMap.put("res", "200");
//		return ResponseEntity.ok(irMap);
//	}
//	
//	@PostMapping("/getFeedback")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getfeed(@RequestParam("internship_id") String internship_id) {
//		Internships internship = internshipsService.getInternship(internship_id);
//		ProgressData progressData = internshipAndFeedbackService.getProgressData(internship_id);
//		
//		HashMap<String, Object> response = new HashMap<>();
//		
//		ArrayList<String> feedlist = new ArrayList<>();
//		if (progressData!=null) {
//			long noOfDaysBetween = getDifferenceDays(internship.getDate_started(), new Date());
//			//long feedWeek = noOfDaysBetween / 7;
//			String p1 = progressData.getParameter_1();
//			String para1[] = p1.split(",");
//			String p2 = progressData.getParameter_2();
//			String para2[] = p2.split(",");
//			String p3 = progressData.getParameter_3();
//			String para3[] = p3.split(",");
//			String p4 = progressData.getParameter_4();
//			String para4[] = p4.split(",");
//			String p5 = progressData.getParameter_5();
//			String para5[] = p5.split(",");
//			String p6 = progressData.getParameter_6();
//			String para6[] = p6.split(",");
//			String p7 = progressData.getParameter_7();
//			String para7[] = p7.split(",");
//			String p8 = progressData.getParameter_8();
//			String para8[] = p8.split(",");
//			String avg = progressData.getOverall();
//			String overall[] = avg.split(",");
//			for (int i = 0; i < para1.length; i++) {
//				String feed = para1[i].split("-")[1] + "-" + para2[i].split("-")[1] + "-" + para3[i].split("-")[1] + "-"
//						+ para4[i].split("-")[1] + "-" + para5[i].split("-")[1] + "-" + para6[i].split("-")[1] + "-"
//						+ para7[i].split("-")[1] + "-" + para8[i].split("-")[1] + "-" + overall[i].split("-")[1];
//				feedlist.add(feed);
//			response.put("avg", avg);
//		}
//			
//		response.put("comment", progressData.getComments());
//		response.put("msg", "Feedback Found");
//		response.put("res", "200");
//		response.put("feedback", feedlist);
//		//response.put("feedWeed", feedWeek)
//		return ResponseEntity.ok(response);
//		} 
//		response.put("msg", "no feedback for this internship");
//		response.put("res", 400);
//		return ResponseEntity.ok(response);
//	}
//	public static long getDifferenceDays(Date d1, Date d2) {
//		long diff = d2.getTime() - d1.getTime();
//		return TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
//	}
//	
//	@PostMapping("/saveChatting")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> saveChatting(
//			@RequestParam("sender_id") String sender_id,
//			@RequestParam("receiver_id") String receiver_id,
//			@RequestParam("message") String message){
//		HashMap<String, Object> chatMap = new HashMap<String, Object>();
//		Date today = new Date();
//		SimpleDateFormat formatter = new SimpleDateFormat("MMM.dd 'AT' hh:mm a");  
//		String timestamp = formatter.format(today);  
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "+timestamp);
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "+sender_id);
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "+message);
//		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> "+receiver_id);
//		
//		LiveChat chat = new LiveChat();
//		chat.setMessage(message);
//		chat.setSender_id(sender_id);
//		chat.setReceiver_id(receiver_id);
//		chat.setTimestamp(timestamp);
//		liveChatService.addChat(chat);
//		
//		chatMap.put("msg", "message saved");
//		chatMap.put("res", 400);
//		return ResponseEntity.ok(chatMap);
//	}
//	
//	@PostMapping("/getHodList")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getHodList(@RequestParam("student_id") String student_id){
//		User usr = userService.getUser(student_id);
//		HashMap<String, Object> hodMap = new HashMap<String, Object>();
//		
//		if (usr != null) {
//			Student student = studentService.getSpecificStudent(student_id);
//			int dept = Integer.parseInt(student.getStudentPast().getDepartment());
//			CollDeptLink cdl = collegeService.getHeadId(usr.getInstitute_id(), dept);
//			List<User> u = userService.getHod(cdl.getHead_id());
//			hodMap.put("msg", "Record Found");
//			hodMap.put("res", 200);
//			hodMap.put("Hod_list", u);
//			return ResponseEntity.ok(hodMap);
//		}
//		hodMap.put("msg", "No Hod Found");
//		hodMap.put("res", 400);
//		return ResponseEntity.ok(hodMap);
//	}
//	
//	@PostMapping("/getChatting")
//	@ResponseStatus
//	@ResponseBody
//	public ResponseEntity<Object> getChatting(
//			@RequestParam("sender_id") String sender_id,
//			@RequestParam("receiver_id") String receiver_id){
//		List<LiveChat> chatlist = liveChatService.getAllChat(sender_id,receiver_id);
//		HashMap<String, Object> chatMap = new HashMap<String, Object>();
//		System.out.println("Chatting List is = "+chatlist.toString());
//		if(!chatlist.isEmpty()){
//			chatMap.put("msg", "Record Found");
//			chatMap.put("res", 200);
//			chatMap.put("chat_list", chatlist);
//			return ResponseEntity.ok(chatMap);
//		}
//		chatMap.put("msg", "No Chatting Found");
//		chatMap.put("res", 400);
//		return ResponseEntity.ok(chatMap);
//	}
//	
//	
//	@PostMapping("/getHRList")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getHRList(@RequestParam("student_id") String student_id){
//		List<Internships> i = internshipService.getCompanyHr(student_id);
//		HashMap<String, Object> hrMap = new HashMap<String, Object>();
//		if (!i.isEmpty()) {
//				List<User> hr = userService.getHR(i.toString().replaceAll("[ ](?=[ ])|[^-_,A-Za-z0-9 ]",""));
//				hrMap.put("msg", "Record Found");
//				hrMap.put("res", 200);
//				hrMap.put("Hod_list", hr);
//			return ResponseEntity.ok(hrMap);
//		}
//		hrMap.put("msg", "No HR Found");
//		hrMap.put("res", 400);
//		return ResponseEntity.ok(hrMap);
//	}
//	
//	@PostMapping("/getDeptIncharge")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getDeptIncharge(@RequestParam("student_id") String student_id){
//		User usr = userService.getUser(student_id);
//		
//		HashMap<String, Object> deptIncMap = new HashMap<String, Object>();
//		if(usr!=null){
//			Student student = studentService.getSpecificStudent(student_id);
//			int dept = Integer.parseInt(student.getStudentPast().getDepartment());
//			CollDeptLink cdl = collegeService.getHeadId(usr.getInstitute_id(), dept);
//			List<User> deptIncharge = userService.getIncharge(cdl.getIii_dept_co_id());
//			if(!deptIncharge.isEmpty()){
//				deptIncMap.put("msg", "Record Found");
//				deptIncMap.put("res", 200);
//				deptIncMap.put("dept_inch", deptIncharge);
//				return ResponseEntity.ok(deptIncMap);
//			}
//		}
//		deptIncMap.put("msg", "No Dept Incharge Found");
//		deptIncMap.put("res", 400);
//		return ResponseEntity.ok(deptIncMap);
//	}
//	
//	@PostMapping("/getTPO")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getTPO(@RequestParam("student_id") String student_id){
//		User usr = userService.getUser(student_id);
//		HashMap<String, Object> tpoMap = new HashMap<String, Object>();
//		if(usr!=null){
//			List<User> tpo = userService.getHRorTpo(usr.getInstitute_id());
//			
//			if(!tpo.isEmpty()){
//				tpoMap.put("msg", "Record Found");
//				tpoMap.put("res", 200);
//				tpoMap.put("TPOS", tpo);
//				return ResponseEntity.ok(tpoMap);
//			}
//		}
//		tpoMap.put("msg", "No TPO Found");
//		tpoMap.put("res", 400);
//		return ResponseEntity.ok(tpoMap);
//	}
//	
//	@PostMapping("/getCompManager")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getCompManager(@RequestParam("student_id") String student_id){
//		HashMap<String, Object> compManMap = new HashMap<String, Object>();
//		List<Internships> ir = internshipsService.getCompanies(student_id);
//		if(!ir.isEmpty()){
//			for(Internships i : ir){
//				System.out.println(">>>>>>>>>>>> "+i.getCompany_id()+" "+i.getColl_dept());
//				CompDeptLink comp = compDeptLinkService.getAllCompManager(i.getCompany_id(), i.getComp_dept_id());
//				List<User> u4 = userService.getManager(comp.getManager_id());
//				compManMap.put("msg", "Record Found");
//				compManMap.put("res", 200);
//				compManMap.put("comp_manager", u4);
//			}	
//			return ResponseEntity.ok(compManMap);
//		}
//		compManMap.put("msg", "No Manager Found");
//		compManMap.put("res", 400);
//		return ResponseEntity.ok(compManMap);
//	} 
//	
//	
//	@PostMapping("/saveStuFeedback")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> saveFeedBack(@RequestParam("internship_id") String int_id,
//			@RequestParam("feedback_data") String feedback_data,@RequestParam("student_id") String student_id){
//		HashMap<String, Object> feedbackMap = new HashMap<String, Object>();
//		String feedbacks[]=feedback_data.split(",");
//		Internships internship=internshipsService.getInternship(int_id);
//		FeedbackData feedbackData=new FeedbackData();
//		String fdId=String.format("%010d", internshipAndFeedbackService.getNextFeedbackDataId());
//		feedbackData.setFeedback_id(ProjectConstants.feedback_data_id_initial+fdId);
//		feedbackData.setInternship_id(int_id);
//		feedbackData.setParameter_1(feedbacks[0]);
//		feedbackData.setParameter_2(feedbacks[1]);
//		feedbackData.setParameter_3(feedbacks[2]);
//		feedbackData.setParameter_4(feedbacks[3]);
//		feedbackData.setParameter_5(feedbacks[4]);
//		feedbackData.setParameter_6(feedbacks[5]);
//		feedbackData.setParameter_7(feedbacks[6]);
//		feedbackData.setParameter_8(feedbacks[7]);
//		
//		Notifications notif=new Notifications();
//		notif.setFrom_user(student_id);
//		notif.setCategory(NotificationConstants.notif_category_clg_comp_completed_internship);
//		Student stud = studentService.getStudent(internship.getStudent_id());
//		System.out.println("Contact Number = " +stud.getContact());
//		commonUtil.SendSms("Thank You!!!!! Your Internship Has Been Completed Succesfully.. login into your Account And Download Your Certificate from herer : https://www.SkillPilots.com", stud.getContact());
//		feedbackData.setFeedback_from(internship.getStudent_id());//if logged in user is student then set feedback from student
//			//notif to company team
//		String param[]=new String[2];
//		param[0]=userService.getUserName(internship.getStudent_id());
//		param[1]=""+internship.getDate_completed();
//		notif.setUser_id(internship.getCompany_id());
//		notif.setDept_id(internship.getComp_dept_id());
//		notif.setNotif_code(NotificationConstants.notif_code_cmp_feedbk_rec_frm_std);
//		notificationsService.crNotifForDept(notif, param);
//		
//		feedbackData.setFeedback_for(internship.getCompany_id());
//		feedbackData.setCreation_date(new Date());
//		internshipAndFeedbackService.saveFeedback(feedbackData);
//		feedbackMap.put("msg", "Feedback Saved");
//		feedbackMap.put("res", 200);
//		return ResponseEntity.ok(feedbackMap);
//	}
//	
//	@PostMapping("/getStudentFeedbckStatus")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> getStudentFeedbckStatus(
//			@RequestParam("student_id") String student_id,
//			@RequestParam("internship_id") String internship_id){
//		FeedbackData fd = internshipAndFeedbackService.getFeedbackData(internship_id, student_id);
//		HashMap<String, Object> fdMap = new HashMap<String, Object>();
//		if(fd!= null){
//			fdMap.put("msg", "Feedback Found");
//			fdMap.put("res", 200);
//			fdMap.put("feedback_data", fd);
//			return ResponseEntity.ok(fdMap);
//		}
//		fdMap.put("msg", "No FeedBack Given Yet");
//		fdMap.put("res", 400);
//		return ResponseEntity.ok(fdMap);
//	}
//	
//	
//	@PostMapping("/getReqStatus")
//	@ResponseBody
//	@ResponseStatus
//	
//	public ResponseEntity<Object> getReqStatus(@RequestParam("student_id") String student_id){
//		List<StudentRequest> sr = studentRequestService.getStatus(student_id);
//		HashMap<String, Object> stuReqMap = new HashMap<String, Object>();
//		if(!sr.isEmpty()){
//			stuReqMap.put("msg", "Record Found");
//			stuReqMap.put("res", 200);
//			stuReqMap.put("Request_status", sr);
//			return ResponseEntity.ok(stuReqMap);
//		}
//		stuReqMap.put("msg", "Not Found");
//		stuReqMap.put("res", 400);
//		return ResponseEntity.ok(stuReqMap);
//		
//	}
//	
//	@PostMapping("/saveStudentEduFromProfile")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> saveStudentEducation(@ModelAttribute StudentPast studentPast,
//			@RequestParam("student_id") String student_id,
//			@RequestParam(value="stud_past_id",required=false) String stud_past_id,
//			@RequestParam(value="organization",required=false) String orgnization,
//			@RequestParam(value="board",required=false) String board,
//			@RequestParam(value="end_date",required=false) String yop,
//			@RequestParam(value="description",required=false) String description,
//			@RequestParam(value="department",required=false) String stream,
//			@RequestParam(value="category",required=false) String category){
//		HashMap<String, Object> stuMap = new HashMap<String, Object>();
//		if(null!=stud_past_id){
//			studentPast.setUpdation_date(new Date());
//			studentService.updateStudentPast(studentPast);
//			stuMap.put("msg", "update success");
//			stuMap.put("res", 200);
//			return ResponseEntity.ok(stuMap);
//		}else{
//			studentPast.setCreation_date(new Date());
//			studentService.saveStudentPast(studentPast);
//			stuMap.put("msg", "Success");
//			stuMap.put("res", 200);
//			return ResponseEntity.ok(stuMap);
//		}
//	}
//	
//	
//	@PostMapping("/saveProfessionalData")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> saveProfessionalInfo(@ModelAttribute StudentPast studentPast,
//			@RequestParam("student_id") String student_id,
//			@RequestParam(value="stud_past_id",required=false) String stud_past_id,
//			@RequestParam(value="category",required=false) String category,
//			@RequestParam(value="organization",required=false) String orgnization,
//			@RequestParam(value="profile",required=false) String profile,
//			@RequestParam(value="description",required=false) String description,
//			@RequestParam(value="department",required=false) String skills,
//			@RequestParam(value="location",required=false) String location,
//			@RequestParam(value="link",required=false) String link,
//			@RequestParam(value="start_date",required=false) String start_date,
//			@RequestParam(value="end_date",required=false) String end_date){
//		HashMap<String, Object> stuMap = new HashMap<String, Object>();
//		if(stud_past_id!=null){
//			studentPast.setUpdation_date(new Date());
//			studentService.updateStudentPast(studentPast);
//			stuMap.put("msg", "update success");
//			stuMap.put("res", 200);
//			return ResponseEntity.ok(stuMap);
//			
//		}else{
//			studentPast.setCreation_date(new Date());
//			studentService.saveStudentPast(studentPast);
//			stuMap.put("msg", "Success");
//			stuMap.put("res", 200);
//			return ResponseEntity.ok(stuMap);
//		}
//	}
//	
//	@PostMapping("/deleteStudentPastData")
//	@ResponseBody
//	@ResponseStatus
//	   public ResponseEntity<Object> deleteStudentPast(
//			   @RequestParam("stud_past_id")long past_id){
//		HashMap<String, Object> stuMap = new HashMap<String, Object>();
//		 studentService.removeStudentPast(past_id);
//		 stuMap.put("msg", "deleted successfully");
//		 stuMap.put("res", 200);
//		 return ResponseEntity.ok(stuMap);
//	  }
//	
//	@PostMapping("/editStuProfile")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> editStuProfile(@ModelAttribute Student student,
//			@RequestParam(value="profile_photo",required=false) MultipartFile profile_photo,
//			@RequestParam(value="student_name",required=false) String name,
//			@RequestParam(value="student_id",required=false) String student_id,
//			@RequestParam(value="gender",required=false) String gender,
//			@RequestParam(value="curr_city",required=false) String curr_city,
//			@RequestParam(value="home_city",required=false) String home_city,
//			@RequestParam(value="skills",required=false) String skills,
//			@RequestParam(value="interest",required=false) String interest,
//			@RequestParam(value="hobbies",required=false) String hobbies,
//			@RequestParam(value="interest",required=false) String achievements
//			){
//		HashMap<String, Object> stuMap = new HashMap<String, Object>();
//		byte[] logo = null;
//		try {
//			logo = profile_photo.getBytes();
//		} catch (IOException e1) {
//			e1.printStackTrace();
//		}
//		User user = userService.getUser(student_id);
//		
//		user.setUsername(name);
//		user.setGender(gender);
//		user.setUpdation_date(new Date());
//		userService.updateUser(user,true);//update session
//		System.out.println(">>>>>>>>>>>>>>>>>>");
//		Student targetStudent = studentService.getSpecificStudent(student_id);
//		BeanCopyUtil.copyNonNullProperties(student, targetStudent);
//		if (logo.length > 0) {
//			targetStudent.setPhoto(logo);
//		}
//		studentService.updateStudent(targetStudent);
//		stuMap.put("msg", "update Success");
//		stuMap.put("res", 200);
//		return ResponseEntity.ok(stuMap);
//	}
//	
//	@PostMapping("/savedStudInternships")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> saveInternship(@RequestParam("stud_id") String studId,
//			@RequestParam("adv_id") String advId){
//		HashMap<String, Object> response = new HashMap<>();
//		SavedInternships si = new SavedInternships();
//		si.setAdvertisement_id(advId);
//		si.setStud_id(studId);
//		savedInternshipService.saveInternshipss(si);
//		response.put("msg", "saved");
//		response.put("res_code", "200");
//		return new ResponseEntity<Object>(response, HttpStatus.OK);
//	}
//	
//	@PostMapping("/getSavedInternships")
//	@ResponseBody
//	@ResponseStatus
//	public ResponseEntity<Object> GetAllSavedInternships(
//			@RequestParam(value="page_no",required=false,defaultValue="0") int pageno,
//			@RequestParam(value= "limit",required=false,defaultValue="10") int limit
//			,@RequestParam("stud_id") String studId){
//		String count = savedInternshipService.getIntCount(studId);
//		int cout = Integer.valueOf(count);
//		double pge = Integer.valueOf(limit);
//		double countPage = (Math.ceil(cout/pge));
//		HashMap<String, Object> response = new HashMap<>();
//		List<SavedInternships> list = savedInternshipService.getAllSavedInternship(studId,pageno,limit);
//		if(list.isEmpty()) {
//			response.put("msg", "no_data_found");
//			response.put("res_code", "300");
//		}else {
//			response.put("msg", "data_found");
//			response.put("res_code", "200");
//			response.put("total", cout);
//			response.put("tot_page", String.format("%.0f", countPage));
//			response.put("savedList", list);
//		}
//		return new ResponseEntity<Object>(response, HttpStatus.OK);
//	}
//	
//	@PostMapping("/deleteSavedIntp")
//	public ResponseEntity<Object> RemoveSaveInt(@RequestParam("stud_id") String studId,
//			@RequestParam("adv_id") String advId){
//		HashMap<String, Object> response = new HashMap<>();
//		SavedInternships si = new SavedInternships();
//		si.setStud_id(studId);
//		si.setAdvertisement_id(advId);
//		savedInternshipService.removeIntp(si);
//		response.put("msg", "removed");
//		response.put("res_code", "200");
//		return new ResponseEntity<Object>(response, HttpStatus.OK);
//	}
//	
//	@PostMapping("studTestHist/{stud_id}")
//	public ResponseEntity<Object> TestHist(@PathVariable String stud_id){
//		HashMap<String, Object> response = new HashMap<>();
//		List<Object[]> testHistory = studentTestDataService.getTestHistory(stud_id);
//		if(testHistory.isEmpty()) {
//			response.put("msg", "history_not_found");
//			response.put("res_code", "400");
//		}else {
//			response.put("msg", "history_found");
//			response.put("res_code", "200");
//			response.put("history", testHistory);
//		}
//		
//		return new ResponseEntity<Object>(response, HttpStatus.OK);
//		
//	}
//}
