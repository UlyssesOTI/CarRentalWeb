package com.ulyssess.carrental.controller;

import java.rmi.server.Operation;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ulyssess.carrental.entity.Mark;
import com.ulyssess.carrental.service.MarkService;
import com.ulyssess.carrental.validator.MarkValidator;

@Controller
public class MarkController {
	
	@Autowired
	private MarkService markService;
	
	@Autowired
	private MarkValidator markValidator;
	
	@InitBinder
	private void initBinder(WebDataBinder webDataBinder){
		webDataBinder.setValidator(markValidator);
	}
	
	@RequestMapping(value="/mShowMarks")
	private String allModels(Model model){
		model.addAttribute("marks",markService.findAll());
		return "mark-all";
	}
	
	@RequestMapping(value="/mCreateMark")
	private String newModel(Model model){	
		Mark mark = new Mark();
		model.addAttribute("mark",mark);
		return "mark-new";
	}
	
	@RequestMapping(value="/mEditMark")
	private String editModel(Model model,@RequestParam(value="id") String id){	
		Mark mark = markService.findById(id);
		model.addAttribute("mark",mark);
		return "mark-edit";
	}

//	@RequestMapping(value="/editMark")
//	private String editModel(Model model,@RequestParam(value="id") String id){	
//		Mark mark = markService.findById(id);
//		String operation = "update";
//		if(mark==null){
//			mark = new Mark();
//			operation = "add";
//		}
//		model.addAttribute("mark",mark);
//		model.addAttribute("operation",operation);
//		return "mark-edit";
//	}

	
	@RequestMapping(value="/mSaveMark")
	private String saveMark(
					@RequestParam(value="operation") String operation,
					@ModelAttribute(value="mark") @Valid Mark mark,					
					BindingResult bindingResult, 
					Model model ){
		
		String returnVal = "redirect:/mShowMarks";
		if(bindingResult.hasErrors()){
			returnVal = "mark-new";
		}else{
			if(operation.equals("add")){
				markService.add(mark);
			}else if(operation.equals("update")){
				markService.update(mark);
			}else if(operation.equals("remove")){
				
			}
		}
		return returnVal;
	}
}
