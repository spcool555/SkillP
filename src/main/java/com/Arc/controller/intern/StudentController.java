package com.Arc.controller.intern;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.Arc.model.CompAdvertisement;
import com.Arc.model.Student;
import com.Arc.model.StudentPast;
import com.Arc.model.User;
import com.Arc.service.ComponyService;
import com.Arc.service.StudentService;
import com.Arc.service.UserService;
import com.mysql.cj.Session;

import jakarta.servlet.http.HttpSession;


//public class StudentController extends BeanCopyUtil{   sk
@Controller
public class StudentController {

	@Autowired
	private UserService userService;
	@Autowired
	private ComponyService componyService;
	@Autowired
	private StudentService studentService;

	/*student dashboard*/
	@GetMapping("/stud_home")
	public String studentHome(HttpSession session,Model model) {
		User user = (User) session.getAttribute("user");
		 

		if (user != null) {
	        // Your logic for the student home page
			List<CompAdvertisement> adv = userService.findAllAdv();
			List<CompAdvertisement> allCities = componyService.getAllCities();
			System.out.print(adv);
			  model.addAttribute("adv", adv);
	        model.addAttribute("user", user);
	        model.addAttribute("cities", allCities);
	        return "student_home";
	    } else {
	        // Handle the case where the user is not in the session (e.g., redirect to login)
	        return "redirect:/login";
	    }
			
		
	}
/* sk
	@RequestMapping("nxtpage")
	public String getPageByPageAdvertisement(@RequestParam String location[], String department[], String technology[],
			String paid_type, String duration[], Model model) {
		List<Object> advlist = new ArrayList<>();
		String city_builder = userBeanService.buildInQueryFromArray(location, "location", "and");
		String tech_builder = userBeanService.buildInQueryFromArray(technology, "technology_name", "and");
		String dept_builder = userBeanService.buildLikeQueryFromArray(department, "requirement", "and");
		String pay_builder = paid_type.length() > 0 ? paid_type.equals("0") ? " stipend = 0 and " : " stipend > 0 and " : "";
		String duration_builder = duration.length > 0 ? " duration " + duration[0] + duration[1] + " and " : "";
		List<CompAdvertisement> advertisements = companyAdvertiseDao.getAdvertisement(duration_builder + dept_builder + pay_builder + city_builder + tech_builder);
		// search by page no
		if (location.length == 0 && department.length == 0 && technology.length == 0
				&& !paid_type.equals("1") && !paid_type.equals("0") && duration.length == 0) {
			advlist.add(advertisements);
			return advlist;
		} else {
			if (location.length == 0 && department.length == 0 && technology.length == 0 && !paid_type.equals("1")
					&& !paid_type.equals("0") && duration.length == 0) {
				advlist.add(advertisements);
				return advlist;
			} else {
				advlist.add(advertisements);
				return advlist;
			}
		}
	}
	*/
	@RequestMapping("/appliedCompanies")
	public String internships(Model model) {
		
			return "appliedToCompanyFromStudent";
		

	}
	
	/*  sk
	@RequestMapping(value = "/getStudentData", method = RequestMethod.GET)
	public @ResponseBody HashMap<String,Object> getStudentData(@RequestParam String student_id) {
		System.out.println("Student Id:-" + student_id);
		Student student = studentService.getSpecificStudent(student_id);
		List<StudentPast> educationalDetails=studentService.getStudentPastEducation(student_id);
		//replace dept_id with name
		List<Department> departments = departmentService.getAllDeprtment();
		HashMap<String,String> dept = new HashMap<>();
		departments.forEach(d -> dept.put(""+d.getDept_id(), d.getDept_name()));
		dept.put("ARTS","Arts");
		dept.put("SCIENCE","Science");
		dept.put("COMMERCE","Commerce");
		educationalDetails.forEach(past -> {if(dept.containsKey(past.getDepartment())) past.setDepartment(dept.get(past.getDepartment()));});
		//sort qualification order
		List<String> orderList=Arrays.asList(ProjectConstants.qualificationOrder);
		Collections.sort(educationalDetails,(s1,s2)->Integer.valueOf(orderList.indexOf(s1.getCategory())).compareTo(Integer.valueOf(orderList.indexOf(s2.getCategory()))));
		List<StudentPast> studPastProfessions=studentService.getStudentsPastProfessions(student_id);
		HashMap<String, Object> dataMap=new HashMap<>();
		dataMap.put("student", student);
		dataMap.put("educationalDetails", educationalDetails);
		dataMap.put("studPastProfessions",studPastProfessions);
		return dataMap;
	}
*/
	@RequestMapping("/student_list")
	public String studentList() {
		
			return "student_list";
		
	}

