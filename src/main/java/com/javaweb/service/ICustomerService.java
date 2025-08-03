package com.javaweb.service;

import com.javaweb.model.response.CustomerResponse;

import java.util.List;

public interface ICustomerService {
    List<CustomerResponse> findCustomerByName(String name);
}
