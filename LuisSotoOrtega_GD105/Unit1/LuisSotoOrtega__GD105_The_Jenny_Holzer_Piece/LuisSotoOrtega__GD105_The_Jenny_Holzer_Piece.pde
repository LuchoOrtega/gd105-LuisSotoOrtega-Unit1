/*
Luis Soto Ortega
The Jenny Holzer Piece
GD 105
*/

// this code adds the font
PFont gillsans;

// this code block runs once
void setup(){
  // canvas size
  size(800, 800);
  gillsans = loadFont("GillSansMT-BoldItalic-80.vlw");
}

// this code block runs every frame
void draw(){
  // change background color
  background(#5404e5);
  
  // background design
  fill(#01e1aa);
  stroke(#01e1aa);
  triangle(800, 400, 800, 250, 400, 400);
  triangle(800, 800, 800, 550, 400, 400);
  triangle(400, 800, 550, 800, 400, 400);
  triangle(0, 800, 250, 800, 400, 400);
  triangle(0, 400, 0, 550, 400, 400);
  triangle(0, 0, 0, 250, 400, 400);
  triangle(400, 0, 200, 0, 400, 400);
  triangle(800, 0, 800, -450, 400, 400);
  
  // text position
  translate(width * 0.5, height * 0.5);
  textAlign(CENTER, CENTER);
  
  // main text
  rotate(frameCount * 0.05);
  textFont(gillsans);
  fill(#ff21d3);
  text("It's crucial to have \nan active fantasy life", 0, 0);
  
  // blend text 1
  rotate(TAU * -0.01 * frameCount * 0.05);
  textFont(gillsans);
  fill(#fcdc06, 50);
  text("It's crucial to have \nan active fantasy life", 0, 0);
  
  // blend text 2
  rotate(TAU * -0.015 * frameCount * 0.05);
  textFont(gillsans);
  fill(#fc8404, 50);
  text("It's crucial to have \nan active fantasy life", 0, 0);
  
  // blend text 3
  rotate(TAU * -0.02 * frameCount * 0.05);
  textFont(gillsans);
  fill(#fc0c06, 50);
  text("It's crucial to have \nan active fantasy life", 0, 0);
  
  // blend text 4
  rotate(TAU * -0.03 * frameCount * 0.05);
  textFont(gillsans);
  fill(#9107fc, 50);
  text("It's crucial to have \nan active fantasy life", 0, 0);
  
  
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
