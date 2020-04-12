class Bullet extends GameObject {
 
  Bullet() {
   x = playerOne.x + 30;
   y = playerOne.y + 5;
   vx = 0;
   vy = -12;
   hp = 1;
  }
  
  Bullet(float x, float y, int vx, int vy) {
   this.x = x;
   this.y = y;
   this.vx = vx;
   this.vy = vy;
   hp = 1;
   
  }
  
  void show() {
   fill(0,52,250);
   circle(x,y,10);
  }
  
  void beh(){
   x = x + vx;
   y = y + vy;
  }
  
  boolean isDead() {
   if(hp == 0 || y < 0) return true;
   else { 
     return false;
     }
  }
}
