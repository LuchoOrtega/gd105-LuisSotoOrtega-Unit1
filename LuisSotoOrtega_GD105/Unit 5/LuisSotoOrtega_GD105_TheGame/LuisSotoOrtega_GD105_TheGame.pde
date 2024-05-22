/*
 Luis Soto Ortega
 The Game (and a little bit of Revision)
 I made a PacMan game inspired from my Mouse Reactive Piece
 I completed the game but I don't know what happened to some of my code when I woke up, my ghosts and collisions went missing when I woke up, so there's a little bit of last minute fixes
 but I still like it enough to turn in what I still have because I did a lot
 GD 105
 */
 
// bg music and sounds from freesound.org
import processing.sound.*;
SoundFile file;

PImage title;
PImage instructions;
PImage ghosts;

Timer startTimer;
 
int min = 2;
 
float pacmanX;
float pacmanY;
float pacmanDiameter = 70.0;
float pacmanAngle;
float pacmanMouth;

Cookie[] cookies;

// the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  
  //Title Screen
  title = loadImage("Title.PNG");
  instructions = loadImage("Instructions.PNG");
  
  title.resize(800, 0);
  instructions.resize(800, 0);
  
  //This determines how many rain partcles will be on screen
   cookies = new Cookie[10];
   for(int i = 0; i < cookies.length; i++) {
     //calls a new cookie
     cookies[i] = new Cookie();
   }
  
  // Starts the timer at a specific second
  startTimer = new Timer(-14);
  
  pacmanX = width/2;
  pacmanY = height/2;
  
  // Music
  file = new SoundFile(this, "Punch Deck - Brazilian Street Fight.mp3");
  file.play();
  
  background(0);
}

// The code in this block runs once every frame of the program
void draw(){
  // This created the fade trails on pacman, ghosts, and cookies
  fill(0, 100);
  quad(0, 0, 0, height, width, height, width, 0);
  
  // This code will draw PacMan until the timer runs out, which the player reaches the end
  if (min > -1) {
  //The Player
  pacMan();
  }
  
  // Title Screen setup
  // Title shows 5 seconds before game begins
  if (startTimer.getTime() <= -5) {
  image(title, 0, 120);
  }
  // Instructions show 4 to 1 seconds before game begins
  if (startTimer.getTime() >= -4 && startTimer.getTime() <= -1) {
    image(instructions, 0, 120);
  }
  
    // Timer stuff
  startTimer.countUp();
  textSize(40);
  // Draws the timer, PacMan's Hunger Meter, and cookies after 12 seconds has elapsed, until the timer runs out
  if (startTimer.getTime() >= 0 && min > -1) {
    // Creates the array of cookies
  for(int i = 0; i < cookies.length; i++) {
    cookies[i].update();
   }
      //Hunger meter
      hungerMeter();
     // Timer
      fill(255);
      text(min + ":" + (59 + (int(startTimer.getTime() * -1))), width - 90, 50);
  // Decrease the minute by 1 when time reaches 60 seconds
  if (startTimer.getTime() >= 60) {
    startTimer = new Timer(0);
    min -= 1; 
      }
    }
    
}
