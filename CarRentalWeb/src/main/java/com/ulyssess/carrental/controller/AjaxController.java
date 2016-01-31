package com.ulyssess.carrental.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.annotation.JsonView;
import com.ulyssess.carrental.dto.CarAllPageDTO;
import com.ulyssess.carrental.service.CarService;

@RestController
public class AjaxController {
	
	@Autowired
	private CarService carService;
	
	@JsonView(Views.Public.class)
	@RequestMapping(value = "/mShowCarsJson")
	public AjaxResponseBodyCars mShowCars(){
		AjaxResponseBodyCars result = new AjaxResponseBodyCars();
		List<CarAllPageDTO> list = carService.findAllDTO();
		result.setCode("200");
		result.setMsg("");
		result.setResult(list);		
		
		return result;
	}

}