	// approve student
	@SuppressWarnings("unused")
	@RequestMapping(value = "stud_a_r", method = RequestMethod.GET)
	public @ResponseBody String studentApprove_Reject(@RequestParam String student_id,
			@RequestParam String click_type) {
		
			return "sucess";
	
	}

	// reject student
	@SuppressWarnings("unused")
	@RequestMapping(value = "studentrejection", method = RequestMethod.GET)
	public @ResponseBody String student_Reject(@RequestParam String student_id, @RequestParam String reject_msg,
			@RequestParam String click_type) {
		
			return "sucess";
			
		
	}

	// getAllStudent
	@RequestMapping(value = "/getAllstudent", method = RequestMethod.GET)
	public @ResponseBody List<?> getAllStudent() {
		
		return null;
	}

	@RequestMapping(value = "/editStudentProfile", method = RequestMethod.GET)
	public String editProfile(Model model, HttpSession session) throws Exception {
		  User user = (User) session.getAttribute("user");
		  if (user != null && user.getId() != null) {
			    List<StudentPast> studentPast = studentService.findAllByStudentId(user.getId());
			    model.addAttribute("studentPast", studentPast);
			
			    // further processing
			} else {
			    // Handle error scenariop
				System.out.println("not work");
			}
		   
		
		   
		    if (user == null) {
		       
		        return "redirect:/login";
		    }
		Long user_id = user.getId();
		
		Student studentById = studentService.getStudentById(user_id);
		model.addAttribute("student", studentById);
		
		
		
		return "changeStudentProfile";
	}
	// getStudentPastProfessions
	@RequestMapping(value = "/getStudentPastProfessions", method = RequestMethod.GET)
	public @ResponseBody List<?> getStudentPastProfessions() {

		return null;
	}

	@RequestMapping(value = "/editStudentProfile", method = RequestMethod.POST)
	public String editStudentProfile(@ModelAttribute Student student, HttpSession session) {
	    User user = (User) session.getAttribute("user");
	   
	    System.out.println(user);
	   
	    if (user == null) {
	       
	        return "redirect:/login";
	    }
	   
	    Long userId = user.getId();
	    student.setStudent_id(userId);
	   
	   
	    student.setEmail_id(user.getEmail());
	   
	
	    studentService.saveStudent(student);
	  
	    return "redirect:/stud_home";
	}






