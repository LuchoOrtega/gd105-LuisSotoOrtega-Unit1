/*
 Luis Soto Ortega
 The Line Piece - Omar Rayo (Colombian, 1928-2020)
 GD 105
 https://www.artsy.net/artwork/omar-rayo-nephele-de-greiff-vii
 */

// the code in this setup code block runs once in the beginning
void setup() {
  // canvas size
  size(800, 800);
}

// The code in this block runs once every frame of the program
void draw() {
  // changes background color to white
  background(#ffffff);

  // Point (Ax, Ay, Bx, By, Cx, Cy, Dx, Dy)
  fill(0);
  quad(0, 400, 400, 0, 800, 400, 400, 800);
  
  // Top lines (Up to down)
  fill(255);
  stroke(255);
  strokeCap(SQUARE);
  strokeWeight(20);
  line(100, 350, 405, 45);
  line(150, 350, 405, 95);
  line(200, 350, 405, 145);
  line(250, 350, 402, 197);
  line(300, 350, 395, 254);
  
  //lower lines (Down to up)
  line(700, 450, 405, 755);
  line(650, 450, 405, 705);
  line(600, 450, 405, 655);
  line(550, 450, 408, 601);
  line(500, 450, 410, 544);
  
  //These lines are arranged starting from middle going outter
  //first lines
  strokeWeight(0);
  quad(300, 350, 375, 425, 400, 400, 325, 325);
  quad(400, 400, 425, 375, 500, 450, 475, 475);
  //second lines
  quad(250, 350, 350, 450, 360, 440, 260, 340);
  quad(439, 361, 451, 348, 560, 455, 540, 465);
  //third lines
  quad(602, 464, 615, 448, 452, 283, 452, 312);
  quad(187, 350, 350, 514, 350, 485, 204, 333);
  //fourth lines
  quad(657, 458, 670, 444, 452, 226, 452, 253);
  quad(144, 343, 350, 540, 350, 570, 130, 356);
  //fifth lines
  quad(707, 458, 721, 444, 452, 168, 452, 196);
  quad(94, 343, 350, 600, 350, 628, 80, 356);
  
  //Bottom-middle lines (Up to down)
  quad(350, 450, 430, 530, 418, 552, 350, 485);
  quad(350, 514, 430, 592, 413, 607, 350, 540);
  quad(350, 570, 427, 646, 411, 663, 350, 600);
  quad(350, 628, 424, 698, 410, 710, 350, 653);
  quad(350, 675, 424, 745, 412, 762, 350, 700);
  
  //Top-middle lines (Down to up)
  quad(372, 265, 391, 245, 451, 312, 451, 348);
  quad(380, 207, 396, 190, 451, 253, 451, 283);
  quad(384, 153, 401, 135, 451, 195, 451, 225);
  quad(387, 100, 399, 87, 451, 143, 451, 168);
  quad(399, 37, 396, 60, 451, 117, 451, 94);
  
  //Upper-center
  fill(200);
  stroke(200);
  quad(400, 400, 451, 348, 431, 327, 400, 360);
  triangle(386, 280, 411, 306, 386, 328);
  
  //Bottom-center
  quad(400, 400, 349, 450, 374, 474, 400, 445);
  triangle(420, 521, 393, 494, 420, 466);
    


  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
