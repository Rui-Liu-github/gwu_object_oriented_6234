package cn.bjsxt.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bjsxt.pojo.Menu;
import cn.bjsxt.pojo.User;
import cn.bjsxt.service.MenuService;

@Controller
public class IndexController {

	@Autowired
	MenuService menuService;

	@RequestMapping("index")
	public String index(User user, HttpServletRequest request) {
		// Get the user id from the user in the session
		User u = (User) request.getSession().getAttribute("currentUser");
		// System.out.println(u.getUserid());
		// Get the list of menus by user ID.
		List<Menu> menus = menuService.findMenuByUserId(u.getUserid());
		// System.out.println(menus.size());
		int fixedSize = 21;
		if (menus.size() > fixedSize) {
			menus.subList(fixedSize, menus.size()).clear();
		}
		// System.out.println(menus.size());

		// Store the menus via request.
		request.setAttribute("menus", menus);
		return "index";
	}

	@RequestMapping("showMenu")
	public String showMenu(HttpServletRequest request) {
		// Get the list of menus by user ID.
		List<Menu> menus = menuService.showMenu();
		// Store the menus via request.
		request.setAttribute("menus", menus);
		return "addRole";
	}
}