	//UPLOAD AND DOWNLOAD SECTION FOR NEW ADMISSION
	/*    sk
	public void registerExcel(HttpServletResponse response,
			@PathVariable("fileName") String fileName) throws IOException, ServletException {

		String downloadExcel = context.getRealPath(ProjectConstants.download_excel_directory);
		Path file = Paths.get(downloadExcel, fileName);
		if (Files.exists(file)) {
			OutputStream out = response.getOutputStream();
			response.setContentType("application/xls");
			response.addHeader("Content-Disposition", "attachment; filename=" + fileName);
			try {
				Files.copy(file, response.getOutputStream());
			}catch (IOException e) {
				System.out.println("Error :- " + e.getMessage());
			}
			out.flush();
			out.close();
		} else {
			System.out.println("Sorry File not found!!!!");
		}
	}

	@RequestMapping(value="/uploadregistrationXL", method = RequestMethod.POST)
	public String excelReg(HttpServletRequest request, @RequestParam CommonsMultipartFile[] fileUpload ){

		User user = (User) session.getAttribute("user_data");
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				if (fileUpload != null && fileUpload.length > 0) {
			
					BodyPart txt = new MimeBodyPart() ,img = new MimeBodyPart();
			
					try {
						;
						img.setHeader("Content-ID", "<image>");
					} catch (MessagingException e1) {
						e1.printStackTrace();
					}
			   
					
					for (CommonsMultipartFile aFile : fileUpload){
						if (!aFile.getOriginalFilename().equals("")) {
							SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddhhmmss");
							String ext = aFile.getOriginalFilename().substring(aFile.getOriginalFilename().lastIndexOf("."));
							
							String filename=ProjectConstants.uploadDirectory+user.getUser_id() + "_" + sdf.format(new Date()) + ext;
							try {
								aFile.transferTo(new File(filename));
								CollDeptLink cdLink=collegeService.getDepartmentLink(user.getUser_id());
								Department dept=departmentService.getDepartment(cdLink.getDept_id());
								Workbook wb = null;
							
								FileInputStream fis = new FileInputStream(new File(filename));
								wb = WorkbookFactory.create(fis);
								Sheet sheet = wb.getSheetAt(0);
								Iterator<Row> rowIterator = sheet.iterator();
								rowIterator.next();
								System.out.println(ProjectConstants.uploadDirectory);
								StringBuilder existEmail=new StringBuilder();
								int total_rows=0,no_of_students_registered=0;
								while(rowIterator.hasNext())
								{
									Row row = rowIterator.next();
									if(row!=null){
										String emailid =row.getCell(0).getStringCellValue();
										if(emailid!=null && emailid.trim()!="" && emailid.length()>4){
											total_rows+=1;
											if(userService.emailExist(emailid)){
												existEmail.append(emailid+",");
											}else{
								
											String name =row.getCell(1).getStringCellValue();
											Long contact=(long) row.getCell(2).getNumericCellValue();
											String enrollNo=row.getCell(3).getStringCellValue();
											Date dob=row.getCell(4).getDateCellValue();
											int currentYr=(int) row.getCell(5).getNumericCellValue();
											double percentage=row.getCell(6).getNumericCellValue();
											String university=row.getCell(7).getStringCellValue();
											System.out.println(emailid+" - "+name+" - "+contact+" - "+enrollNo+" - "+dob+" - "+currentYr+" - "+percentage+" - "+university);
										
											User us=new User();
											us.setEmail_id(emailid);
											us.setUsername(name);
											us.setContact_no(contact);
										
											Random random = new Random();
											String password = emailid.substring(0, 4) + "" + random.nextInt(10000);
											password = password.replaceAll("\\s", "");
											System.out.println(us.getEmail_id()+""+password);
											us.setPsswrd_data(userBeanService.encryptWithMD5(password));
											
									
											String next_num=String.format("%010d", userService.getNextStudentId());
											us.setUser_id(ProjectConstants.user_initials_student+next_num);
											us.setTemp_pass(ProjectConstants.reg_user_temp_pass_yes);
											us.setInstitute_id(user.getInstitute_id());
											us.setEmail_verified(true);
											us.setMob_verified(false);
																				us.setAcc_verified(true);
											us.setCreation_date(new Date());
							
											String body = "<h1 style=\"font-size:55px;margin:20px;text-align:center\">Welcome to SkillPilots /></h1>"
									        		+ "<p style=\"text-align:center\"> Here is your temporary password - <strong>" + password + "</strong><br>"
													+ "You'll be asked to change your password for security reasons.<br></p>"
													+ ProjectConstants.mail_footer;
											
											txt.setContent(body, "text/html");
									        userBeanService.sendMimeMail("SkillPilots", emailid, "Registration Notification", txt, img);
									        
											userService.addUser(us);
											
										
											Student st=new Student();
											st.setEmail_id(emailid);
											st.setStudent_name(name);
											st.setContact(contact);
											st.setCurr_enroll_no(enrollNo);
											st.setD_o_b(dob);
											st.setCurr_year(""+currentYr);
											st.setStudent_id(us.getUser_id());
											st.setCreation_date(new Date());
											studentService.saveStudent(st);
											
											
											StudentPast stPast=new StudentPast();
											stPast.setDescription(""+percentage);
											stPast.setBoard(university);
											stPast.setStudent_id(st.getStudent_id());
											stPast.setCreation_date(new Date());
											stPast.setOrganization(collegeService.getCollegeName(user.getInstitute_id()));
											stPast.setDepartment(""+cdLink.getDept_id());
											stPast.setCategory(dept.getDept_type());
											
											Student stu=studentService.getSpecificStudent(st.getStudent_id());
											stu.setStudentPast(stPast);
											studentService.updateStudent(stu);
											no_of_students_registered+=1;
											}
										}else{
											break;
										}
									}
								}
								wb.close();
								fis.close();
								String body="<p style=\"text-align:center\"> Here is summary of student registrations through excel - <br>"
											+ "You requested for "+total_rows+" students registration through excel.<br>"
											+ no_of_students_registered+" students were successfully registered and "
											+ "their temporary passwords have been sent to their respective email-ids.<br>";
								if(!existEmail.toString().equals("")){
									existEmail.deleteCharAt(existEmail.length() - 1);
									body += "Please take a note that these email id's are already registered - "+existEmail+".<br>";
								}
									body += "</p>" + ProjectConstants.mail_footer;
								System.out.println("Existing email id's - "+existEmail);
								System.out.println("No of rows in Excel sheet - "+total_rows);
								System.out.println("No of students registered - "+no_of_students_registered);
							
								userBeanService.sendMimeMail("SkillPilots", user.getEmail_id(), "Student Registrations through Excel - Summary", body);
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
						System.out.println(ProjectConstants.uploadDirectory + aFile.getOriginalFilename());
						System.out.println("File successfully Upload  : "+ aFile.getOriginalFilename());
					}
				}
				
			}
		}).start();
		return "redirect:student_list";
	}
	
	*/
	@RequestMapping("/getStudentDetails")
	public @ResponseBody String getdetails(@RequestParam("student_id") String student_id) {
	
		return "stud";
	}
	 
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
//		SimpleDateFormat dateFormat = new SimpleDateFormat(ProjectConstants.date_format);
//		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	
}
