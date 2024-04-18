/*
 Luis Soto Ortega
 The Collage Piece
 GD 105
 */

// These codes holds the images
PImage background;
PImage kaylieMario;
PImage carloBonnie;
PImage lucasGojo;
PImage margieSix;
PImage roxieJoker;
PImage susieSakura;


// the code in this setup code block runs once in the beginning
void setup() {
  size(1024, 800);

  background = loadImage("Background.PNG");
  kaylieMario = loadImage("KaylieMario.PNG");
  carloBonnie = loadImage("CarloBonnie.PNG");
  lucasGojo = loadImage("LucasGojo.PNG");
  margieSix = loadImage("MargieSix.PNG");
  roxieJoker = loadImage("RoxieJoker.PNG");
  susieSakura = loadImage("SusieSakura.PNG");
}

// The code in this block runs once every frame of the program
void draw() {
// This scales the images
  float scale = 0.35;
  background(255);
  
    // This draws the background image
  image(background, -30, -15, background.width * scale * 1.2, background.height * scale * 1.2);
  
  // First box
  fill(#ff9fcf);
  quad(92, 38, 337, 38, 337, 388, 92, 387);
  // Second box
  fill(#768fff);
  quad(392, 38, 637, 38, 637, 388, 392, 387);
  // Third box
  fill(#0059ff);
  quad(692, 38, 937, 38, 937, 388, 692, 387);
  // Fourth box
  fill(#fca07a);
  quad(92, 418, 337, 418, 337, 768, 92, 767);
  // Fifth box
  fill(#f90823);
  quad(392, 418, 637, 418, 637, 768, 392, 767);
  // Sixth box
  fill(#d1a3ff);
  quad(692, 418, 937, 418, 937, 768, 692, 767);

// This draws the images
  image(kaylieMario, 0, 0, kaylieMario.width * scale, kaylieMario.height * scale);
  image(carloBonnie, 300, 0, carloBonnie.width * scale, carloBonnie.height * scale);
  image(lucasGojo, 600, 0, lucasGojo.width * scale, lucasGojo.height * scale);
  image(margieSix, 600, 380, margieSix.width * scale, margieSix.height * scale);
  image(roxieJoker, 300, 380, roxieJoker.width * scale, roxieJoker.height * scale);
  image(susieSakura, 0, 380, susieSakura.width * scale, susieSakura.height * scale);
  
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
