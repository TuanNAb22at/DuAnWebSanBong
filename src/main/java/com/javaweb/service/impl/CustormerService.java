package com.javaweb.service.impl;


import com.javaweb.converter.CustomerConverter;
import com.javaweb.entity.CustomerEntity;
import com.javaweb.model.response.CustomerResponse;
import com.javaweb.repository.CustomerRepository;
import com.javaweb.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustormerService implements ICustomerService {
    @Autowired
    private CustomerRepository customerRepository;
    @Autowired
    private CustomerConverter customerConverter;
    public List<CustomerResponse> findCustomerByName(String name){
        List<CustomerResponse> customers = new ArrayList<>();
        List<CustomerEntity> results = customerRepository.findByFullnameContainingIgnoreCase(name);
        for(CustomerEntity customer : results){
            customers.add(customerConverter.toCustomerResponse(customer));
        }
        return customers;
    }
}
