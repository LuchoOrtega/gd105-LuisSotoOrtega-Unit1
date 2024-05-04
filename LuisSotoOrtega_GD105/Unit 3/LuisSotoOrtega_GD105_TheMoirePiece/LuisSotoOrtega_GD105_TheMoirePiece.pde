/*
 Luis Soto Ortega
 The Moire Piece
 GD 105
 */
 
 // the code in this setup code block runs once in the beginning
void setup() {
  size(800, 800);
  background(255);

}

// The code in this block runs once every frame of the program
void draw() {
  noFill();
  strokeWeight(0);
  
  // upper lines
  line(0, 20, 800, 0);
  line(0, 40, 800, 0);
  line(0, 60, 800, 0);
  line(0, 80, 800, 0);
  line(0, 100, 800, 0);
  line(0, 120, 800, 0);
  line(0, 140, 800, 0);
  line(0, 160, 800, 0);
  line(0, 180, 800, 0);
  line(0, 200, 800, 0);
  line(0, 220, 800, 0);
  line(0, 240, 800, 0);
  line(0, 260, 800, 0);
  line(0, 280, 800, 0);
  line(0, 300, 800, 0);
  line(0, 320, 800, 0);
  line(0, 340, 800, 0);
  line(0, 360, 800, 0);
  line(0, 380, 800, 0);
  line(0, 400, 800, 0);
  line(0, 420, 800, 0);
  line(0, 440, 800, 0);
  line(0, 460, 800, 0);
  line(0, 480, 800, 0);
  line(0, 500, 800, 0);
  line(0, 520, 800, 0);
  line(0, 540, 800, 0);
  line(0, 560, 800, 0);
  line(0, 580, 800, 0);
  line(0, 600, 800, 0);
  line(0, 620, 800, 0);
  line(0, 640, 800, 0);
  line(0, 660, 800, 0);
  line(0, 680, 800, 0);
  line(0, 700, 800, 0);
  line(0, 720, 800, 0);
  line(0, 740, 800, 0);
  line(0, 760, 800, 0);
  line(0, 780, 800, 0);
  line(0, 800, 800, 0);
  
  // lower lines
  line(0, 800, 800, 20);
  line(0, 800, 800, 40);
  line(0, 800, 800, 60);
  line(0, 800, 800, 80);
  line(0, 800, 800, 100);
  line(0, 800, 800, 120);
  line(0, 800, 800, 140);
  line(0, 800, 800, 160);
  line(0, 800, 800, 180);
  line(0, 800, 800, 200);
  line(0, 800, 800, 220);
  line(0, 800, 800, 240);
  line(0, 800, 800, 260);
  line(0, 800, 800, 280);
  line(0, 800, 800, 300);
  line(0, 800, 800, 320);
  line(0, 800, 800, 340);
  line(0, 800, 800, 360);
  line(0, 800, 800, 380);
  line(0, 800, 800, 400);
  line(0, 800, 800, 420);
  line(0, 800, 800, 440);
  line(0, 800, 800, 460);
  line(0, 800, 800, 480);
  line(0, 800, 800, 500);
  line(0, 800, 800, 520);
  line(0, 800, 800, 540);
  line(0, 800, 800, 560);
  line(0, 800, 800, 580);
  line(0, 800, 800, 600);
  line(0, 800, 800, 620);
  line(0, 800, 800, 640);
  line(0, 800, 800, 660);
  line(0, 800, 800, 680);
  line(0, 800, 800, 700);
  line(0, 800, 800, 720);
  line(0, 800, 800, 740);
  line(0, 800, 800, 760);
  line(0, 800, 800, 780);
  line(0, 800, 800, 800);
  
  // save the image at frame 30
  if (frameCount == 30) {
    save("output.png");
  }

}
