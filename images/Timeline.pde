//Nina schein guerin | 26 Feb 2026 | Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(200);
  background(#C97BF9);
  drawRef();
  histEvent(75,200,"Aug 8, 1981",true,"Roger Federer Born in Basel, Switzerland");
  histEvent(190,300,"1989",false,"Joined junior tennis program");
  histEvent(265,200,"1995",true,"Became swiss junior champion");
  histEvent(320,300,"1998",false,"Deputed on ATP tour");
  histEvent(370,200,"2003",true,"Won first grand slam at wimbeldon");
  histEvent(450,300,"2008",false,"Won gold medal at Olympics in doubles");
  histEvent(640,200,"2018",true,"Last grand slam at Australian open");
  histEvent(700,300,"2022",false,"Retired from tennis");
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(255);
   fill(#0051C7);
  text("Timeline",width/2,65);
  textSize(18);
   text("By: Nina schein guerin",width/2,85);
   strokeWeight(2);
   fill(#78D5FF);
   line(50,250,900,250); // Timeline
   line(50,245,50,255); // Left tic
   line(900,245,900,255); // Right tic
   line(450,245,450,255); // middle tic
   line(250,245,250,255); // left 2 tic  
   line(650,245,650,255);// right 2 tic
   strokeWeight(2);
   textSize(12);
   stroke(#A6FFFE);
   text("1980",50,270);//left tic
    text("1995",250,270);// middle left
     text("2020",650,270);//midddle right
     text("2010",450,270);// middle
     text("2030",900,270);//right tic
     
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    line(x,y,x-15,y+50);
  } else {
    line(x,y,x-15,y-50);
  }
  rectMode(CENTER);
  fill(#1B3CF5);
  rect(x,y,100,30,10);
  fill(255);
  text(title,x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail,width/2,350);
  }
}
