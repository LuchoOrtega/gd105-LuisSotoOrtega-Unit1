/*
Luis Soto Ortega
The Map Piece
GD 105
*/

// this code block runs once
void setup(){
  // canvas size
  size(1000, 700);
}

// this code block runs every frame
void draw(){
  // change background color
  background(#ffffff);
  
  // calender
  stroke(0);
  fill(255);
  rect(width * 0.05, height * 0.01, 940, 685);
  // calender heading
  fill(200);
  rect(width * 0.05, height * 0.01, 940, 50);
  // vertical lines
  line(250, 7, 250, 692);
  line(440, 7, 440, 692);
  line(630, 7, 630, 692);
  line(820, 7, 820, 692);
  // horizontal lines (hours)
  stroke(0, 50);
  line(50, 125, 990, 125);
  line(50, 195, 990, 195);
  line(50, 265, 990, 265);
  line(50, 335, 990, 335);
  line(50, 405, 990, 405);
  line(50, 475, 990, 475);
  line(50, 545, 990, 545);
  line(50, 615, 990, 615);
  // horizontal lines (half-hour)
  stroke(0, 25);
  line(50, 90, 990, 90);
  line(50, 160, 990, 160);
  line(50, 230, 990, 230);
  line(50, 300, 990, 300);
  line(50, 370, 990, 370);
  line(50, 440, 990, 440);
  line(50, 510, 990, 510);
  line(50, 580, 990, 580);
  line(50, 650, 990, 650);
  
  
  // momday class boxes
  fill(#00c0ff);
  rect(width * 0.06, height * 0.13, 179, 191);
  fill(#bf4fff);
  rect(width * 0.06, height * 0.43, 179, 88);
  fill(#eaff00);
  rect(width * 0.06, height * 0.58, 179, 191);
  // tuesday class box
  fill(#00fd2a);
  rect(width * 0.26, height * 0.43, 172, 191);
  // wednsday class box
  fill(#bf4fff);
  rect(width * 0.45, height * 0.43, 170, 88);
  // friday class box
  fill(#fb6686);
  rect(width * 0.83, height * 0.43, 151, 191);
  
  
  // time on calender
  textAlign(0);
  fill(0);
  textSize(20);
  text("9 am", 7, 63);
  text("10 am", 7, 130);
  text("11 am", 7, 200);
  text("12 pm", 7, 270);
  text("1 pm", 7, 340);
  text("2 pm", 7, 410);
  text("3 pm", 7, 480);
  text("4 pm", 7, 550);
  text("5 pm", 7, 620);
  
  
  // days on calender
  textSize(29);
  text("Monday", 101, 42);
  text("Tuesday", 293, 42);
  text("Wednsday", 474, 42);
  text("Thursday", 670, 42);
  text("Friday", 870, 42);
  
  
  // Classes on calender
  textAlign(CENTER, CENTER);
  textSize(25);
  text("GD 102\nLEC", 148, 183);
  text("GD 105\nLEC", 148, 343);
  text("GD 201\nLEC", 148, 498);
  text("DD 100\nLEC", 346, 389);
  text("GD 105\nLEC", 537, 343);
  text("GD 110\nLEC", 906, 394);
  
  
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
