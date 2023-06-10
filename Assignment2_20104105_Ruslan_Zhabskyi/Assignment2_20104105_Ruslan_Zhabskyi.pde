/*
** Programming assignment 2
** Srudent name: Ruslan Zhabskyi
** String Student number = 20104105
*/

// Importing the necessary Java Swing library
import javax.swing.*;

// Declaration of Objects
Hero hero;
Villain villain;
Fire fire; // Hero's weapon in the game
Player player;
Rain [] rain = new Rain [3]; // An array of rain of lives objects
Pattern pattern; // Used as background pattern

// Booleans for Key Handler
boolean shoot=false;
boolean jump=false;
boolean right=false;
boolean left=false;

// Game data
int liveLost = 0;
int score = 0;
int maxLivesPerGame = 3;
int numberOfGames = 25;

// Images and font
PImage backgroundImage;
PImage heroTwoImage;
PImage heroImage;
PImage villainImage;
PImage fireImage;
PFont myFont;

void setup() {
  // Create canvas and set background image
  size(1280, 720);
  noCursor();
 
  backgroundImage = loadImage("back.png");     // Loads a background image
  heroTwoImage = loadImage("hero-2.png");      // Loads an image for the player character
  fireImage=loadImage("fire.png");             // Loads an image for the fire object
  heroImage=loadImage("hero.png");             // Loads an image for the player character
  villainImage=loadImage("villain.png");       // Loads an image for the villain character

  /* 
  **Setting hero, villain and fire
  **Creates instances of the Hero, Villain, Fire, and Pattern classes
  */  
  hero = new Hero(80);
  villain = new Villain(60, 60);
  fire = new Fire(10);
  pattern = new Pattern (40, 40, 2, 1); // Overloaded constructor
  
  /* 
  ** Array of objects and while loop
  ** Creates an array of Rain objects, and uses a while loop to initialize each object
  */
  int i = 0;
  while (i<rain.length) {
    rain[i] = new Rain(10, i+1); // Overloaded constructor
    i++;
  }
  
  //create a player object with the data entered by the user
  player = new Player(JOptionPane.showInputDialog("Enter the player name (max 6 chars: "), numberOfGames);
  
}

void draw() {
  
  background(0); // Sets the background color to black
  
  // Update and display methods
  pattern.update();
  pattern.display();
  image(backgroundImage, width*.60, height*.33); // Displays image of the dragon on the background 
  
  // Update and display methods for hero and fire 
  hero.update();
  hero.display();
  fire.update();
  fire.display();
  
  // Update and display methods for rain objects using a for loop
  for (int i = 0; i<rain.length; i++) {
    rain[i].update();
    rain[i].display();
  }

  // Calls the gameInfoDisplay() method to display game information (player name, lives left and score board)
  gameInfoDisplay();
  
  // Displays the villain character and checks for collisions with the fire object
  if (liveLost < maxLivesPerGame) {
    villain.display();
    
  /*
  ** Collision Detection between fire and villain
  */
    boolean strike = villainHit (fire, villain);
    if (strike==true) {
      score+=1; // add score every time fire hits the villain
      println(score);
      fire.resetFire();
    }
  }
  
  //If the player has no lives left in the current game
  else {
    player.addScore(score);

    int reply = JOptionPane.showConfirmDialog(null,
      "Game Over! You scored " + score + "! Your max score was " + player.highestScore() +  ".\nWould you like to beat it?",
      "Play next game?",
      JOptionPane.YES_NO_OPTION);
    if (reply == JOptionPane.YES_OPTION) {
      //player chooses to play the next game
      resetGame();
    } else {
      gameOver();
    }
  }
    
  villain.update(); // Update method for villain


  /*
  ** Collision Detection between hero and villain
  */
  boolean collisionHeroVillain = heroHit(hero, villain);
  {
    boolean lifeLost = false;
    if (collisionHeroVillain==true) {
      villain.resetVillain();
      lifeLost = true;
      liveLost++;
      println("Lives lost: " + liveLost);
    }
  }
  
  /*
  ** Collision Detection between hero and rain objects using a for loop
  */
  for (int i = 0; i<rain.length; i++) {
    boolean collisionHeroRain = heroCollectsRain(hero, rain[i]);
    {
      if (collisionHeroRain==true) {
        liveLost--;
        rain[i].resetRain();
        println("Lives: " + 1);
      }
    }
  } 

  /*
  **Key Handler
  */
  if (jump==true) {
    hero.up();
  }

  if (right==true) {
    hero.right();
  }

  if (left==true) {
    hero.left();
  }

  if (shoot==true) {
    fire.setSpeedX(20);
  }
}

                                             
/*
**Key Handler methods
*/

