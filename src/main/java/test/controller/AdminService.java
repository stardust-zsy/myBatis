package test.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import test.mapper.AdminMapper;
import test.mapper.ProductMapper;
import test.model.Admin;
import test.model.Product;

@Controller
public class AdminService {

	@Autowired
	private AdminMapper adminMapper;

	@Autowired
	private ProductMapper productMapper;

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

		Product pro = new Product();

		pro.setProductId(2);
		pro.setProductNm("atestshop");
		pro.setDayfrom("20160505");
		pro.setDayEnd("20180605");
		pro.setPrice("111");
		pro.setCustomer("customer");
//		 productMapper.insert(pro);

		return "product";
	}

	@RequestMapping("doSelect")
	@ResponseBody
	public String doSelect(Model model) throws JsonProcessingException {
		ObjectMapper objectMapper = new ObjectMapper();
		List<Product> product = productMapper.findAll();

		if (product.size() == 0) {
			return null;
		}

		return objectMapper.writeValueAsString(product);
	}

}
