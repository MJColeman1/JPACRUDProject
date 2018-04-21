package com.skilldistillery.jpacrud.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Player {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	private String position;

	@Column(name = "games_played")
	private int gamesPlayed;

	private int goals;

	private int assists;

	private int points;

	@Column(name = "plus_minus")
	private int plusMinus;

	@Column(name = "points_per_game")
	private double pointsPerGame;

	@Column(name = "powerplay_goals")
	private int powerplayGoals;

	@Column(name = "shorthanded_goals")
	private int shorthandedGoals;

	@Column(name = "game_winning_goals")
	private int gameWinningGoals;

	@Column(name = "overtime_goals")
	private int overtimeGoals;

	private int shots;

	@Column(name = "shot_percentage")
	private double shotPercentage;

	@Column(name = "toi_pg")
	private String toiPerGame;

	@Column(name = "fow_percentage")
	private double fowPercentage;

	private String team;
	
	@Column(name = "img_url")
	private String imageURL;
	
	private double latitude;
	
	private double longitude;

	public Player() {

	}

	public Player(int id, String firstName, String lastName, String position, int gamesPlayed, int goals, int assists,
			int points, int plusMinus, double pointsPerGame, int powerplayGoals, int shorthandedGoals,
			int gameWinningGoals, int overtimeGoals, int shots, double shotPercentage, String toiPerGame,
			double fowPercentage, String team, String imageURL, double latitude, double longitude) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.position = position;
		this.gamesPlayed = gamesPlayed;
		this.goals = goals;
		this.assists = assists;
		this.points = points;
		this.plusMinus = plusMinus;
		this.pointsPerGame = pointsPerGame;
		this.powerplayGoals = powerplayGoals;
		this.shorthandedGoals = shorthandedGoals;
		this.gameWinningGoals = gameWinningGoals;
		this.overtimeGoals = overtimeGoals;
		this.shots = shots;
		this.shotPercentage = shotPercentage;
		this.toiPerGame = toiPerGame;
		this.fowPercentage = fowPercentage;
		this.team = team;
		this.imageURL = imageURL;
		this.latitude = latitude;
		this.longitude = longitude;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getGamesPlayed() {
		return gamesPlayed;
	}

	public void setGamesPlayed(int gamesPlayed) {
		this.gamesPlayed = gamesPlayed;
	}

	public int getGoals() {
		return goals;
	}

	public void setGoals(int goals) {
		this.goals = goals;
	}

	public int getAssists() {
		return assists;
	}

	public void setAssists(int assists) {
		this.assists = assists;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getPlusMinus() {
		return plusMinus;
	}

	public void setPlusMinus(int plusMinus) {
		this.plusMinus = plusMinus;
	}

	public double getPointsPerGame() {
		return pointsPerGame;
	}

	public void setPointsPerGame(double pointsPerGame) {
		this.pointsPerGame = pointsPerGame;
	}

	public int getPowerplayGoals() {
		return powerplayGoals;
	}

	public void setPowerplayGoals(int powerplayGoals) {
		this.powerplayGoals = powerplayGoals;
	}

	public int getShorthandedGoals() {
		return shorthandedGoals;
	}

	public void setShorthandedGoals(int shorthandedGoals) {
		this.shorthandedGoals = shorthandedGoals;
	}

	public int getGameWinningGoals() {
		return gameWinningGoals;
	}

	public void setGameWinningGoals(int gameWinningGoals) {
		this.gameWinningGoals = gameWinningGoals;
	}

	public int getOvertimeGoals() {
		return overtimeGoals;
	}

	public void setOvertimeGoals(int overtimeGoals) {
		this.overtimeGoals = overtimeGoals;
	}

	public int getShots() {
		return shots;
	}

	public void setShots(int shots) {
		this.shots = shots;
	}

	public double getShotPercentage() {
		return shotPercentage;
	}

	public void setShotPercentage(double shotPercentage) {
		this.shotPercentage = shotPercentage;
	}

	public String getToiPerGame() {
		return toiPerGame;
	}

	public void setToiPerGame(String toiPerGame) {
		this.toiPerGame = toiPerGame;
	}

	public double getFowPercentage() {
		return fowPercentage;
	}

	public void setFowPercentage(double fowPercentage) {
		this.fowPercentage = fowPercentage;
	}

	public String getTeam() {
		return team;
	}

	public void setTeam(String team) {
		this.team = team;
	}

	public String getImageURL() {
		return imageURL;
	}

	public void setImageURL(String imageURL) {
		this.imageURL = imageURL;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public int getId() {
		return id;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Player [id=").append(id).append(", firstName=").append(firstName).append(", lastName=")
				.append(lastName).append(", position=").append(position).append(", gamesPlayed=").append(gamesPlayed)
				.append(", goals=").append(goals).append(", assists=").append(assists).append(", points=")
				.append(points).append(", plusMinus=").append(plusMinus).append(", pointsPerGame=")
				.append(pointsPerGame).append(", powerplayGoals=").append(powerplayGoals).append(", shorthandedGoals=")
				.append(shorthandedGoals).append(", gameWinningGoals=").append(gameWinningGoals)
				.append(", overtimeGoals=").append(overtimeGoals).append(", shots=").append(shots)
				.append(", shotPercentage=").append(shotPercentage).append(", toiPerGame=").append(toiPerGame)
				.append(", fowPercentage=").append(fowPercentage).append(", team=").append(team).append(", imageURL=")
				.append(imageURL).append(", latitude=").append(latitude).append(", longitude=").append(longitude)
				.append("]");
		return builder.toString();
	}

	
	
}