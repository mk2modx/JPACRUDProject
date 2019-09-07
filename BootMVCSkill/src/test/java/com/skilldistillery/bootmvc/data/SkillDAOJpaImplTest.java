package com.skilldistillery.bootmvc.data;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import com.skilldistillery.skill.entities.Skill;

class SkillDAOJpaImplTest {
private static EntityManagerFactory emf;
private EntityManager em;
private Skill skill;

SkillDAOJpaImpl impl = new SkillDAOJpaImpl();
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
	}

	@BeforeEach
	void setUp() throws Exception {
		
	}

	@AfterEach
	void tearDown() throws Exception {
	}

//	@Test
//	void testAdd() {
//		Skill s = new Skill();
//		s.setName("stuff");
//		s.setDescription("otherstuff");
//		s.setProficiency("BEG");
//		s.setPointValue(50);
//		s.setLink("stuff");
//		Skill d = impl.create(s);
//		assertEquals("stuff",d.getName());
//	
//	}
	
	@Test
	
	void findId() {
		Skill s = impl.findSkillById(1);
		assertEquals("ASDFSDF", "asdfs");
	}
	

}
