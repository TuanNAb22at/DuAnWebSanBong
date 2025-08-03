package com.javaweb.converter;

import com.javaweb.entity.CustomerEntity;
import com.javaweb.model.dto.CustomerDTO;
import com.javaweb.model.response.CustomerResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class CustomerConverter {
    @Autowired
    private ModelMapper modelMapper;

    public CustomerDTO tocustomerDTO(CustomerEntity customerEntity) {
        return this.modelMapper.map(customerEntity, CustomerDTO.class);
    }

    public CustomerEntity toCustomerEntity(CustomerDTO customerDTO) {
        return this.modelMapper.map(customerDTO, CustomerEntity.class);
    }

    public CustomerResponse toCustomerResponse(CustomerEntity customerEntity) {
        CustomerResponse customerResponse = this.modelMapper.map(customerEntity, CustomerResponse.class);
//        customerResponse.setFullname(customerEntity.getFullname());
        return customerResponse;
    }
}
