package basic_jdbc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import basic_jdbc.data_access_object.CategoryDAO;
import basic_jdbc.model.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		categoryDAO.insertCategory("Toyota", "Viet Nam");
		categoryDAO.insertCategory("Huyndai", "Korea");
		List<Category> list = categoryDAO.listCategory();
		model.addAttribute("categories", list);
		return "index";
	}
}
