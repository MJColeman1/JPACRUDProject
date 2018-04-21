package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.skilldistillery.jpacrud.entities.Player;

@Transactional
@Component
public class PlayerDAOImpl implements PlayerDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public Player create(Player player) {

		em.persist(player);

		em.flush();

		return player;
	}

	@Override
	public Player retrievebyId(int id) {
		return em.find(Player.class, id);
	}

	@Override
	public List<Player> retrieveAll() {
		String query = "Select p from Player p";
		List<Player> allPlayers = em.createQuery(query, Player.class).getResultList();
		return allPlayers;
	}

	@Override
	public Player update(int id, Player p) {
		Player player = em.find(Player.class, id);
		
		player.setFirstName(p.getFirstName());
		player.setLastName(p.getLastName());
		player.setTeam(p.getTeam());
		player.setPosition(p.getPosition());
		player.setGamesPlayed(p.getGamesPlayed());
		player.setGoals(p.getGoals());
		player.setAssists(p.getAssists());
		player.setPoints(p.getPoints());
		player.setPlusMinus(p.getPlusMinus());
		player.setPointsPerGame(p.getPointsPerGame());
		player.setPowerplayGoals(p.getPowerplayGoals());
		player.setShorthandedGoals(p.getShorthandedGoals());
		player.setGameWinningGoals(p.getGameWinningGoals());
		player.setOvertimeGoals(p.getOvertimeGoals());
		player.setShots(p.getShots());
		player.setShotPercentage(p.getShotPercentage());
		player.setToiPerGame(p.getToiPerGame());
		player.setFowPercentage(p.getFowPercentage());
		
		em.persist(player);
		
		em.flush();
		
		return player;
	}

	@Override
	public boolean delete(int id) {
		boolean deleted = false;
		Player a = em.find(Player.class, id);
		try {
			em.remove(a);
			deleted = true;
		}
		catch (IllegalArgumentException iae) {
			System.out.println("Player not found.");
		}
		
		return deleted;
		
		
	}

}
