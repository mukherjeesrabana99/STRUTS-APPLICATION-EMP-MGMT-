/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.exavalu.models;

import com.exavalu.services.LoginService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import org.apache.struts2.dispatcher.ApplicationMap;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Preyangsee
 */
public class User extends ActionSupport implements ApplicationAware, SessionAware, Serializable {
    
    private String emailAddress;
    private String password;
    private String firstName;
    private String lastName;
    private String addressLine1;
    private String countryCode, provinceCode, districtCode;

    
    private SessionMap<String, Object> sessionMap = (SessionMap) ActionContext.getContext().getSession();

    private ApplicationMap map = (ApplicationMap) ActionContext.getContext().getApplication();

    @Override
    public void setApplication(Map<String, Object> application) {
        map = (ApplicationMap) application;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        sessionMap = (SessionMap) session;
    }

    
    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastname) {
        this.lastName = lastname;
    }
    
    public String doSignup()
    {
        String result="FAILURE";

        boolean res = LoginService.getInstance().doSignup(this);

        if (res) {
            result="SUCCESS";
        } else {
            String errorMsg = "Account Creation Failed! Try Again?";
            sessionMap.put("ErrorMsg",errorMsg);
        }
        return result;
    }
    public String doPreSignup(){
        String result="SUCCESS";
        ArrayList countryList = LoginService.getInstance().getAllCountries();
        sessionMap.put("countryList", countryList);
        System.out.println("provinceCode: "+this.provinceCode);
        if(this.countryCode!=null){
            ArrayList provinceList = LoginService.getInstance().getAllProvinces(this.countryCode);
            sessionMap.put("provinceList", provinceList);
            sessionMap.put("user", this);
        }
        
        if(this.countryCode!=null && this.provinceCode!=null){
            ArrayList provinceList = LoginService.getInstance().getAllProvinces(this.countryCode);
            sessionMap.put("provinceList", provinceList);
            ArrayList districtList = LoginService.getInstance().getAllDistricts(this.provinceCode);
            sessionMap.put("districtList", districtList);
            sessionMap.put("user", this);
        }
        
        return result;
    }

    /**
     * @return the addressLine1
     */
    public String getAddressLine1() {
        return addressLine1;
    }

    /**
     * @param addressLine1 the addressLine1 to set
     */
    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }

 
    /**
     * @return the countryCode
     */
    public String getCountryCode() {
        return countryCode;
    }

    /**
     * @param countryCode the countryCode to set
     */
    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
    }

    /**
     * @return the stateCode
     */
    public String getProvinceCode() {
        return provinceCode;
    }

   
    public void setProvinceCode(String provinceCode) {
        this.provinceCode = provinceCode;
    }

    /**
     * @return the districtCode
     */
    public String getDistrictCode() {
        return districtCode;
    }

    /**
     * @param districtCode the districtCode to set
     */
    public void setDistrictCode(String districtCode) {
        this.districtCode = districtCode;
    }
}
