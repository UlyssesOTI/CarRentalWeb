package com.ulyssess.carrental.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ulyssess.carrental.entity.Mark;

@Component
public class MarkValidator implements Validator{

	public boolean supports(Class<?> clazz) {
		return Mark.class.equals(clazz);
	}

	public void validate(Object target, Errors errors) {
		Mark mark = (Mark) target;
		if(mark.getMarkName().isEmpty()){
			errors.reject("markName", "markName.required");
		}
		
	}
	
}
