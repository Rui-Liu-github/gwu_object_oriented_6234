package cn.bjsxt.mapper;

import java.util.List;

import cn.bjsxt.pojo.Menu;

public interface MenuMapper {
	/**
	 * 
	 * @param id
	 * @return
	 */
	List<Menu> findMenuByUserId(int id);

	List<Menu> showMenu();
}
