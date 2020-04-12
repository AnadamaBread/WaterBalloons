class damage_effect extends GameObject {
 
    damage_effect(float incomingX, float incomingY) {
     x = incomingX;
     y = incomingY;
     vx = random(-10,10);
     vy = random(-10,10);
     hp = random(150,255);
     
    }
    
    void show() {
      fill(0,100,225,hp);
      rect(x,y,5,5);
      
    }
    
    void beh() {
     x = x + vx;
     y = y + vy;
     
     hp = hp - 3;
     
    }
    
    boolean isDead() {
     
      
      return hp <= 0;
      
    }
}
