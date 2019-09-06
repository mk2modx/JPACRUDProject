package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.bootmvc.data.SkillDAO;
import com.skilldistillery.skill.entities.Skill;

public class SkillController {

	@Autowired
	private SkillDAO dao;
	
	@RequestMapping(path= {"/", "home.do"}, method = RequestMethod.GET)
	public String index(Model model) {
		List<Skill> f = dao.findAll();
		model.addAttribute("skillset", f);
				
	  return "index";
	  // return "index"; // if using a ViewResolver.
	}
	
	@RequestMapping(path = "getSkill.do")
	public String showFilm(@RequestParam("skillId") Integer sid, Model model) {
	Skill f = dao.findSkillById(sid);
	model.addAttribute("skill", f);
		
		return "skill/show";
	}
	
}
