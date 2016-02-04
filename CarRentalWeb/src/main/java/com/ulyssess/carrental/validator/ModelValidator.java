package com.ulyssess.carrental.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.ulyssess.carrental.entity.Model;

@Component
public class ModelValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		
		return Model.class.equals(clazz);
	}

	public void validate(Object target, Errors errors) {
		Model model = (Model) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "modelName", "modelName.required");
				
		if(model.getSeats()<=0 || model.getSeats()>=9){
			errors.rejectValue("seats","seats.wrongValue");
		}
		
		if(model.getDayPrice() <= 0 || model.getDayPrice()>=1000000){
			errors.rejectValue("dayPrice","dayPrice.wrongValue");
		}
		
	}

}
