package com.Arc.controller.other;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class ChatController {
	

	@RequestMapping("/live_chat")
	public String ChatHome() {
		
		return "live_chat";
	}
	
	@RequestMapping("/saveChat")
	public String saveChat(@RequestParam("message") String message,@RequestParam("sender_id") String sender_id,
			@RequestParam("receiver_id") String receiver_id){
	
	
		return "live_chat";
	}
	
	@RequestMapping("/getUserChat")
	@ResponseBody
	public String getUserChat() {
		
		
		return "chatlist";
	}
}
