package com.bd.mapper;

import com.bd.entity.Customer;

import java.util.List;

public interface CustomerMapper {
    List<Customer> selectAllCustomer(Customer customer);

    boolean insertCustomer(Customer customer);

    boolean deleteCustomerById(String cust_id);

    Customer getCustomerById(String cust_id);

    boolean updateCustomer(Customer customer);
}
