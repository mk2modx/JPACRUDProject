package com.skilldistillery.bootmvc.data;

import java.util.List;

import com.skilldistillery.skill.entities.Skill;

public interface SkillDAO {

	Skill findSkillById(int id);

	List<Skill> findAll();
	
	
}
