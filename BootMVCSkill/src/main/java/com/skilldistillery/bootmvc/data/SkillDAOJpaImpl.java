package com.skilldistillery.bootmvc.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.skill.entities.Skill;


@Service
@Transactional
public class SkillDAOJpaImpl implements SkillDAO{

	private EntityManager em;
	
	@Override
	public Skill findSkillById(int id) {
		return em.find(Skill.class, 1);
	}

	@Override
	public List<Skill> findAll() {
List<Skill> list = new ArrayList<>();
		String query = "SELECT s FROM Skill f";
		return list = em.createQuery(query,Skill.class).getResultList();
	}

}
