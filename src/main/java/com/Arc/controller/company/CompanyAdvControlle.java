package com.Arc.controller.company;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.Arc.model.CompAdvertisement;
import com.Arc.model.Company;
import com.Arc.service.ComponyService;
import com.Arc.service.UserService;


//public class CompanyAdvControlle extends BeanCopyUtil{
	
@Controller
public class CompanyAdvControlle{
	@Autowired
	private ComponyService componyService;
	
	
	@RequestMapping(value = "/company_posts", method = RequestMethod.GET)
    public String compAdv(Model model) {
        try {
            List<CompAdvertisement> compAdvertisements = componyService.getAllCompAdvertisements();
            model.addAttribute("compAdvertisements", compAdvertisements);
        } catch (Exception e) {
            // Handle exceptions if any.
            e.printStackTrace();
        }

        return "company_posts";
    }

	@PostMapping("/add_advertisment")
	public String addAdv(CompAdvertisement company) {
		
		componyService.addAdvertisment(company);
			
		return "redirect:company_posts";
	}

	
	




	@RequestMapping(value = "/delete_com_adv")
	public String deleteComAdv(@RequestParam("adv_id") Long advId) {
	componyService.delete(advId);
	    return "redirect:/company_posts";
	}

	
	
	@RequestMapping(value = "/getCompnayAdvertisement", method = RequestMethod.GET)
	public @ResponseBody String getAdvertisementByCompanyId(String company_id) {
	
		return "compAdvertisements";
	}

	@RequestMapping(value = "/company_adv_forcollege")
	public String comapanyAdvertisement(Model model) {
		
			return "companyadvforcollege";
	}

	@RequestMapping(value = "/getAllCompanyPosts", method = RequestMethod.GET)
	public String getAllCompanyPosts(Model model) {
		
		return "list";
	}

	

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	
	}
}
