package com.bd.customer.service;


import com.bd.entity.BaseDict;
import com.bd.entity.Customer;
import com.bd.mapper.BaseDictMapper;
import com.bd.mapper.CustomerMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class CustomerService {
    @Resource
    private BaseDictMapper baseDictMapper;
    @Resource
    private CustomerMapper customerMapper;
    public List<BaseDict> loadSelects(String dict_type_code){
        return baseDictMapper.selectBaseDictByTypeCode(dict_type_code);
    }

    public List<Customer> getCustomers(Customer customer){
        return customerMapper.selectAllCustomer(customer);
    }

    public boolean addCustomer(Customer customer){
        return customerMapper.insertCustomer(customer);
    }
    public boolean removeCustomer(String cust_id){
        return customerMapper.deleteCustomerById(cust_id);
    }
    public Customer getCustomerById(String cust_id){
        return  customerMapper.getCustomerById(cust_id);
    }
    public boolean changeCustomer(Customer customer){
        return customerMapper.updateCustomer(customer);
    }
}
