


// Collision Function for Rectangles 

boolean rectRekt(float r1x, float r1y, float r1w, float r1h, float r2x, float r2y, float r2w, float r2h) {
  
  
  if ( r1x + r1w >= r2x &&  // r1 right edge past r2 left
  
       r1y + r1h >= r2y &&  // r1 left edge past r2 right
       
       r1x <= r2x + r2w &&  // r1 top ege past r2 bottom
       
       r1y <= r2y + r2h)    // r1 bottom edge past r2 top
       
       {
         return true;
   }
   else {
     return false;
   }
}
      
