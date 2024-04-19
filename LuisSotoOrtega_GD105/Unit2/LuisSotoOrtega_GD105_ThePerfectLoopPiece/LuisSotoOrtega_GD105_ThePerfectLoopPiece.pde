/*
 Luis Soto Ortega
 The Perfect Loop Piece
 GD 105
 */
 
int totalFrames = 120;
int counter = 0;
 
 // the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  
}

// The code in this block runs once every frame of the program
void draw(){
  // Saves the frames to make a looping gif with counter number format
  float percent = float(counter) / totalFrames;
  render(percent);
  saveFrame("output/gif-"+nf(counter,4)+".png");
  counter++;
  // This code tells the program to stop after all frames is done
  if (counter == totalFrames) {
    exit();
  }
}

// The code in this block creates a loop
void render(float percent) {
  background(0);
  
  fill(#000000);
  strokeWeight(1);
  circle(width/2, height/2, 75);
  
  fill(255);
  
  // Rotates everything below
  float angle = percent * TWO_PI;
  translate(width/2, height/2);
  rectMode(CENTER);
  noFill();
  stroke(255);
  strokeWeight(5);
  rotate(angle*-1);

  // First ring
  arc(width * 0.00, height * 0.00, 100, 100, 0, TAU * 0.10);
  arc(width * 0.00, height * 0.00, 100, 100, 1.5, TAU * 0.35);
  arc(width * 0.00, height * 0.00, 100, 100, 3, TAU * 0.60);
  arc(width * 0.00, height * 0.00, 100, 100, 4.5, TAU * 0.85);
  
  rotate(angle);
  rotate(angle);
  
  // Second ring
  arc(width * 0.00, height * 0.00, 325, 325, 0, TAU * 0.05);
  arc(width * 0.00, height * 0.00, 325, 325, 0.75, TAU * 0.175);
  arc(width * 0.00, height * 0.00, 325, 325, 1.5, TAU * 0.280);
  arc(width * 0.00, height * 0.00, 325, 325, 2.25, TAU * 0.40);
  arc(width * 0.00, height * 0.00, 325, 325, 3, TAU * 0.525);
  arc(width * 0.00, height * 0.00, 325, 325, 3.75, TAU * 0.635);
  arc(width * 0.00, height * 0.00, 325, 325, 4.5, TAU * 0.770);
  arc(width * 0.00, height * 0.00, 325, 325, 5.35, TAU * 0.920);
  
  rotate(angle*-1);
  rotate(angle*-1);
  rotate(angle*-1);
  
  // Third ring
  arc(width * 0.00, height * 0.00, 550, 550, 0, TAU * 0.05);
  arc(width * 0.00, height * 0.00, 550, 550, 0.75, TAU * 0.175);
  arc(width * 0.00, height * 0.00, 550, 550, 1.5, TAU * 0.280);
  arc(width * 0.00, height * 0.00, 550, 550, 2.25, TAU * 0.40);
  arc(width * 0.00, height * 0.00, 550, 550, 3, TAU * 0.525);
  arc(width * 0.00, height * 0.00, 550, 550, 3.75, TAU * 0.635);
  arc(width * 0.00, height * 0.00, 550, 550, 4.5, TAU * 0.770);
  arc(width * 0.00, height * 0.00, 550, 550, 5.35, TAU * 0.920);
  
  rotate(angle);
  rotate(angle);
  rotate(angle);
  rotate(angle);
  rotate(angle);
  
  // Fourth ring
  arc(width * 0.00, height * 0.00, 775, 775, 0, TAU * 0.05);
  arc(width * 0.00, height * 0.00, 775, 775, 0.75, TAU * 0.175);
  arc(width * 0.00, height * 0.00, 775, 775, 1.5, TAU * 0.280);
  arc(width * 0.00, height * 0.00, 775, 775, 2.25, TAU * 0.40);
  arc(width * 0.00, height * 0.00, 775, 775, 3, TAU * 0.525);
  arc(width * 0.00, height * 0.00, 775, 775, 3.75, TAU * 0.635);
  arc(width * 0.00, height * 0.00, 775, 775, 4.5, TAU * 0.770);
  arc(width * 0.00, height * 0.00, 775, 775, 5.35, TAU * 0.920);
  
  rotate(angle);
  
  // Fifth ring
  arc(width * 0.00, height * 0.00, 1000, 1000, 0, TAU * 0.05);
  arc(width * 0.00, height * 0.00, 1000, 1000, 0.75, TAU * 0.175);
  arc(width * 0.00, height * 0.00, 1000, 1000, 1.5, TAU * 0.280);
  arc(width * 0.00, height * 0.00, 1000, 1000, 2.25, TAU * 0.40);
  arc(width * 0.00, height * 0.00, 1000, 1000, 3, TAU * 0.525);
  arc(width * 0.00, height * 0.00, 1000, 1000, 3.75, TAU * 0.635);
  arc(width * 0.00, height * 0.00, 1000, 1000, 4.5, TAU * 0.770);
  arc(width * 0.00, height * 0.00, 1000, 1000, 5.35, TAU * 0.920);
  
    rotate(angle*-1);
  
  // Fifth outter circles
    rotate(angle*-1);
  circle(width/9.0, height/9, 20);
  circle(width/-9.0, height/-9, 20);
  circle(width/-9.0, height/9, 20);
  circle(width/9.0, height/-9, 20);
    rotate(angle*-1);
  circle(width/14.0, height/14.0, 20);
  circle(width/-14.0, height/-14.0, 20);
  circle(width/-14.0, height/14.0, 20);
  circle(width/14.0, height/-14.0, 20);
  
    rotate(angle*-1);
  // Fourth outter circles
    rotate(angle*-1);
    rotate(angle*-1);
  circle(width/4.75, height/4.75, 20);
  circle(width/-4.75, height/-4.75, 20);
  circle(width/-4.75, height/4.75, 20);
  circle(width/4.75, height/-4.75, 20);
    rotate(angle);
  circle(width/6.0, height/6.0, 20);
  circle(width/-6.0, height/-6.0, 20);
  circle(width/-6.0, height/6.0, 20);
  circle(width/6.0, height/-6.0, 20);
  
    rotate(angle);
    rotate(angle);
  // Third outter circles
    rotate(angle);
    rotate(angle);
  circle(width/3.25, height/3.25, 20);
  circle(width/-3.25, height/-3.25, 20);
  circle(width/-3.25, height/3.25, 20);
  circle(width/3.25, height/-3.25, 20);
    rotate(angle*-1);
  circle(width/3.75, height/3.75, 20);
  circle(width/-3.75, height/-3.75, 20);
  circle(width/-3.75, height/3.75, 20);
  circle(width/3.75, height/-3.75, 20);
  
    rotate(angle*-1);
    rotate(angle*-1);
    rotate(angle*-1);
  // Second outter circles
    rotate(angle*-1);
    rotate(angle*-1);
  circle(width/2.40, height/2.40, 20);
  circle(width/-2.40, height/-2.40, 20);
  circle(width/-2.40, height/2.40, 20);
  circle(width/2.40, height/-2.40, 20);
    rotate(angle);
  circle(width/2.75, height/2.75, 20);
  circle(width/-2.75, height/-2.75, 20);
  circle(width/-2.75, height/2.75, 20);
  circle(width/2.75, height/-2.75, 20);
  
    rotate(angle);
    rotate(angle);
    rotate(angle);
    rotate(angle);
  // First outter circles
  circle(width/2.10, height/2.10, 20);
  circle(width/-2.10, height/-2.10, 20);
  circle(width/-2.10, height/2.10, 20);
  circle(width/2.10, height/-2.10, 20);
  
}
