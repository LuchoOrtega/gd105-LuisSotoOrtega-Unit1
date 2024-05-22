class Cookie {
   float x, y;
   int size;
   color col;
   
   Cookie(float r_X, float r_Y, int r_size, color r_col) {
   x = r_X;
   y = r_Y;
   size = r_size;
   col = r_col;
   }
   
   // First cookie size, color, x pos, y pos
   Cookie(){
     // color r, g, b, opacity
     col = color(random(200, 255), random(200, 255), random(0, 50), random(100, 200));
     // x pos
     x = random(width);
     // y pos
     y = 0 + size / 2.0 + random(1000);
   }
   
   // Draws the cookies
   void update(){
     fill(col);
     noStroke();
     circle(x, y, 50);
     
     //Cookie size shrink
     size--;
     //Cookie x pos wigglyness
     x += random(-7, 7);
     //Cookie y pos speed going down
     y += 10;
     
     // Disapears the cookies and returns it when eaten
     
     // Resets the cookies when they are no longer visible
     if(size <= 0) {
       size = (int)random(50, 100);
       y = 0 + size / 2.0 - 50;
       x = random(width);
       
     }
   } 
   
   void eaten(){
     x = -1000;
     size = 0;
     size = (int)random(50, 100);
     y = 0 + size / 2.0 - 50;
     x = random(width);
   }
   
 }
