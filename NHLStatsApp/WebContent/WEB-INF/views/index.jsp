<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<html>
<head>
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
        <a class="navbar-brand" href="index.do">NHL Stats</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="#">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<form action="getPlayers.do" method="GET">
  <input type="submit" value="Show Top 10 Players"/>
</form> 
 <br>
 <br>
  Search by Player Rank for the 2017-2018 Season: 
<form action="searchById.do" method="GET">
  <input type="text" name="pid" required pattern="[0-9]*"/>
  <input type="submit" value="Search"/>
</form> 
<br>
<br>
<br>

Create Your Own Player for the 2017-2018 Season:
<form action="createPlayer.do" method="POST">
First Name:
  <input type="text" name="firstName" required minlength="1" maxlength="45"/> <br>
  Last Name:
  <input type="text" name="lastName" required minlength="1" maxlength="45"/> <br>
  Team:
  <input type="text" name="team" required minlength="1" maxlength="45"/> <br>
  Position:
  <input type="text" name="position" required minlength="2" maxlength="2"/> <br>
  Games Played:
  <input type="text" name="gamesPlayed" required pattern="[0-9]*"/> <br>
  Goals:
  <input type="text" name="goals" required pattern="[0-9]*"/> <br>
  Assists:
  <input type="text" name="assists" required pattern="[0-9]*"/> <br>
  Points:
  <input type="text" name="points" required pattern="[0-9]*"/> <br>
  Plus/Minus:
  <input type="text" name="plusMinus" required pattern="[0-9]*"/> <br>
  Points per Game:
  <input type="text" name="pointsPerGame" required pattern="[0-9]*"/> <br>
  Powerplay Goals:
  <input type="text" name="powerplayGoals" required pattern="[0-9]*"/> <br>
  Shorthanded Goals:
  <input type="text" name="shorthandedGoals" required pattern="[0-9]*"/> <br>
  Game Winning Goals:
  <input type="text" name="gameWinningGoals" required pattern="[0-9]*"/> <br>
  Overtime Goals:
  <input type="text" name="overtimeGoals" required pattern="[0-9]*"/> <br>
  Shots:
  <input type="text" name="shots" required pattern="[0-9]*"/> <br>
  Shot Percentage:
  <input type="text" name="shotPercentage" required pattern="[0-9]*" /> <br>
  Time on Ice per Game:
  <input type="text" name="toiPerGame" required pattern="[0-9]*"/> <br>
  Faceoff Win Percentage:
  <input type="text" name="fowPercentage" required pattern="[0-9]*"/> <br>
  <input type="submit" value="Create"/>
</form> 
    
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
<%-- <c:forEach var="s" items="${players}">
<tr>
  <td>${s.firstName}</td>
  <td>${s.lastName}</td>
  <td>${s.goals}</td>
  <td>${s.assists}</td>
  <td>${s.points}</td>
  <td>${s.toiPerGame}</td>
  <td> <img src="${s.imageURL}"></td>
</tr>
</c:forEach> --%>


</body>
</html>