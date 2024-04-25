package cn.bjsxt.service;

import java.util.List;

import cn.bjsxt.pojo.Menu;

public interface MenuService {
	/**
	 * @param id
	 * @return
	 */
	List<Menu> findMenuByUserId(int id);

	List<Menu> showMenu();
}