public void keyPressed() {
  if (key==32) {
    shoot=true;
  }
  if (key == CODED) {
    if (keyCode == RIGHT) {
      right=true;
    }
    if (keyCode == LEFT) {
      left=true;
    }
    if (keyCode == UP) {
      jump=true;
    }
  }
}

public void keyReleased() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      right=false;
    }
    if (keyCode == LEFT) {
      left=false;
    }
    if (keyCode == UP) {
      jump=false;
    }
  }
}

/*
**Collision detection/avoidance bespoke methods
*/

boolean villainHit (Fire fire, Villain villain) {
//http://www.jeffreythompson.org/collision-detection/point-rect.php
  if (fire.getXCoord()>=villain.getXCoord() &&
    fire.getXCoord()<=villain.getXCoord()+villain.getVillainWidth() &&
    fire.getYCoord()>=villain.getYCoord() &&
    fire.getYCoord()<=villain.getYCoord()+villain.getVillainHeight()) {
    return true;
  }
  return false;  
}

boolean heroHit (Hero hero, Villain villain) {
//http://www.jeffreythompson.org/collision-detection/point-rect.php
  if (hero.getXCoord()>=villain.getXCoord() &&
    hero.getXCoord()<=villain.getXCoord()+villain.getVillainWidth() &&
    hero.getYCoord()>=villain.getYCoord() &&
    hero.getYCoord()<=villain.getYCoord()+villain.getVillainHeight()) {
    return true;
  }
  return false;
}

boolean heroCollectsRain (Hero hero, Rain rain) {
  //http://www.jeffreythompson.org/collision-detection/circle-circle.php
  float distX = hero.getXCoord() - rain.getXCoord();
  float distY = hero.getYCoord() - rain.getYCoord();
  float distance = sqrt( (distX*distX) + (distY*distY) );
  if (distance <= hero.getDiameter()/2+rain.getDiameter()/2) {
    return true;
  }
  return false;
}

/*
**Game control bespoke methods
 */
void resetGame()
{
  liveLost = 0;  //resets the lives lost in the current game to zero
  score = 0;    //resets the score of the current game to zero

  //while loop to reset rain objects
  int i = 0;
  while (i<rain.length) {
    rain[i].resetRain(i+1);
    i++;
  }
}

void gameOver()
{
  JOptionPane.showMessageDialog(null, player.getPlayerName() + ", your game is over! \n\n"

    + "\n\n"                     + player.toString() // prints scores in DESC order
    + "\n\nHighest Score: "      + player.highestScore()
    +   "\nLowest Score:  "      + player.lowestScore()
    +   "\nAverage Score: "      + player.averageScore());
  exit();
}

// Method to display player name, lives left and scoreboard
void gameInfoDisplay() {
  
  myFont = createFont("Roboto", 25); // https://processing.org/reference/createFont_.html
  textFont(myFont);

  text("Player: " + player.getPlayerName(), width*.05, height*.1);
  text("Current Score: " + score, width*.8, height*.1);
  text("Lives: " + (maxLivesPerGame-liveLost), width*.05, height*.15);
  text(player.toString(3), width*.8, height*.15);
}
