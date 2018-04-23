<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Player</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>2 Col Portfolio - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/2-col-portfolio.css" rel="stylesheet">
</head>
<body>
<!-- Navigation -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
		<div class="container">
			<a class="navbar-brand" href="index.do">NHL Player Stats</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="index.do">Home <span class="sr-only">(current)</span>
					</a></li>
				</ul>
			</div>
		</div>
	</nav>
	
	
	<div class="container">
        <div class="row">
          <div class="col text-center">
          <br>
          <br>
<h3> Updated Player Attributes </h3>
<br>
<tr>  
  <td>First Name: ${player.firstName}</td> <br>
  <td>Last Name: ${player.lastName}</td> <br>
  <td>Team: ${player.team}</td> <br>
  <td>Position: ${player.position}</td> <br>
  <td>Games Played: ${player.gamesPlayed}</td> <br>
  <td>Goals Scored: ${player.goals}</td> <br>
  <td>Assists: ${player.assists}</td> <br>
  <td>Point Total: ${player.points}</td> <br>
  <td>Plus/Minus: ${player.plusMinus}</td> <br>
  <td>Points Per Game: ${player.pointsPerGame}</td> <br>
  <td>Powerplay Goals: ${player.powerplayGoals}</td> <br>
  <td>Shorthanded Goals: ${player.shorthandedGoals}</td> <br>
  <td>Game Winning Goals: ${player.gameWinningGoals}</td> <br>
  <td>Overtime Goals: ${player.overtimeGoals}</td> <br>
  <td>Shots: ${player.shots}</td> <br>
  <td>Shot Percentage: ${player.shotPercentage}%</td> <br>
  <td>Average Time on Ice: ${player.toiPerGame}</td> <br>
  <td>Faceoff Win Percentage: ${player.fowPercentage}%</td> <br>
</tr>
<br>
<br>
<br>


</p>
</div>
</div>
</div>
 <!-- Footer -->
    <footer class="py-5 bg-dark fixed-bottom">
      <div class="container">
        <p class="m-0 text-center text-white">Developed and Created by Mark Coleman</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>