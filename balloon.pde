// Guns pretty much
abstract class balloon {
 
  int cooldown, threshold; 
  
  balloon() {
  }
  
  void recharge() {
    if(cooldown < threshold) {
      cooldown++; 
    }
  
  }
  
  
  void shoot() {
    if( cooldown == threshold) {
      engine.add(new Bullet());
      cooldown = 0;
    }
    
  }
  
  
}

class Basicball extends balloon {
  
 
  Basicball () {
    
    threshold = 35;
    cooldown = 35;
    
  }
  
}

class Fastball extends balloon {
  
   Fastball () {
     
     threshold = 7;
     cooldown = 7;
     
   }
  
}

class Doubleball extends balloon {
  
   Doubleball () {
     
     threshold = 30;
     cooldown = 30;
   }
   
   void shoot() {
     
      if( cooldown == threshold) {
          engine.add(new Bullet(playerOne.x + 25, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 45, playerOne.y + 5, 0, -12));
        cooldown = 0;
      }
   }
}

class Tripleball extends balloon {
  
   Tripleball () {
     
     threshold = 30;
     cooldown = 30;
   }
   
   void shoot() {
     
      if( cooldown == threshold) {
          engine.add(new Bullet(playerOne.x + 25, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 45, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 65, playerOne.y + 5, 0, -12));
        cooldown = 0;
      }
   }
}

class Doublefastball extends balloon {
 
  Doublefastball() {
   threshold = 7;
   cooldown = 7;
    
  }
  void shoot() {
     
      if( cooldown == threshold) {
          engine.add(new Bullet(playerOne.x + 25, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 45, playerOne.y + 5, 0, -12));
        cooldown = 0;
      }
   }
  
}

class Triplefastball extends balloon {
   
  Triplefastball () {   
     threshold = 7;
     cooldown = 7;
   }
   
   void shoot() {
     
      if( cooldown == threshold) {
          engine.add(new Bullet(playerOne.x + 25, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 45, playerOne.y + 5, 0, -12));
          engine.add(new Bullet(playerOne.x + 65, playerOne.y + 5, 0, -12));
        cooldown = 0;
      }
   }
}
