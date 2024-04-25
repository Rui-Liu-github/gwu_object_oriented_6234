package cn.bjsxt.mapper;

import cn.bjsxt.pojo.User;

import java.util.List;

public interface UserMapper {

	User login(String name, String pwd);

	int addLoginlog(String name, String addr, String dateTime);

	/**
	 * @param userid
	 * @return
	 */
	int deleteById(int userid);

	/**
	 * @param user
	 * @return
	 */
	int addUser(User user);

	/**
	 * @param user
	 * @return
	 */
	int updateUser(User user);

	/**
	 * @param user
	 * @return
	 */
	List<User> findUsers(User user);

	User findUserByName(String username);

	User findUserById(int userid);
}
