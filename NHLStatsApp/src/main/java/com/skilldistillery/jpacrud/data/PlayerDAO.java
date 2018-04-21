package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Player;

public interface PlayerDAO {

	Player create(Player player);
	Player retrievebyId(int id);
	List<Player> retrieveAll();
	Player update(int id, Player player);
	boolean delete(int id);
	
	
}
