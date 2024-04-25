package cn.bjsxt.service;

import cn.bjsxt.pojo.Customer;

import java.util.List;

public interface CustomerService {
	/**
	 * @return
	 */
	List<Customer> findAll();

	/**
	 * 
	 * @param name
	 * @param pwd
	 * @return
	 */
	Customer login(String name, String pwd);

	/**
	 * 
	 * @param id
	 * @return
	 */
	int deleteById(int id);

	/**
	 * 
	 * @param customer
	 * @return
	 */
	int addCustomer(Customer customer);

	/**
	 * 
	 * @param customer
	 * @return
	 */
	int updateCustomer(Customer customer);

	List<Customer> findCusts(String name, String identity);

	int deleteCustomer(int custId);

	public Customer findCustByCard(String identity);

	Customer findCustomerByIdentity(String custIdentity);
}
