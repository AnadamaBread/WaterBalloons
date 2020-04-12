class Enemy_one extends GameObject {
 
  PImage img;
  
  Enemy_one(float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    vx = 0;
    vy = 4;
    hp = 10;
    img = loadImage("book.png");
    score = 20;
  
  }
  
  void show() {
    // fill(100,100,125);
    // rect(x,y,75,75);
    image(img,x,y);
  }
  
  void beh() {
    x = x + vx;
    y = y + vy;
    
    int i = 0;
    while ( i < engine.size()) {
     
      GameObject p_bullet = engine.get(i);
      
      if ( p_bullet instanceof Bullet) {
         
         if (rectRekt(x, y, 75, 75, p_bullet.x, p_bullet.y, 10, 10)) {
           
           hp = hp - 5;
           p_bullet.hp = 0;
           engine.add(new damage_effect(p_bullet.x, p_bullet.y));
           
         }
        
      }
      i++;
    }
    
  }
  
  boolean isDead() {
      
    return y > height || hp <= 0;
  }
  
  int earnscore() {
    
    if(hp <= 0 && isDead()) {
      return score;
    }
    else {
     return 0; 
    }
    
  }
}

class Enemy_two extends GameObject {
 
  PImage img;
  
  Enemy_two(float incomingX, float incomingY) {
    x = incomingX;
    y = incomingY;
    vx = 0;
    vy = 3;
    hp = 65;
    img = loadImage("locker.png");
    score = 100;
  
  }
  
  void show() {
    // fill(100,100,125);
    // rect(x,y,75,75);
    image(img,x,y);
    //fill(255,0,0);
    // circle(x+90 ,y+70,50);
  }
  
  void beh() {
    x = x + vx;
    y = y + vy;
    
    int i = 0;
    while ( i < engine.size()) {
     
      GameObject p_bullet = engine.get(i);
      
      if ( p_bullet instanceof Bullet) {
         
         if (rectRekt(x+90, y+70, 75, 75, p_bullet.x, p_bullet.y, 10, 10)) {
           
           hp = hp - 5;
           p_bullet.hp = 0;
           engine.add(new damage_effect(p_bullet.x, p_bullet.y));
           
         }
        
      }
      i++;
    }
    
  }
  
  boolean isDead() {
      
    return y > height || hp <= 0;
  }
  
  int earnscore() {
    
    if(hp <= 0 && isDead()) {
      return score;
    }
    else {
     return 0; 
    }
    
  }
  
  
  
  
}
