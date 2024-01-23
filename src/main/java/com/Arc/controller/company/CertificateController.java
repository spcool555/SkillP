package com.Arc.controller.company;





import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CertificateController {

	

	@RequestMapping("/certificate")
	public String ShowCertificate(Model model) {
		
		return "certificate";
	  }
	}
