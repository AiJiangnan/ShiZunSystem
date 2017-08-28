package com.mj.commen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

	@RequestMapping("{pages}")
	public String main(@PathVariable String pages) {
		return pages;
	}

	@RequestMapping("{pages}/{jsp}")
	public String main1(@PathVariable String pages, @PathVariable String jsp) {
		return pages + "/" + jsp;
	}

}
