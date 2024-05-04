/*
 Luis Soto Ortega
 The Calendar Piece
 GD 105
 */

int d = day();    // Values from 1 - 31
int m = month();  // Values from 1 - 12
int y = year();   // 2003, 2004, 2005, etc.

 // the code in this setup code block runs once in the beginning
void setup() {
  size(1000, 800);
  background(255);
  smooth();
  dayNum();

}

// returns [1..7] for [Monday..Sunday]
// this probably breaks if it's not 2024
// but calendar math is complicated so that's fine
// see https://en.wikipedia.org/wiki/Determination_of_the_day_of_the_week
int dayNum(){
  boolean verbose = true;
  
  // defined so we can change for testing
  int year = year();
  int month = month();
  int day = day();
  
  // start from 0 and count the
  // days that have happened so far
  int daysElapsed = 0;
  
  // cases "fall through" without break,
  // so all of the cases below a case will run
  switch(month){
    case 12:
      daysElapsed += 30; // november
    case 11:
      daysElapsed += 31; // october
    case 10:
      daysElapsed += 30; // september
    case 9:
      daysElapsed += 31; // august
    case 8:
      daysElapsed += 31; // july
    case 7:
      daysElapsed += 30; // june
    case 6:
      daysElapsed += 31; // may
    case 5:
      daysElapsed += 30; // april
    case 4:
      daysElapsed += 31; // march
    case 3:
      daysElapsed += 28; // february
      if(year % 4 == 0){
        daysElapsed += 1;
      }
    case 2:
      daysElapsed += 31; // january
    case 1:
      // no need to add previous months,
      // but account for current day
      daysElapsed += day;
  }
  
  int dayNum = daysElapsed % 7;
  if(dayNum == 0){
    dayNum = 7;
  }
  
  if(verbose){
    // see https://en.wikipedia.org/wiki/ISO_8601#Ordinal_dates
    println(year + "-" + month + "-" + day); // iso8601 date
    println("ordinal date: " + year + "-" + daysElapsed);
    println("day number: " + dayNum);
    println("it is " + weekDay(dayNum) + " my dudes");
    
  }
  
  return dayNum;
}

String weekDay(int dayNum){
  if(dayNum < 1 || dayNum > 7) return "ERROR";
  String[] dayNames = "Monday Tuesday Wednesday Thursday Friday Saturday Sunday".split(" ");
  return dayNames[dayNum - 1];
}


// this code block runs every frame
void draw(){
  calendarCurrentTime();
  myCalendar();
  
  // Classes on calender
  textSize(25);
  text("GD 102\nLEC", 115, 190);
  text("GD 105\nLEC", 115, 380);
  text("GD 201\nLEC", 115, 545);
  text("GD 105\nLEC", 500, 380);
  text("GD 110\nLEC", 870, 430);
  
  // This code tells what day it is
  textAlign(CENTER, CENTER);
  text("Today is " + m + "/" + d + "/" + y, width/2, 730);
  text("It is " + weekDay(dayNum()) + " my dudes", width/2, 770);
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }

} 

void myCalendar() {
  // calender
  stroke(0);
  noFill();
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
}

void calendarCurrentTime()
{
  
  // The pointer
  if (dayNum() <= 5) {
    // Monday
    if (dayNum() == 1) {
      fill(55,120,255);
  quad(630 - 580, 58, 820 - 570, 58, 820 - 570, 693, 630 - 580, 693);
    }
    // Tuesday
    if (dayNum() == 2) {
      fill(105,120,255);
  quad(630 - 380, 58, 820 - 380, 58, 820 - 380, 693, 630 - 380, 693);
    }
    // Wednsday
    if (dayNum() == 3) {
      fill(155,120,255);
  quad(630 - 190, 58, 820 - 190, 58, 820 - 190, 693, 630 - 190, 693);
    }
    // Thursday
    if (dayNum() == 4) {
      fill(205,120,255);
  quad(630, 58, 820, 58, 820, 693, 630, 693);
    }
    // Friday
    if (dayNum() == 5) {
      fill(255,120,255);
  quad(630 + 190, 58, 820 + 170, 58, 820 + 170, 693, 630 + 190, 693);
    }
  }
  
  fill(0);
  
}
