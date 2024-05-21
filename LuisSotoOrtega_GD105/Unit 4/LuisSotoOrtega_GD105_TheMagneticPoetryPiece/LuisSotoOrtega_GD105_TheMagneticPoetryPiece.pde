/*
 Luis Soto Ortega
 The Magnetic Poetry Piece
 An original poem, inspired by Asemic: The Art of Writing (Peter Schwender, 2019)
 "To understand happiness is letting moments be what they are instead of what you think they should be, And then make the most of it"
 GD 105
 */

PImage bg;
 
String[] poems = {"To", "understand", "happiness", "is", "letting", "moments", "be", "what", "they", "are", "instead", "of", "what", "you", "think", "they", "should", "be", "And", "then", "make", "the", "most", "it"};

Rain[] rains;

Drop[] drops = new Drop[300];

int index;
 
 // the code in this setup code block runs once in the beginning
 void setup() {
   size(800, 800);
   frameRate(20);
   textAlign(CENTER, CENTER);
   bg = loadImage("CityBackground.PNG");
   bg.resize(800, 0);
   
   //This determines how many rain partcles will be on screen
   rains = new Rain[100];
   for(int i = 0; i < rains.length; i++) {
     //calls a new rain particle
     rains[i] = new Rain();
   }
     
   //This code calls a new rain drop
     for(int i = 0; i < drops.length; i++) {
     drops[i] = new Drop();
   }
   
  background(230, 230, 250);
 }
 
 // The code in this block runs once every frame of the program
 void draw() {
   //Draws the background
   image(bg, 0, 0);
   
   //Draws the rain drops in the background
   for(int i = 0; i < drops.length; i++) {
   drops[i].fall();
   drops[i].show();
   drops[i].fall();
   drops[i].show();
   }
   
   for(int i = 0; i < rains.length; i++) {
     //Draws the array of rain particles
    rains[i].update();
   }
   
   // Adds a fade effect for the rain trails
   noStroke();
   fill(230, 230, 250, 25);
   quad(0, 0, 0, 800, 800, 800, 800, 0);
   
   //Window
   strokeWeight(20);
   stroke(0);
   line(0, 0, 800, 0);
   line(800, 0, 800, 800);
   line(800, 800, 0, 800);
   line(0, 800, 0, 0);
   strokeWeight(10);
   line(400, 0, 400, 800);
   line(0, 400, 800, 400);
   
   // save the image
  if (frameCount == 1) {
    save("output.png");
  }
 }
 
 // Calls a class for rain particles
 class Rain {
   float x, y;
   int size;
   color col;
   String words;
   
   Rain(float r_X, float r_Y, int r_size, color r_col) {
   x = r_X;
   y = r_Y;
   size = r_size;
   col = r_col;
   }
   
   // First rain particle size, color, x pos, y pos
   Rain(){
     // Particle size
     size = (int)random(50, 100);
     // color r, g, b, opacity
     col = color(random(9, 54), random(136, 180), random(249, 254), random(40, 200));
     // x pos
     x = random(width);
     // y pos
     y = 0 + size / 2.0 + random(1000);
     // This runs once each time it draws a rain bubble, picking text at random
     words = poems[int(random(poems.length))];
   }
   
   // Draws the rain particles
   void update(){
     fill(col);
     noStroke();
     circle(x, y, size);
     fill(255);
     text(words, x, y);
     
     //Particle size shrink
     size--;
     //Particle x pos wigglyness
     x += random(-7, 7);
     //Partcle y pos speed going down
     y += 10;
     
     // Resets the particles when they are no longer visible
     if(size <= 0) {
       size = (int)random(50, 100);
       y = 0 + size / 2.0 - 50;
       x = random(width);
       
     }
   } 
 }
 
 // Class for background rain drops
 class Drop {
   float a = random(width);
   float b = random(-200, -100);
   float yspeed = random(10, 20);
   
   //Fall speed
   void fall() {
     b = b + yspeed;
     
     if (b > height) {
       b = random(-200, -100);
     }
   }
   
   //Displays rain drops
   void show() {
     strokeWeight(1);
     stroke(138, 43, 226);
     line(a, b, a, b + 10);
   }
   
 }
