package com.javaweb.model.response;

import com.javaweb.model.dto.AbstractDTO;

public class CustomerResponse extends AbstractDTO {
    private String fullname;
    private String managementStaff;
    private String phone;
    private String email;
    private String demand;
    private String status;
    private String companyName;

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getManagementStaff() {
        return managementStaff;
    }

    public void setManagementStaff(String managementStaff) {
        this.managementStaff = managementStaff;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDemand() {
        return demand;
    }

    public void setDemand(String demand) {
        this.demand = demand;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }
}
