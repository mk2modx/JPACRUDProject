package com.skilldistillery.skill.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class SkillTest {
private static EntityManagerFactory emf;
private EntityManager em;
	private Skill skill;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("SkillPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		skill = em.find(Skill.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		skill = null;
	}

	@Test
	void test_Skill_Entity_Mapping() {
		assertEquals(1, skill.getId());
		assertEquals("Tie Knots", skill.getName());
		assertEquals(1, skill.getId());
	}

}
