package com.skilldistillery.bootmvc.data;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skilldistillery.skill.entities.Skill;

@Service
@Transactional
public class SkillDAOJpaImpl implements SkillDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Skill findSkillById(int id) {
		return em.find(Skill.class, id);
	}

//	@Override
//	public List<Skill> findSkillByWord(String word) {
//		List<Skill> listWord = new ArrayList<Skill>();
//		String query = "SELECT s FROM Skill s WHERE s.name LIKE :words";
//		listWord = em.createQuery(query, Skill.class)
//				.setParameter("words", word)
//				.getResultList();
//		System.out.println(listWord.size());
//		System.err.println("*************************************");
//		return listWord;
//	}
	
	@Override
	public List<Skill> findAll() {
		List<Skill> list = new ArrayList<>();
		String query = "SELECT s FROM Skill s";
		return list = em.createQuery(query, Skill.class).getResultList();
	}

	@Override
	public Skill create(Skill skill) {

		em.persist(skill);
		em.flush();
		return skill;
	}

	@Override
	public boolean update(Skill skill) {
		boolean success = false;
		Skill updateS = em.find(Skill.class, skill.getId());
		updateS.setName(skill.getName());
		updateS.setDescription(skill.getDescription());
		updateS.setProficiency(skill.getProficiency());
		updateS.setPointValue(skill.getPointValue());
		updateS.setLink(skill.getLink());
		
		return success;
	}
	
	@Override 
	public boolean delete(Skill skill) {
		
		boolean success = false;
		Skill del = em.find(Skill.class, skill.getId());
		em.remove(del);
		em.flush();
		return success;
	}

	@Override
	public List<Skill> findSkillByWord(String word) {
		// TODO Auto-generated method stub
		return null;
	}

}
