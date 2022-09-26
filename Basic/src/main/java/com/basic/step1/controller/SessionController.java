package com.basic.step1.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@RequestMapping("/session/*")
@SessionAttributes({"mem_id","mem_name"})
public class SessionController {
	Logger logger = LoggerFactory.getLogger(SessionController.class);
	@GetMapping("sessionMake.sp4")
	public void sesseionMake(HttpSession session) {
		session.setAttribute("mem_id","apple");
		session.setAttribute("mem_name","사과");
	}
	@GetMapping("sessionView.sp4")
	public String sesseionView() {
		return "redirect:sessionView.jsp";
	}
}
