package com.ulyssess.carrental.validator;

import org.springframework.web.multipart.MultipartFile;

public class FileClass {
	 
	MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}		
}
