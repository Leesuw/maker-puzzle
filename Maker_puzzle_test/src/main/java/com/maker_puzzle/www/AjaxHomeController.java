package com.maker_puzzle.www;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.maker_puzzle.www.baen.memberBean;
import com.maker_puzzle.www.service.memberMM;

@RestController
public class AjaxHomeController {

	@Autowired
	memberMM mm;
	
	@RequestMapping(value = "/emailEffectiveness", method = { RequestMethod.GET,
			RequestMethod.POST }, produces = "application/json;charset=utf8")
	public String emailEffectiveness(@RequestBody String email) {
		System.out.println("받아 지나?? : "+ email );
		String json = mm.emailEffectivenessService(email);
		
		return json;

	}
	
}
