package com.abc.myapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.abc.myapp.Service.IReservationService;

@Controller
public class ReservationController {
	
	@Autowired
	IReservationService revService;
	
	@RequestMapping(value = "/dateselect", method = RequestMethod.GET )
	public String dateselect() {
		return "dateselect";
	}
	
}
