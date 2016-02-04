package com.ulyssess.carrental.controller;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonView;
import com.ulyssess.carrental.dto.CarAllPageDTO;

public class AjaxResponseBodyCars {
	
	@JsonView(Views.Public.class)
	String msg;
	
	@JsonView(Views.Public.class)
	String code;
	
	@JsonView(Views.Public.class)
	List<CarAllPageDTO> result;

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	public String getMsg() {
		return msg;
	}
	
	public void setCode(String code) {
		this.code = code;
	}
	
	public String getCode() {
		return code;
	}
	
	public void setResult(List<CarAllPageDTO> result) {
		this.result = result;
	}
	
	public List<CarAllPageDTO> getResult() {
		return result;
	}
	

}
