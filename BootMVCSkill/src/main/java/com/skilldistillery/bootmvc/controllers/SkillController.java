package com.skilldistillery.bootmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.bootmvc.data.SkillDAO;
import com.skilldistillery.skill.entities.Skill;

@Controller
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
	
	@RequestMapping(path = "getSkill.do")   //Search ID
	public String showFilm(@RequestParam("ski") Integer sid, Model model) {
	Skill f = dao.findSkillById(sid);
	model.addAttribute("skill", f);
		
		return "skill/show";
	}
//	@RequestMapping(path = "getSkill.do") //Search keyword
//	public String showSearched(@RequestParam("ski") String word, Model model) {
//		List<Skill> f = dao.findSkillByWord(word);
//		model.addAttribute("skill", f);
//		
//		return "skill/show";
//	}
	
	@RequestMapping(path = "addSkillLink.do", method = RequestMethod.GET)
	public String addLink(Model model) {
		
		return "skill/addS";
	}
	
	@RequestMapping(path = "addSkillForm.do", method = RequestMethod.POST)
	public String createSkill(Skill skill, Model model) {
model.addAttribute("added", skill);
		dao.create(skill);
		return "skill/show";
	}
	@RequestMapping(path = "updateLink.do", method = RequestMethod.GET)
	public String updateLink(@RequestParam("upd")Integer num, Model model) {
		
	
		Skill f = dao.findSkillById(num);
		model.addAttribute("skill", f);
		return "skill/updateS";
	}
	
	@RequestMapping(path = "updateSkill.do", method = RequestMethod.POST)
	public String updateSkill(Skill skill, Model model) {
		
		dao.update(skill);
		model.addAttribute("updated",skill);
		return "skill/show";
	}
	@RequestMapping(path = "deleteSkill.do", method = RequestMethod.GET)
	public String deleteSkill(@RequestParam("idd") Integer num, Skill skill, Model model) {

		skill = dao.findSkillById(num);
	model.addAttribute("deleted",skill);
	dao.delete(skill);
		
		
		return "skill/show";
	}
	
	
	
}
