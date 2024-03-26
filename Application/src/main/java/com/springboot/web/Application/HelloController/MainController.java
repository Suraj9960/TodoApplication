package com.springboot.web.Application.HelloController;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MainController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String WelcomePage(ModelMap model) {
		model.put("name",getLoggedUsername());
		return "Welcome";
	}
	
	private String getLoggedUsername() {
		org.springframework.security.core.Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
		return authentication.getName();
	}
	

}
