abstract class GameObject {
  
  float x, y, vx, vy; // Positions x and y, Veclocity vx and vy
  
  float hp; // hitpoints
  int score = 0;
  int power = 0;
  
  GameObject() {
    
  }
  
  void show() {
    // Rendering and Effects  
  
  }

  void beh() {
   //Actions and behavior
   
  }
  
  boolean isDead() {
    // is it dead ?
    return false;
  }
  
  int earnscore() {
   return 0; 
  }
  
  
}
