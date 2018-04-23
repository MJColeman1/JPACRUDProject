# JPACRUDProject

## Week 8 Homework Project for Skill Distillery

### Description
The objective of this project is to create an application that allows a user to search a database of the best NHL players from the 2017-2018 regular season and view their stats. The application supports full CRUD operations to allow a user to create their own player, retrieve a player's stats from the database, update a player's stats, and delete a player from the database.

### How To Run This Application
To run this application, the user starts at the homepage and has 3 options to select from: search for a player by their rank, show all players in the database, or create a player by filling out a form and inputting the required fields accurately. If the user chooses to search for a player and finds a match, they are presented with that player's stats and given the option to either update or delete the player; the same two options to update or delete are also present after the form to create a player has been submitted. 

### Technologies Used
* Spring MVC
* Controllers
* J-Unit Tests
* Exception Handling
* Java Persistence API
* Interfaces
* Managing Dependencies Utilizing Gradle
* JSPs
* MySQL Workbench for Database Creation
* Entity Classes
* HTML/CSS/Bootstrap
* Form Validation

### Lessons Learned
The biggest lesson learned involves Spring and where certain keywords need to match for the controller and JSP to function correctly. My understanding of the Request Param and Request Mapping fields greatly increased while working on this project.  
Additionally, I learned how to use Command Objects, which made things much simpler in the end. My database entities had 22 fields of data so the idea of having 22 @RequestParam notations in each controller method would have been highly inefficient and a waste of time. Command Objects helped to really simplify things and let Spring do the heavy lifting for me. 
