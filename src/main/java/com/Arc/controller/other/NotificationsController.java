package com.Arc.controller.other;
/* sk 
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.skillpilots.model.Notifications;
import com.skillpilots.model.User;
import com.skillpilots.service.NotificationsService;
import com.skillpilots.utility.NavigationBarUtilityService;
import com.skillpilots.utility.NotificationConstants;
import com.skillpilots.utility.ProjectConstants;

@Controller
public class NotificationsController {
@Autowired NotificationsService notificationsService;
@Autowired HttpSession session;
@Autowired NavigationBarUtilityService navBarUtil;

@RequestMapping("/viewAllNotifications")
public ModelAndView viewAllNotif(Model model){
	ModelAndView modelAndView=new ModelAndView();
	String userType = session.getAttribute("log_type").toString();
	String inst_type = (String) session.getAttribute("inst_type");
	if(userType.equals(ProjectConstants.user_initials_student)){
		model.addAttribute("sidebar", navBarUtil.getStudNavBar(""));
	} else if (userType.equalsIgnoreCase(ProjectConstants.user_initials_college) ||
			(userType.equalsIgnoreCase(ProjectConstants.user_initials_users) && inst_type.equals(ProjectConstants.user_initials_college)))
		model.addAttribute("sidebar", navBarUtil.getCollegeNavBar(""));
	else if (userType.equalsIgnoreCase(ProjectConstants.user_initials_company) ||
			(userType.equalsIgnoreCase(ProjectConstants.user_initials_users) && inst_type.equals(ProjectConstants.user_initials_company)))
		model.addAttribute("sidebar", navBarUtil.getCompanyNavBar(""));
	modelAndView.setViewName("allNotifications");
	return modelAndView;
}

@RequestMapping("/changeNotifStatus")
public @ResponseBody boolean changeNotifStatus(@RequestParam("notif_id")String notif_id){
	return notificationsService.updNotif(notif_id,ProjectConstants.notifications_status_read);
}

@RequestMapping("/redirect_notif_url")
public String notifRedirect(@RequestParam("notif_id")String notif_id){
	String login_type="";
	if(session.getAttribute("log_type").toString().equals(ProjectConstants.user_initials_student)){
		login_type=session.getAttribute("log_type").toString();
	}else{
		login_type=session.getAttribute("inst_type").toString();
	}

	int role=(int) session.getAttribute("role");
	Notifications notif=notificationsService.getNotification(notif_id);
	if(notif.getStatus()==ProjectConstants.notifications_status_unread){
		notificationsService.updNotif(notif_id,ProjectConstants.notifications_status_read);
	}
	
	return "redirect:"+NotificationConstants.getRedirectUrl(notif.getCategory(), login_type, role);
}

@RequestMapping("/getNextNotifPage")
public @ResponseBody List<Notifications> getnextnotif(@RequestParam("page_no")int page_no){
	System.out.println(">>>>>"+page_no);
	User user=(User) session.getAttribute("user_data");
	List<Notifications> result=notificationsService.getNotifUser(user.getUser_id(),page_no);
	for(Notifications notif:result){
		System.out.println(notif.getNotification_id());
	}
	return result;
}
}
*/