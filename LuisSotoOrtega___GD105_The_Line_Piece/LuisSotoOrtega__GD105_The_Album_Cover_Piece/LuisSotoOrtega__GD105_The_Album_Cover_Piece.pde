/*
Luis Soto Ortega
The Album Cover Piece
GD 105
*/

// this code block runs once
void setup(){
  // canvas size
  size(800, 800);
}

// this code block runs every frame
void draw(){
  // change background color
  background(#000000);
  
  // This is the moon in the back
  fill(#ffffff);
  strokeWeight(1);
  stroke(0);
  circle(width * 0.5, height * 0.5, width * 0.50);
  circle(width * 0.5, height * 0.5, width * 0.48);
  circle(width * 0.5, height * 0.5, width * 0.43);
  circle(width * 0.5, height * 0.5, width * 0.35);
  
  strokeWeight(5);
  
  // first layer of ocean
  fill(#04f0ff);
  triangle(0, 480, 100, 550, 200, 480);
  triangle(200, 480, 300, 550, 400, 480);
  triangle(400, 480, 500, 550, 600, 480);
  triangle(600, 480, 700, 550, 800, 480);
  
  // second layer of ocean
  fill(#04c7ff);
  triangle(0, 550, 0, 480, 100, 550);
  triangle(100, 550, 200, 480, 300, 550);
  triangle(300, 550, 400, 480, 500, 550);
  triangle(500, 550, 600, 480, 700, 550);
  triangle(700, 550, 800, 480, 800, 550);
  
  // third layer of ocean
  fill(#048cff);
  triangle(0, 550, 0, 620, 100, 550);
  triangle(100, 550, 200, 620, 300, 550);
  triangle(300, 550, 400, 620, 500, 550);
  triangle(500, 550, 600, 620, 700, 550);
  triangle(700, 550, 800, 620, 800, 550);
  
  // fourth layer of ocean
  fill(#0462ff);
  triangle(0, 620, 100, 550, 200, 620);
  triangle(200, 620, 300, 550, 400, 620);
  triangle(400, 620, 500, 550, 600, 620);
  triangle(600, 620, 700, 550, 800, 620);
  
  // fifth layer of ocean
  fill(#0439ff);
  triangle(0, 620, 100, 690, 200, 620);
  triangle(200, 620, 300, 690, 400, 620);
  triangle(400, 620, 500, 690, 600, 620);
  triangle(600, 620, 700, 690, 800, 620);
  
  // sixth layer of ocean
  fill(#0410ff);
  triangle(0, 690, 0, 620, 100, 690);
  triangle(100, 690, 200, 620, 300, 690);
  triangle(300, 690, 400, 620, 500, 690);
  triangle(500, 690, 600, 620, 700, 690);
  triangle(700, 690, 800, 620, 800, 690);
  
  // seventh layer of ocean
  fill(#3d01fe);
  triangle(0, 690, 0, 760, 100, 690);
  triangle(100, 690, 200, 760, 300, 690);
  triangle(300, 690, 400, 760, 500, 690);
  triangle(500, 690, 600, 760, 700, 690);
  triangle(700, 690, 800, 760, 800, 690);
  
  // eighth layer of ocean
  fill(#6e04ff);
  triangle(0, 760, 100, 690, 200, 760);
  triangle(200, 760, 300, 690, 400, 760);
  triangle(400, 760, 500, 690, 600, 760);
  triangle(600, 760, 700, 690, 800, 760);
  
  // ninth layer of ocean
  fill(#9204ff);
  triangle(0, 760, 100, 830, 200, 760);
  triangle(200, 760, 300, 830, 400, 760);
  triangle(400, 760, 500, 830, 600, 760);
  triangle(600, 760, 700, 830, 800, 760);
  
  // tenth layer of ocean
  fill(#c104ff);
  triangle(0, 830, 0, 760, 100, 830);
  triangle(100, 830, 200, 760, 300, 830);
  triangle(300, 830, 400, 760, 500, 830);
  triangle(500, 830, 600, 760, 700, 830);
  triangle(700, 830, 800, 760, 800, 830);
  
  // moon design
  strokeWeight(5);
  line(0, 470, 800, 470);
  strokeWeight(7);
  line(0, 455, 800, 455);
  strokeWeight(9);
  line(0, 435, 800, 435);
  strokeWeight(12);
  line(0, 405, 800, 405);
  
  // stars
  stroke(255);
  strokeWeight(10);
  point(112,107);
  point(487,54);
  point(674,157);
  point(77,275);
  point(287,148);
  point(735,336);
  point(139,407);
  
  
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
