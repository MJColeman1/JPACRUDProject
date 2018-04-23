<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Player</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
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
          
	<h3> Update Player Stats from 2017-2018 Season: </h3>
	<br>
	<form action="updatedPlayer.do" method="POST">
		<input type="hidden" name="id" value="${id }" /> 
		First Name: 
		<input value="${player.firstName }" name="firstName" required minlength="1" maxlength="45"/> <br> 
		Last Name:
		<input value="${player.lastName }" name="lastName" required minlength="1" maxlength="45"/> <br> 
		Team:
		<input value="${player.team }" name="team" required minlength="1" maxlength="45" /> <br> 
		Position: 
		<input value="${player.position }" name="position" required minlength="2" maxlength="2"/> <br> 
		Games Played: 
		<input value="${player.gamesPlayed }" name="gamesPlayed" required pattern="[0-9]*"/> <br>
		Goals: 
		<input value="${player.goals }" name="goals" required pattern="[0-9]*"/> <br>
		Assists: 
		<input value="${player.assists }" name="assists" required pattern="[0-9]*"/> <br>
		Points: 
		<input value="${player.points }" name="points" required pattern="[0-9]*"/> <br>
		Plus/Minus: 
		<input value="${player.plusMinus }" name="plusMinus" required pattern="^-?(0|[1-9]\d*)$"/> <br>
		Points per Game: 
		<input value="${player.pointsPerGame }" name="pointsPerGame" required pattern="^(0|[1-9]\d*)(\.\d+)?$"/> <br> 
		Powerplay Goals: 
		<input value="${player.powerplayGoals }" name="powerplayGoals" required pattern="[0-9]*"/> <br>
		Shorthanded Goals: 
		<input value="${player.shorthandedGoals }" name="shorthandedGoals" required pattern="[0-9]*"/> <br> 
		Game Winning Goals: 
		<input value="${player.gameWinningGoals }" name="gameWinningGoals" required pattern="[0-9]*"/> <br>
		Overtime Goals: 
		<input value="${player.overtimeGoals }" name="overtimeGoals" required pattern="[0-9]*"/> <br> 
		Shots: <input value="${player.shots }" name="shots" required pattern="[0-9]*"/> <br> 
		Shot Percentage: 
		<input value="${player.shotPercentage }" name="shotPercentage" required pattern="^(0|[1-9]\d*)(\.\d+)?$" /> <br>
		Time on Ice per Game: 
		<input value="${player.toiPerGame }"name="toiPerGame" required minlength="1" maxlength="10"/> <br> 
		Faceoff Win Percentage: 
		<input value="${player.fowPercentage }" name="fowPercentage" required pattern="^(0|[1-9]\d*)(\.\d+)?$"/> <br> 
		<br>
		  <button type="submit" class="btn btn-primary">Update Player</button>
	</form>
<br>
</div>
</div>
</div>
 <!-- Footer -->
    <footer class="py-5 bg-dark">
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
