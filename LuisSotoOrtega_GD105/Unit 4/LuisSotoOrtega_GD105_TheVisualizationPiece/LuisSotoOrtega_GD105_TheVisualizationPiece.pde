/*
 Luis Soto Ortega
 The Visualization Piece
 This is an original data set which is supposed to help me keep track of my posting schedule on social media by using a timer class and progress bar which resets to every 3 days, as well as provide the links to them
 I am having trouble with turning the timer seconds into hours countdown, and I don't like how the timer resets to 3 days worth of seconds every time the code runs instead of continueing the timer (due to limited time, this is what I got so far) 
 GD 105
 */
 
 PImage[] img; // Array to hold the images
String[] urls; // Array to hold the URLs
int numImg = 5; // Number of images
 
 PImage luchosworldBG;
 
 // class & variable instance of timer
heartTimer timer;

int currentTime;
String s;

float sec;
float min;
float hour;

 // the code in this setup code block runs once in the beginning
void setup() {
  size(800, 400);
  smooth();
  timer = new heartTimer(1000);
  s = "";
  
  img = new PImage[numImg];
  urls = new String[numImg];
  
  // Initialize each image and corresponding URL
  img[0] = loadImage("Instagram.PNG");
  urls[0] = "https://www.instagram.com/luchosworld?igsh=NTJicm5jdGVzZHZz&utm_source=qr";
  img[1] = loadImage("YouTube.JPEG");
  urls[1] = "https://youtube.com/@luchosworld?si=HgOdvLP-IMYCV99g";
  img[2] = loadImage("TikTok.PNG");
  urls[2] = "https://www.tiktok.com/@luchosworld?_t=8mXPOT3SXhC&_r=1";
  img[3] = loadImage("Twitter.JPEG");
  urls[3] = "https://x.com/luchosworld?s=21&t=DnRM67R4nqKBSB2eRQj5NQ";
  img[4] = loadImage("Itchio.PNG");
  urls[4] = "https://luchosworld.itch.io/";

  // Assuming all images are the same size
  for (int i = 0; i < numImg; i++) {
    img[i].resize(100, 0); // Resize images if necessary
  }


  luchosworldBG = loadImage("LuchosworldBG.JPEG");
  
  luchosworldBG.resize(400, 0);

}

// this code block runs every frame
void draw(){
  background(0);
  
  // BG Image
  image(luchosworldBG, 200, 90);
  
  //Progress bars
  //seconds
  sec=sec+1 ;
noStroke();
  fill(255,255,255,255);
  rect(sec,0,35,25);
fill(#00fec1,190);
  rect(0,0,width,25);
if (sec>800){
    sec=-25;
  }
//minutes
  min=min+0.16;
  noStroke();
  fill(#f780fe);
  rect(min,25,5,12.5);
noStroke();
  fill(#e72bf3);
  rect(min,37.5,5,12.5);
if(min>800){
   min=-5;
}    
//hours
  hour=hour+0.00026;
noStroke();
  fill(211);
  rect(0,50,width,25);
 noStroke();
  fill(#7700ed);
  rect(3,52,hour,21);
if (hour>800){
    hour=3;
  }
  
  // Timer
  if(timer.complete() == true){
    //goes up by 1
    currentTime++;
    timer.start();
  }
  
  // Text
  fill(200, 0, 200);
  textSize(48);
  textAlign(CENTER, CENTER);
  s = "Time left: " + (259200 - currentTime);
  text(s, width/2, 150);
  
  // Display images in a row
  for (int i = 0; i < numImg; i++) {
    // Logo location between each other
    image(img[i], i * 150 + 50, 250); 
  }

  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
} 

// This code block is for when the mouse to click on the logos
void mousePressed() {
  for (int i = 0; i < numImg; i++) {
    // This checks if the mouse is clicked within the bounds of each image
    if (mouseX > i * 150 && mouseX < (i + 1) * 150 && mouseY > 200 && mouseY < 400) {
      link(urls[i]); // Open the corresponding URL
      break; // Exit the loop if an image is clicked
    }
  }
}

// Timer class
class heartTimer {

  int startTime;
  int interval;
  
  //Constructor
  heartTimer(int timeInterval){
    interval = timeInterval;
  }
  
  void start(){
    // Calculated in milliseconds
    startTime = millis();
  }
  // Boolean to determine wether timer is complete
  boolean complete(){
    int elapsedTime = millis() - startTime;
    if (elapsedTime > interval){
      return true;
    }
    else {
      return false;
    } 
  } 
} 
