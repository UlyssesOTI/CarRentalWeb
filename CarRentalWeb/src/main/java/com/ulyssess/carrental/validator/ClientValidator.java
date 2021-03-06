package com.ulyssess.carrental.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ulyssess.carrental.entity.Client;
import com.ulyssess.carrental.service.ClientService;

@Component
public class ClientValidator implements Validator {
	
	@Autowired
	private ClientService clientService;

	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return  Client.class.equals(clazz);
	}

	public void validate(Object target, Errors errors) {
		Client client = (Client) target;
		
		if(clientService.findByLogin(client.getLogin())!=null){
			errors.rejectValue("login", "login.alreadyExist");
		}
		
		if(client.getLogin().compareTo("admin")==0){
			errors.rejectValue("login", "login.alreadyExist");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "lastName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "firstName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "email.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "login", "login.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
		
		
	}

}
