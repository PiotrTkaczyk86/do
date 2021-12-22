package com.doo.app.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class SwaggerController {
	
	@GetMapping("/swagger")
	public RedirectView toSwagger() {
		return new RedirectView("swagger-ui/index.html");
	}
}
