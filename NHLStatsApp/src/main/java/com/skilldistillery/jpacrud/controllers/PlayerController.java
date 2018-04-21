package com.skilldistillery.jpacrud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.jpacrud.data.PlayerDAO;
import com.skilldistillery.jpacrud.entities.Player;

@Controller
public class PlayerController {

	@Autowired
	private PlayerDAO dao;

	@RequestMapping(path = "index.do", method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("WEB-INF/views/index.jsp");
		return mv;
	}

	@RequestMapping(path = "searchById.do", method = RequestMethod.GET)
	public ModelAndView getPlayerById(@RequestParam(name = "pid") int pid) {
		ModelAndView mv = new ModelAndView();
		Player p = dao.retrievebyId(pid);
		mv.addObject("player", p);
		mv.setViewName("WEB-INF/views/result.jsp");
		return mv;
	}

	@RequestMapping(path = "getPlayers.do", method = RequestMethod.GET)
	public ModelAndView getAllPlayers() {
		ModelAndView mv = new ModelAndView();
		// Player p = dao.retrievebyId(1);

		List<Player> allPlayers = dao.retrieveAll();
		mv.addObject("players", allPlayers);
		mv.setViewName("WEB-INF/views/result.jsp");
		return mv;
	}

	@RequestMapping(path = "createPlayer.do", method = RequestMethod.POST)
	public ModelAndView createPlayer(Player player) {
		ModelAndView mv = new ModelAndView();
		Player p = dao.create(player);
		mv.addObject("created", p);
		mv.setViewName("WEB-INF/views/result.jsp");
		return mv;

	}

	@RequestMapping(path = "deletePlayer.do", method = RequestMethod.POST)
	public ModelAndView deletePlayer(@RequestParam(name = "id") int id) {
		ModelAndView mv = new ModelAndView();
		Player p = dao.retrievebyId(id);
		boolean b = dao.delete(id);
		mv.addObject("deleted", b);
		mv.setViewName("WEB-INF/views/deleted.jsp");
		return mv;

	}
	@RequestMapping(path = "updatePlayer.do", method = RequestMethod.GET)
	public ModelAndView showUpdatePlayer(@RequestParam(name = "id") int id) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("id", id);
		mv.addObject("player", dao.retrievebyId(id));
		mv.setViewName("WEB-INF/views/update.jsp");
		return mv;
		
	}
	@RequestMapping(path = "updatedPlayer.do", method = RequestMethod.POST)
	public ModelAndView updatePlayer(@RequestParam(name = "id") int id, Player p) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("player", dao.update(id, p));
		mv.setViewName("WEB-INF/views/updated.jsp");
		return mv;		
	}

}
