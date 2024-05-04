/*
 Luis Soto Ortega
 The Clock Piece
 GD 105
 */
 
int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;

PFont gillsans;

 // the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  gillsans = loadFont("GillSansMT-BoldItalic-80.vlw");

  cx = width / 2;
  cy = height / 2;
  
  float radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
}

// The code in this block runs once every frame of the program
void draw() {
  background(0);
  
  // This code draws the clock
  fill(255);
  noStroke();
  circle(cx, cy, clockDiameter);
  stroke(0);
  strokeWeight(3);
  circle(width/2, height/2, 10);
  
  float sec = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float min = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI; 
  float hour = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
 
  //This code draws the hands of the clock
  //Hour hand
  strokeWeight(7);
  line(cx, cy, cx + cos(hour) * hoursRadius, cy + sin(hour) * hoursRadius);
  //Minutes hand
  stroke(0);
  strokeWeight(4);
  line(cx, cy, cx + cos(min) * minutesRadius, cy + sin(min) * minutesRadius);
  //Seconds hand
  stroke(255, 0, 0);
  strokeWeight(3);
  line(cx, cy, cx + cos(sec) * secondsRadius, cy + sin(sec) * secondsRadius);
  
  //This code draws the seconds dots around the clock
  stroke(150, 150, 150);
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);

  }
  endShape();
  
  //This code draws the hours dots around the clock
  stroke(100, 100, 100);
  strokeWeight(5);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=30) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);

  }
  endShape();
  
  //This code displays the numbers on the clock
  fill(0);
  textFont(gillsans);
  textSize(50);
  text("12", width/2 - 25, 90);
  text("1", width/2 - 25 + 160, 90 + 40);
  text("2", width/2 - 25 + 280, 90 + 150);
  text("3", width/2 - 25 + 340, 90 + 325);
  text("4", width/2 - 25 + 280, 90 + 500);
  text("5", width/2 - 25 + 160, 90 + 615);
  text("6", width/2 - 25 + 10, 90 + 650);
  text("7", width/2 - 25 - 145, 90 + 615);
  text("8", width/2 - 25 - 260, 90 + 500);
  text("9", width/2 - 25 - 315, 90 + 325);
  text("10", width/2 - 25 - 280, 90 + 150);
  text("11", width/2 - 25 - 160, 90 + 40);
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
  
}
