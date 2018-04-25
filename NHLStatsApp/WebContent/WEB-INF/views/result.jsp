<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Results</title>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/2-col-portfolio.css" rel="stylesheet">
</head>
</head>
<body>
 <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.do">NHL Player Stats</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.do">Home
                <span class="sr-only">(current)</span>
              </a>
          </ul>
        </div>
      </div>
    </nav>
<div class="container">
        <div class="row">
          <div class="col text-center">
<c:choose>


  <c:when test="${not empty player}">
<tr>
  <td> <img src="${player.imageURL}"></td> <br>
  <td>2017-2018 Season Offensive Rank: ${player.id} </td> <br>
  
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
<h3> ${player.firstName } ${player.lastName }'s Home Arena Location </h3> 
 <iframe
        src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d12294.412555788791!2d${player.longitude}!3d${player.latitude}!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1524343863196"
        width="100%" height="400" frameborder="0" style="border: 0"
        allowfullscreen></iframe>
<br>    <br>
<form action="updatePlayer.do" method="GET">
<input type="hidden" name="id" value="${player.id }"/>
    <button type="submit" class="btn btn-primary">Update Player</button>
</form>
<br>
<form action="deletePlayer.do" method="POST">
<input type="hidden" name="id" value="${player.id }"/>
  <button type="submit" class="btn btn-primary">Delete Player</button>
  </form>
  <br> 
<br>
  </c:when>
  <c:when test="${not empty players}">
 <p> <c:forEach var="s" items="${players}">
<tr>
  <td> <img src="${s.imageURL}"></td> <br>
  <td>2017-2018 Season Offensive Rank: ${s.id} </td> <br>
  
  <td>First Name: ${s.firstName}</td> <br>
  <td>Last Name: ${s.lastName}</td> <br>
  <td>Team: ${s.team}</td> <br>
  <td>Position: ${s.position}</td> <br>
  <td>Games Played: ${s.gamesPlayed}</td> <br>
  <td>Goals Scored: ${s.goals}</td> <br>
  <td>Assists: ${s.assists}</td> <br>
  <td>Point Total: ${s.points}</td> <br>
  <td>Plus/Minus: ${s.plusMinus}</td> <br>
  <td>Points Per Game: ${s.pointsPerGame}</td> <br>
  <td>Powerplay Goals: ${s.powerplayGoals}</td> <br>
  <td>Shorthanded Goals: ${s.shorthandedGoals}</td> <br>
  <td>Game Winning Goals: ${s.gameWinningGoals}</td> <br>
  <td>Overtime Goals: ${s.overtimeGoals}</td> <br>
  <td>Shots: ${s.shots}</td> <br>
  <td>Shot Percentage: ${s.shotPercentage}%</td> <br>
  <td>Average Time on Ice: ${s.toiPerGame}</td> <br>
  <td>Faceoff Win Percentage: ${s.fowPercentage}%</td> <br>
</tr>
</c:forEach> </p>

  </c:when>
  <c:when test="${not empty created}">
  <h3> Your Created Player </h3>
  <br>
  <tr>
  <td>Player ID: ${created.id} </td> <br>
  <td>First Name: ${created.firstName}</td> <br>
  <td>Last Name: ${created.lastName}</td> <br>
  <td>Team: ${created.team}</td> <br>
  <td>Position: ${created.position}</td> <br>
  <td>Games Played: ${created.gamesPlayed}</td> <br>
  <td>Goals Scored: ${created.goals}</td> <br>
  <td>Assists: ${created.assists}</td> <br>
  <td>Point Total: ${created.points}</td> <br>
  <td>Plus/Minus: ${created.plusMinus}</td> <br>
  <td>Points Per Game: ${created.pointsPerGame}</td> <br>
  <td>Powerplay Goals: ${created.powerplayGoals}</td> <br>
  <td>Shorthanded Goals: ${created.shorthandedGoals}</td> <br>
  <td>Game Winning Goals: ${created.gameWinningGoals}</td> <br>
  <td>Overtime Goals: ${created.overtimeGoals}</td> <br>
  <td>Shots: ${created.shots}</td> <br>
  <td>Shot Percentage: ${created.shotPercentage}%</td> <br>
  <td>Average Time on Ice: ${created.toiPerGame}</td> <br>
  <td>Faceoff Win Percentage: ${created.fowPercentage}%</td> <br>
</tr>
  </c:when>
  <c:otherwise>
   <h1> No Results Found </h1>
  </c:otherwise>
</c:choose>

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