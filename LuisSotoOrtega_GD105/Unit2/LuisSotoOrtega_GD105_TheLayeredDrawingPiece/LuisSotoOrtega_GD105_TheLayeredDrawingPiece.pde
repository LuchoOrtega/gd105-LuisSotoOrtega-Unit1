/*
Luis Soto Ortega
The Layered Drawing Piece version 2
GD 105
*/

// this code creates float variables for square position
float sqrX;
float sqrY;
float r, g, b;
color col;

// the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  background(0);
  noSmooth();
  // initializes color
  r = 255;
  g = 140;
  b = 50;
  
}

// The code in this block runs once every frame of the program
void draw(){
  
  // draws the sqaure
  rotate(random(TAU));
  col = color(r, g, b);
  fill(col);
  square(sqrX, sqrY, 24.0);
  
  // draws extra squares
  rotate(random(TAU));
  col = color(r, g, b);
  fill(col);
  square(sqrX, sqrY, 24.0);
  
  // randomizes the x and y positions every frame
  sqrX = random(width);
  sqrY = random(height);
  
  // adds or removes color of red, green, blue every frame
  r += random(-5, 5);
  g += random(-5, 5);
  b += random(-5, 5);
  
  // constrains the values of color
  r = constrain(r, 50, 255);
  g = constrain(g, 50, 255);
  b = constrain(b, 50, 255);
  
}
