package com.as.budget.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BeanPropertyBindingResult;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.as.budget.beans.User;

@Controller
public class LoginController {
	
	@Autowired
	@Qualifier("userValidator")
	private Validator validator;
	
	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String loadLoginPage(Model model, @RequestParam String action) {
		model.addAttribute("user", new User());
		return "login";
	}
	
	@RequestMapping(value="/authenticate", method = RequestMethod.POST)
	public String authenticate(@ModelAttribute("user") @Validated User user,
			BindingResult bindingResult,
			Model model) {
		String view = "login";
		
		if(bindingResult.hasErrors()) {
			view = "login";
		}
		if("admin".equalsIgnoreCase(user.getUserId()) && "admin".equalsIgnoreCase(user.getPassword())) {
			view = "admin_landing";
		} 
		
		model.addAttribute("user", user);
		model.addAttribute("ErrorMsg", "Invalid Username/Password");
		return view;
	}
}
