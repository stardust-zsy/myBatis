package test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LoginController {
	@RequestMapping("/login")
	/* @ResponseBody */
	public String login_fail(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout, Model model) {

		if (error != null) {
			model.addAttribute("error", "Invalid userName and Password");
		}
		if (logout != null) {
			model.addAttribute("msg", "You have been logged out");
		}
		model.addAttribute("error", "Invalid userName and Password");

		return "index";
	}

	@RequestMapping("/login_success.do")
	public String login_success(Model model) {

		return "home";
	}
}
