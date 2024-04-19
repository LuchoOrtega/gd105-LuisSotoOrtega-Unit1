/*
 Luis Soto Ortega
 The Mouse Reactive Piece
 GD 105
 */
 
float pacmanX;
float pacmanY;
float pacmanDiameter = 70.0;
float pacmanAngle;
float pacmanMouth;

// the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  
  pacmanX = width/2;
  pacmanY = height/2;
  
}

// The code in this block runs once every frame of the program
void draw(){
  background(0);
  
  // This code creates a delay on pacman following the mouse
  int I = 20;
  float xChange = (mouseX - pacmanX)/I;
  float yChange = (mouseY - pacmanY)/I;
  pacmanX = pacmanX + xChange;
  pacmanY = pacmanY + yChange;
  
  // This code turns Pacman's angle
  pacmanAngle = atan2(mouseY-pacmanY, mouseX-pacmanX);
  
  // This code animates Pacman's mouth
  float pacmanMouthSpeed = 0.08;
  float pacmanMaxMouth = 1.5;
  pacmanMouth = (pacmanMouth + pacmanMouthSpeed) % pacmanMaxMouth;
  
  // This code draws pacman
  fill(255,255,0);
  arc(pacmanX, pacmanY, pacmanDiameter, pacmanDiameter, pacmanAngle + pacmanMouth / 2, pacmanAngle + TWO_PI - pacmanMouth / 2, PIE);
  
}
