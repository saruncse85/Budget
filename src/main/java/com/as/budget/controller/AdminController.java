package com.as.budget.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import static java.lang.Thread.*;
import com.as.budget.beans.UserDetails;

@Controller
public class AdminController {
	
	private List<UserDetails> userList;
	
	@RequestMapping(value="/admin/newUser", method=RequestMethod.GET)
	public String createNewUser(Model model) {
		model.addAttribute("userDetails", new UserDetails());
		System.out.println(currentThread());
		System.out.println(MIN_PRIORITY);
		
		return "newUser";
	}

	@RequestMapping(value="/admin/userList", method=RequestMethod.GET)
	public String retrieveUsers(Model model) {
		model.addAttribute("userList", userList);
		
		return "userList";
	}
}
