// Nina schein guerin | 26 March 2026 | Timer
import processing.sound.*;
SoundFile laser;

Button btnStart, btnStop, btnReset;
int totalTime = 10;
int startTime = 0;
int timeLeft = 0;
boolean running = false;

void setup() {
  size(500, 500);
  laser = new SoundFile(this, "laser.mp3");
  btnStart = new Button(250, 100, 100, 30, "Start", color(80), color(60));
  btnStop = new Button(250, 400, 100, 30, "Stop", color(#F25133), color(#F2333E));
  btnReset = new Button(250, 30, 100, 30, "Reset", color(80), color(60));
  timeLeft = totalTime;
}

void draw() {
  background(127);

  if (running == true) {
    int elapsed = (millis() - startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      // play sound
      laser.play();
    }
  }

  btnStart.display();
  btnStart.hover();
  btnStop.display();
  btnStop.hover();
  btnReset.display();
  btnReset.hover();
  
  fill(180);
  rect(width/2, height/2, width-100, 200);
  textSize(100);
  fill(60);
  text(timeLeft, width/2, 250);
  //laser.play();
  textSize(20);
  text("by Nina Schein Guerin", width/2,480);
}

void mousePressed() {
  if(btnStart.over == true) {
    running = true; 
    startTime = millis();
  }
  if(btnReset.over == true) {
    running = true;
    startTime = millis();
  }
  if(btnStop.over == true) {
    running = false; 
  }
}
