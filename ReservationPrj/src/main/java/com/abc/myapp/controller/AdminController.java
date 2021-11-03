package com.abc.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abc.myapp.Service.AdminService;
import com.abc.myapp.model.AdminVO;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminservice;
	
	@RequestMapping(value = "/adminLogin")
	public String adminLogin() {
		return "admin";
	}
	
	@RequestMapping(value = "/adminOK", method = RequestMethod.POST)
	public String adminOK(AdminVO admin) throws Exception {
		try {
			boolean result = adminservice.loginCheck(admin);
			if (result) {
				return "admindate";
			}
		} catch (Exception e) {
			return "redirect:adminNo";
		}
		return "redirect:/";
	}
	
	@RequestMapping(value = "/adminNo")
	public String adminNo(Model model) {
		String fail = "fail";
		model.addAttribute("fail", fail);
		return "admin";
	}
	
	
	
}