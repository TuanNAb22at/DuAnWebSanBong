package com.javaweb.controller.admin;

import com.javaweb.entity.BigPitchEntity;
import com.javaweb.repository.BigPitchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfAdmin")
public class HomeController {
	@Autowired
	private BigPitchRepository bigPitchRepository;
	@RequestMapping(value = "/admin/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/home");
		BigPitchEntity bigPitchEntity = new BigPitchEntity();
		bigPitchEntity.setAddress("28 HOA BINH");
		bigPitchEntity.setDescription("SAN LON2");
		bigPitchRepository.save(bigPitchEntity);
		return mav;
	}
}
