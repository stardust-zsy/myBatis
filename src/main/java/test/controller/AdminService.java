package test.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import test.mapper.AdminMapper;
import test.model.Admin;

@Controller
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@RequestMapping("/")
	public String login() throws SQLException {
		Admin admin = new Admin();

		admin.setUserName("Frisk");
		admin.setPassword("111123");
		admin.setAge(11);
		admin.setEnabled(true);

		// adminMapper.insert(admin);
		return "index";
	}

	@RequestMapping("submit")
	public String submit() {

		return "home";
	}
}
