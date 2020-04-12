class player extends GameObject {
  
  PImage img;
  balloon playerGun;
  boolean death;
  
  player() { //Constructor
    x = width/2;
    y = height/2;
    vx = 0;
    vy = 0;
    img = loadImage("Waterbomb.png");
    power = 25;
    playerGun = new Basicball();
    death = false;
  }
  
  void show() {
   // fill(255,0,0);
   // circle(x,y,50);
   image(img,x,y);
   
    //fill(255,0,0);
    // circle(x + 55 ,y + 50,50); // PERFECT BALLOON HIT CIRCLE
   
    
  }
  
  void beh() {
    vx = 0;
    vy = 0;
    if (wk) {
      vy = -10;
    }
    if (ak) {
      vx = -10;
    }
    if (sk) {
      vy = 10;
    }
    if (dk) {
      vx = 10;
    }
    
    if(spacek){
      // engine.add(new Bullet());
      playerGun.shoot();
      // shoot(power);
    }
    
     int i = 0;
    while ( i < engine.size()) {
     
      GameObject p_enemy = engine.get(i);
      
      if ( p_enemy instanceof Enemy_one) {
         
         if (rectRekt(x + 55, y + 50, 50, 50, p_enemy.x, p_enemy.y, 75, 75)) {
           
           //hp = hp - 1;
           p_enemy.hp = 0;
           engine.add(new damage_effect(p_enemy.x, p_enemy.y));
           this.death = true;
         }
        
      }
      
      if ( p_enemy instanceof Enemy_two) {
         
         if (rectRekt(x + 55, y + 50, 50, 50, p_enemy.x+90, p_enemy.y+70, 50, 90)) {
           
           //hp = hp - 1;
           p_enemy.hp = 0;
           engine.add(new damage_effect(p_enemy.x, p_enemy.y));
           this.death = true;
         }
        
      }
      i++;
    }
    
    if(((x+vx) > -50) && ((x+vx)<850)){
       x = x + vx;
    }
    if(((y+vy) > 50) && ((y+vy)<850)) {
      
      y = y + vy;
    }
    
    playerGun.recharge();
    
  }
  
  boolean isDead() {
    
  
    return this.death;
    // return false;
  }
  
  void upgrade(){
    if(playerGun instanceof Basicball) {
      this.playerGun = new Doubleball(); 
    }
    else if( playerGun instanceof Doubleball){
      this.playerGun = new Tripleball(); 
    }
    else if( playerGun instanceof Tripleball) {
      this.playerGun = new Fastball(); 
    }
    else if ( playerGun instanceof Fastball) {
      this.playerGun = new  Doublefastball();
    }
    else if ( playerGun instanceof Doublefastball) {
      this.playerGun = new Triplefastball(); 
    }
    else {
     // do nothing for now 
    }
    
    
  }
  
  //void shoot(int a) {
  //  // int j = 100;
  //  int ss = millis();
  //  if(ss % a == 0) {
  //    engine.add(new Bullet());
  //  }
  //  //while (j > 0) {
      
  //  //  j--;
      
  //  //  if(j == 1) {
  //  //    engine.add(new Bullet());
  //  //  }
  //  //}
   
  }
  
