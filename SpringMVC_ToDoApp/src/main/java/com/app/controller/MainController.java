package com.app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.app.entity.Work;
import com.app.service.IService;

@Controller
public class MainController 
{
	@Autowired
	private IService service;
	
	@GetMapping("/")
	public String showHome()
	{
		return "welcome";
	}
	
	@GetMapping("/add")
	public String addTask()
	{
		return "addTask";
	}
	
	@GetMapping("/login")
	public String login()
	{
		return "login";
	}
	
	@PostMapping("login")
	public String loginSuccess()
	{
		return "dashboard";
	}
	
	@GetMapping("profileVisit")
	public String profileVisit()
	{
		
		return "profile";
	}
	@GetMapping("/signup")
	public String signup()
	{
		return "signup";
	}
	

	@GetMapping("/forgotPW")
	public String forgotPassword()
	{
		return "forgotPW";
	}
	
	@PostMapping("/addTarget")
    public String addTarget(@ModelAttribute Work target) {
        // Spring will automatically bind the form data to the Target object
        System.out.println("Category: " + target.getCategory());
        System.out.println("Tasks: " + target.getTasks());
        
        String storeWork = service.storeWork(target);
        // Your business logic here
        if(storeWork.equals("success"))
        {
        	return "redirect:/success";// redirect to success page
        }
        else
        {
        	return "redirect:/failed";
        }
    }


}
