package com.Arc.controller.college;

import java.util.Date;
import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class BalanceDataAndPackageDataController {

	@RequestMapping("/get_balancedata_list")
	public @ResponseBody List<?> getbdlist() {
	
			return null;
		
	}

	@RequestMapping("/get_clgPkg_list")
	public @ResponseBody List<?> getpkglist(@RequestParam("package_for")String package_for,@RequestParam("package_type")String package_type) {
//		List<PackagesData> list = packageService.getRechargePackages(package_for,package_type);
		return null;
	}
	
	@RequestMapping("/add_balancedata")
	public @ResponseBody String addBalanceData(@RequestParam("package_id")int package_id) throws Exception {
		
			
			return "success";
		
			
		//balanceDataService.addBalanceData(balanceData);
		
	}
	
	@RequestMapping("/collegeTransactions")
	public String collegeTransactions(Model model){
		
			return "collegeTransactions";
		
	}
	
	@RequestMapping("/companyTransactions")
	public String companyTransactions(Model model){
	
			return "companyTransactions";
		
		
	}
	
	@RequestMapping("/getBalanceDetails")
	public @ResponseBody List<Object[]> getBalanceDetails(@RequestParam("balance_id")String balance_id){
//		return balanceDataService.getBalanceUsage(balance_id);  sk
		return null;
	}
	
	@RequestMapping("/getPackageDetails")
	public @ResponseBody String getpkgDetails(@RequestParam("package_id")int package_id){
//		return packageService.getPackageData(package_id);
		return null;
	}
	
	@RequestMapping("/payment")
	public String Payment(){
		System.out.println(">>>>>>>>>>>>>>>>");
		return "redirect:payment";
	}
}
