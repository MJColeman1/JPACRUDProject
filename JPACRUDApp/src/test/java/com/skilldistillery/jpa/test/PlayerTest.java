package com.skilldistillery.jpa.test;

import static org.junit.jupiter.api.Assertions.assertEquals;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import com.skilldistillery.jpacrud.entities.Player;

class PlayerTest {

	private EntityManagerFactory emf;
	private EntityManager em;
	
	@BeforeEach
	void setUp() throws Exception {
		emf = Persistence.createEntityManagerFactory("CrudApp");
		em = emf.createEntityManager();
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		emf.close();
	}

//	@Test
//	void test() {
//		fail("Not yet implemented");
//	}

	@Test
	@DisplayName("Test player mappings")
	void test_player_mappings() {
		Player p = em.find(Player.class, 1);
		assertEquals("Alexander", p.getFirstName());
		assertEquals("Ovechkin", p.getLastName());
		assertEquals(1, p.getId());		
		assertEquals("Washington Capitals", p.getTeam());		
	}

}
