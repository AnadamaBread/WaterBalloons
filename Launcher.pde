class Launcher extends GameObject {
 
  Launcher() {
    x = width/2;
    y = -100;
    vx = 0;
    vy = 0;
    
  }
  void show() {
   fill (100);
   ellipse(x,y,100,100);
   
  }
  
  void beh() {
     if (frameCount < 100) {
       // do nothing 
     
   } else if (frameCount < 600) {
      straightLine(100);
     
   } else if (frameCount < 1500) {
       straightLine(400);
     }
      else if (frameCount < 2500) {
       randLine();
     }
     else {
       endGame();
     }
 }
  
  void straightLine(float incomingX) {
   x = incomingX;
   if (frameCount % 100 == 0) {
     engine.add(new Enemy_one(x,y)); 
   }
  }
  
  void randLine() {
   x = random(50, 850); 
    if(frameCount % 100 == 0){
     engine.add(new Enemy_one(x,y)); 
    }
  }
  
  void endGame(){
   
   x = random(50, 850);
     if(frameCount % 50 == 0) {
       engine.add(new Enemy_one(x,y));
       if(frameCount % 100 == 0) {
         engine.add(new Enemy_one(random(50,850),y));
       }  
     }
     if(frameCount > 3100) {
       extraStraightLine();
     }
  }
  
  void extraStraightLine() {
    if(frameCount % 500 == 0){
      for (int x = 0; x <= 850; x += 50) {
       engine.add(new Enemy_one(x,y)); 
      }
     } 
    }
  
  
  
  boolean isDead() {
    
   return false; 
  }
  
  
}

class Epic_Launcher extends GameObject {
 
  Epic_Launcher() {
    x = width/2;
    y = -100;
    vx = 0;
    vy = 0;
    
  }
  void show() {
   fill (100);
   ellipse(x,y,100,100);
   
  }
  
  void beh() {
     if (frameCount < 1500) {
       // do nothing 
     
   } else if (frameCount < 1600) {
      straightLine(100);
     
   } else if (frameCount < 2000) {
       straightLine(400);
     }
      else if (frameCount < 4000) {
       randLine();
     }
     else {
       endGame();
     
     }
 }
  
  void straightLine(float incomingX) {
   x = incomingX;
   if (frameCount % 400 == 0) {
     engine.add(new Enemy_two(x,y)); 
   }
  }
  
  void randLine() {
   x = random(50, 850); 
    if(frameCount % 300 == 0){
     engine.add(new Enemy_two(x,y)); 
    }
  }
  
  void endGame() {
   x = random(50,850);
   if(frameCount % 250 == 0) {
    engine.add(new Enemy_two(x,y)); 
   }
  }
  
  
  
  boolean isDead() {
    
   return false; 
  }
  
  
}
