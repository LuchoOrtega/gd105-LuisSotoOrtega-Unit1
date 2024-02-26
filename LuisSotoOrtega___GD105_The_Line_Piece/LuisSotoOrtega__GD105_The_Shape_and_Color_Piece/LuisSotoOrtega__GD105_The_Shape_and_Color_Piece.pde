/*
 Luis Soto Ortega
 The Shape & Color Piece - Ivan Tovar (Dominican, b. 1942)
 GD105
 https://www.artsy.net/artwork/ivan-tovar-latin-american-abstract-surrealist-constructivist-sculpture-ed-of-10
*/

// This code block runs once
void setup(){
  // canvas size
  size(800, 900);
}

// This code block runs for every frame
void draw(){
  // changes the background color
  background(#4b4549);
  
  // bg shade
  stroke(#353134);
  strokeWeight(0);
  fill(#353134);
  rect(width * 0.01, height * 0.05, 784, 504);
  
  // top piece
  stroke(#ffffff);
  fill(#5d7175);
  rect(width * 0.01, height * 0.01, 784, 504);
  
  // bottom piece
  stroke(#ffffff);
  fill(#5d7175);
  rect(width * 0.01, height * 0.75, 784, 214);
  
  // left-side triangle shadow
  stroke(#2e383a);
  fill(#2e383a);
  triangle(266, 675, 157, 675, 221, 862);
  
  // left-side triangle
  stroke(#ff8003);
  fill(#ff8003);
  triangle(324, 514, 142, 514, 249, 852);
  
  // inner left-side triangle
  stroke(#ff8003);
  fill(#a75607);
  triangle(189, 514, 142, 514, 249, 852);
  
  // right-side triangle shadow
  stroke(#2e383a);
  fill(#2e383a);
  triangle(510, 515, 414, 515, 463, 276);
  
  // right-side triangle
  stroke(#ff8003);
  fill(#ff8003);
  triangle(600, 674, 430, 674, 494, 230);
  
  // inner right-side triangle
  stroke(#ff8003);
  fill(#a75607);
  triangle(478, 674, 430, 674, 494, 230);
  
  
  // save the image
  if (frameCount == 1) {
    save("output.png");
  }
}
