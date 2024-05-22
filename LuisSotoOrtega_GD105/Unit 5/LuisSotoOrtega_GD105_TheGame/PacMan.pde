void pacMan() {
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
