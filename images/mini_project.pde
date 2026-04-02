// Nina Schein Guerin | 31 Mar 2026 | Mini Project
int x,y, tx, ty, score;
float tw;
PImage player, target;

void setup () {
  size(500,500);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20)); 
  score = 0;
  tw = 100.0;
  player = loadImage ("mousetwo.png");
  target = loadImage ("cookie.png");
}

void draw() {
  background(#DE98D4);
  //ellipse(x,y,20,20);
  imageMode(CENTER);
  image(player,x,y);
  target();
  scorePanel();
}

void scorePanel() {
  fill(#DE98D4);
  rect(width/2,15,width,30);
  fill(#DF7DCE);
  textSize(25);
  text("Score:" + score,20,25);
}

void target() {
  float d = dist(x,y,tx,ty);
  println(d);
  println(score); 
  rectMode(CENTER);
  image(target,tx,ty,tw,tw);
  if(d<tw/2) {
    score = score + 100;
     tx = int(random(20, width-20));
  ty = int(random(20, height-20)); 
  tw = 100.0;
  }
  tw = tw - 0.1;
  if(tw <= 10) {
gameOver();
  }
}

void gameOver() {
 background(#DE98D4);
 fill(#DF7DCE);
 textAlign(CENTER);
 text("Game Over",width/2,height/2);
 noLoop();
}


void keyPressed () {
  if (y<0) {
    y = height;
  }
  if (y>height) {
    y = 0;
  }  
  if (x>height) {
 x =  0;
  }
  if (x<0) {
    x = height;
  }
  
  if (key == '8' || key == 'w') {
 y = y - 10;
  } else if (key == '5' || key == 's') {
    y = y + 10;
  } else if (key == '4' || key == 'a')  {
    x = x - 10; 
  } else if (key == '6' || key == 'd') {
    x = x + 10;
  }
}
