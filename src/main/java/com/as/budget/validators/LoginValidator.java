package com.as.budget.validators;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.as.budget.beans.User;

public class LoginValidator implements Validator {

	@Override
	public boolean supports(Class<?> paramClass) {
		return User.class.equals(paramClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		User user = (User)obj;
			
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userId", "userId.required");
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "password.required");
	}

}
