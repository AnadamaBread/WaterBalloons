/* @pjs preload="/data/book.png,/data/locker.png,/data/hallway.png,/data/waterbomb.png"; */

import processing.sound.*;
// import ddf.minim.*;
SoundFile songfile;
// SqrOsc squaresound;
// Pulse pulsesound;
// Minim minim;

// AudioPlayer songplayer;

ArrayList <GameObject> engine;

boolean wk, ak, sk, dk, spacek, qk, rk; //control for keys pressed 
player playerOne;
int time_int;
int total_score;
int up_k; 
int up_E;
int stage;
PImage bkg;

void setup() {
  size(900,900);
  bkg = loadImage("hallway.png");
  songfile = new SoundFile(this, "waterballoons.wav");
  restart();
  //stage = 1;
  //time_int = 0;
  //total_score = 0;
  //up_k = 0;
  //engine = new ArrayList<GameObject>(10000); 
  //rectMode(CENTER);
  //songfile.loop(1,0.25);
  //playerOne = new player();
  //engine.add(playerOne);  
  //engine.add(new Launcher());
  //engine.add(new Epic_Launcher());
}

void draw() {
     
  if(stage == 1 ) {
     background(bkg);

    textAlign(CENTER);
    textSize(80);
    text("Water Balloon War", 450, 450);
    textSize(35);
    text("Press 'q' to start game",450,570);
    if(qk) {
     stage = 2; 
    }
    
  }
  
  if( stage == 2 ) {
     background(bkg);


  
  time_int = time_int + 1;
  
  fill(255,255,255);
  textSize(12);
  text("score", playerOne.x + 25, playerOne.y + 125);
  fill(255,255,255);
  text(total_score, playerOne.x + 75, playerOne.y + 125);
  
  int l = engine.size() - 1; //Last entry in the engine array
  while ( l >= 0 ) {
    
    GameObject tmp = engine.get(l);
    tmp.show();
    tmp.beh();
    if (tmp.isDead()) {
      total_score = total_score + tmp.earnscore();
      up_k = up_k + tmp.earnscore();
      up_E = up_E + tmp.earnscore();
      if(up_k >= 300){
        playerOne.upgrade();
        up_k = 0;
      }
      if(up_E >= 2500){
         engine.add(new Launcher());
         engine.add(new Epic_Launcher());
         up_E = 0;
       
      }
       engine.remove(l); 
    }
    l--;
    

   
   if(playerOne.isDead()) {
     // engine.remove(playerOne);
     stage = 3;
     break;
    
  } 
}
  
  if(stage == 3) {
    
    background(bkg);
    textAlign(CENTER);
    textSize(80);
    fill(255);
    text("Game Over", 450, 450);
    textSize(35);
    fill(255);
    text("Press 'q' to restart game",450,570);
    if(qk) {
      restart();
      
    }  
  }
  
 // engine.add(new Enemy_one(width/2, height/2));
  }
}

void keyPressed() {
  
  if (key == 'w' || key == 'W') wk = true;
  if (key == 'a' || key == 'A') ak = true;
  if (key == 's' || key == 'S') sk = true;
  if (key == 'd' || key == 'D') dk = true;
  if (key == 'q' || key == 'Q') qk = true;
  if (key == 'r' || key == 'R') rk = true;
  if (key == ' ' ) spacek = true;
  
  if((key == 'q' || key == 'Q') && stage == 3) {
     restart(); 
  }
  

}

void keyReleased() {
  if (key == 'w' || key == 'W') wk = false;
  if (key == 'a' || key == 'A') ak = false;
  if (key == 's' || key == 'S') sk = false;
  if (key == 'd' || key == 'D') dk = false;
  if (key == 'q' || key == 'Q') qk = false;
  if (key == 'r' || key == 'R') rk = false;
  if (key == ' ' ) spacek = false;
  
}

void restart() {
  
  stage = 1;
  frameCount = 0;
  time_int = 0;
  total_score = 0;
  up_k = 0;
  up_E = 0;
  engine = new ArrayList<GameObject>(10000); 
  rectMode(CENTER);
  songfile.amp(0.25);
  
 songfile.loop();

  playerOne = new player();
  engine.add(playerOne);  
  engine.add(new Launcher());
  engine.add(new Epic_Launcher());
  draw();
}
