package com.ulyssess.carrental.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ulyssess.carrental.dto.ModelAllPageDTO;
import com.ulyssess.carrental.entity.Client;
import com.ulyssess.carrental.enums.GearBox;
import com.ulyssess.carrental.service.ClientService;
import com.ulyssess.carrental.service.MarkService;
import com.ulyssess.carrental.service.ModelService;
import com.ulyssess.carrental.validator.ClientValidator;

@Controller
public class ClientController {

	@Autowired
	private ModelService modelService;

	@Autowired
	private MarkService markService;
	
	@Autowired
	private ClientService clientService;
	
	@Autowired
	private ClientValidator clientValidator; 
	
	@InitBinder("client")
    private void initBinder(WebDataBinder binder) {
        binder.setValidator(clientValidator);
    }
	
	@RequestMapping(value = "/allClientsMain")
	public String clientMain(){
		return "client-main";
	}
	
	List<ModelAllPageDTO> models = null;
	
	
	@RequestMapping(value="/AvailableModels{pageIndex}", method = {RequestMethod.GET, RequestMethod.POST})
	private String availableModels(
				Model model, 
				@RequestParam(value = "begin" , defaultValue=""  )  String begin, 
				@RequestParam(value = "end", defaultValue="") String end,
				@RequestParam(value = "mark", defaultValue="0") String markId,
				@RequestParam(value = "gearBox", defaultValue="") String gearBoxId,
				@RequestParam(value = "minPrice", defaultValue="0") String minPrice,
				@RequestParam(value = "maxPrice", defaultValue="99999") String maxPrice,
				@PathVariable String pageIndex){
				
		if(begin.isEmpty()){
			begin = DateParse.format(new Date());
		}
		
		if(end.isEmpty()){
			end = DateParse.format(new Date());
		}		
		
		int page;
		
		if(pageIndex.isEmpty()){
			models = modelService.findAvailableModelsByPeriod(begin, end, markId, gearBoxId,minPrice, maxPrice);
			page=1;
		}else{
			page = Integer.parseInt(pageIndex);
		}
		
		int pages;
		if(models.size()%3>0){
			pages=models.size()/3+1;
		}else{
			pages=models.size()/3;
		}
		
		List<ModelAllPageDTO> modelsPage = new ArrayList<ModelAllPageDTO>();
		
		int length = 3*page;
		
		if(length>models.size()){
			length = models.size();
		}
		
		for (int i = 3*(page-1); i < length; i++) {
			modelsPage.add(models.get(i));
		}		
		
		
		model.addAttribute("pages", pages);		
		model.addAttribute("models", modelsPage);
		model.addAttribute("begin", begin);
		model.addAttribute("end", end);
		model.addAttribute("marks", markService.findAll());
		model.addAttribute("markId", markId);
		model.addAttribute("gearBoxs",GearBox.values());
		model.addAttribute("gearBoxId",gearBoxId);
		model.addAttribute("minPrice",minPrice);
		model.addAttribute("maxPrice",maxPrice);
		model.addAttribute("days",DateParse.getDateDiff(DateParse.parse(begin), DateParse.parse(end), TimeUnit.DAYS));
		return "client-main";
	}
	
	
	
	@RequestMapping(value="/signIn")
	public String signIn(Model model){
		Client client = new Client();
		model.addAttribute("client", client);
		return "client-new";
	}
	
	@RequestMapping(value = "/newClient", method=RequestMethod.POST)
	public String newClient(@RequestParam(value="operation") String operation,
			@ModelAttribute("client") @Valid Client client,
			BindingResult result,
	 		Model model){
		
		String returnVal = "redirect:/loginpage";
		if(result.hasErrors()){
			model.addAttribute("client", client);
			returnVal = "client-new";
		}else{
			if(operation.equals("add")){
				client.setRegDate(new Date());
				clientService.add(client);
			}else if(operation.equals("update")){
				
			}else if(operation.equals("remove")){
				
			}
		}
		return returnVal;
	}
	
	@RequestMapping(value="/mClients")
	public String managerAllClients(Model model){
		model.addAttribute("clients", clientService.findAll());
		return "manager-allClients";
	}
	
	@RequestMapping(value="/cPersonalInfo")
	public String clientPersonalInfo(Model model, Principal principal){
		model.addAttribute("client", clientService.findByLogin(principal.getName()));
		return "client-edit";
	}
	
	
}
