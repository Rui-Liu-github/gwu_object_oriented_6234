package cn.bjsxt.mapper;

import java.util.List;

import cn.bjsxt.pojo.Customer;

public interface CustomerMapper {

	List<Customer> selectAll();

	/**
	 * 
	 * 
	 * @param name
	 * @param pwd
	 * @return
	 */
	Customer login(String name, String pwd);

	/**
	 *
	 * 
	 * @param id
	 * @return
	 */
	int deleteById(int id);

	/**
	 * 
	 * 
	 * @param user
	 * @return
	 */
	int addCustomer(Customer customer);

	/**
	 *
	 * 
	 * @param user
	 * @return
	 */

	int updateCustomer(Customer customer);

	List<Customer> selectCusts(String name, String identity);

	int deleteCustomer(int custId);

	public Customer findCustByCard(String identity);

	Customer findCustomerByIdentity(String custIdentity);

}
