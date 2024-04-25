package cn.bjsxt.controller;

import cn.bjsxt.pojo.Role;
import cn.bjsxt.pojo.User;
import cn.bjsxt.service.RoleService;
import cn.bjsxt.service.UserService;
import cn.bjsxt.utils.Md5Util;
import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class UserController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;

	@RequestMapping("logout")
	public String logout(HttpServletRequest req, HttpServletResponse resp) {
		req.getSession().invalidate();
		return "login";
	}

	@RequestMapping("userLogin")
	@ResponseBody
	public String login(User user, String code, HttpServletRequest request) {
		Map map = new HashMap();
		// get the code from session
		// get login data
		String addr = request.getRemoteAddr();
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime = sdf.format(date);
		// String password = Md5Util.GetMD5(user.getUserpwd());
		String password = user.getUserpwd();
		// String password = user.getUserpwd();
		User u = userService.login(user.getUsername(), password, dateTime, addr);
		request.getSession().setAttribute("currentUser", u);
		if (u != null) {
			map.put("flag", "ok");
		} else {
			map.put("flag", "ng");
		}
		Gson gson = new Gson();
		String str = gson.toJson(map);
		return str;
	}

	@RequestMapping("deleteById")
	public String deleteById(User user) {

		if (userService.deleteById(user.getUserid()) > 0) {
			return "redirect:/ findUsers";
		} else {
			return "error";
		}
	}

	@RequestMapping("addUser")
	public String addUser(User user) {
		if (user.getUsername() == null) {
			return "adduser";
		}
		System.out.println(user);
		int result = userService.addUser(user);
		if (result > 0) {
			return "success";
		}
		return "error";
	}

	/*
	 * 查询页面
	 **/
	@RequestMapping("findUsers")
	public String findUsers(HttpServletRequest request) {
		String username = request.getParameter("username") == "" ? null : request.getParameter("username");
		String identity = request.getParameter("identity") == "" ? null : request.getParameter("identity");
		String phone = request.getParameter("phone") == "" ? null : request.getParameter("phone");
		User user = new User();
		user.setUsername(username);
		user.setIdentity(identity);
		user.setPhone(phone);
		List<User> users = userService.findUsers(user);
		for (User u : users) {
			Role r = roleService.getRoleById(u.getRoleid());
			u.setRole(r);
		}
		request.setAttribute("users", users);
		return "userlist";
	}

	@RequestMapping("preUpdateUser")
	public String preUpdate(HttpServletRequest req) {
		int userid = Integer.parseInt(req.getParameter("userid"));
		User user = userService.findUserById(userid);
		if (user != null) {
			req.setAttribute("user", user);
			return "updateUser";
		}
		return "error";
	}

	@RequestMapping("userUpdate")
	public String userUpdate(User user) {
		int result = userService.updateUser(user);
		if (result > 0) {
			return "success";
		}
		return "error";

	}

}
