float rotSeconds = 0;
float rotMinutes = 0;
float rotHours = 0;
int lastSecond = 0;
int lastMinute = 0;
int lastHour = 0;

float faceSize = 500;
float lengthSecondHand = 220;
float lengthMinuteHand = 200;
float lengthHourHand = 100;

color outlineCol = color(0);
color secondCol = color(200, 0, 0);
color faceCol = color(255, 255, 255);
PImage bg;
PFont f;
void setup() {
  size(800, 600, P2D); 
  strokeWeight(2);
  f = createFont("Melted Monster.ttf,", 48);

}

void draw() {
  bg = loadImage("clockbg.jpg");
  background(bg);
  int s = second();
  int m = minute();
  int h = hour();
  
  textFont(f);
  fill(0);
  text("12", 383, 38);
  text("1", 527, 75);
  text("2", 624, 167);
  text("3", 658, 308);
  text("4", 630, 439);
  text("5", 535, 548);
  text("6", 390, 595);
  text("7", 242, 552);
  text("8", 138, 440);
  text("9", 110, 307);
  text("10", 135, 159);
  text("11", 246, 56);




  if (s != lastSecond) {
    rotSeconds = ((float) s / 60) * TWO_PI;
    lastSecond = s;
  }
  
  if (m != lastMinute) {
    rotMinutes = ((float) m / 60) * TWO_PI; 
    lastMinute = m;
  }
  
  if (h != lastHour) {
    rotHours = ((float) h / 12) * TWO_PI;  
    println(h);
    lastHour = h;
  }
  
  fill(faceCol);
  stroke(outlineCol);
  ellipse(width/2, height/2, faceSize, faceSize);
  
  stroke(0, 127, 255, 44);
  for(int i=0; i<12; i++) {
    float rot = ((float) i/12) * TWO_PI;
    pushMatrix();
    translate(width/2, height/2);
    rotate(rot);
    line(0, faceSize/5, 0, faceSize/2);
    popMatrix();
  }
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotSeconds);
  fill(secondCol);
  stroke(secondCol);
  line(0, 0, 0, -lengthSecondHand);
  ellipse(0, -lengthSecondHand, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotMinutes);
  fill(0);
  stroke(outlineCol);
  line(0, 0, 0, -lengthMinuteHand);
  ellipse(0, -lengthMinuteHand, 10,10);
  popMatrix();
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(rotHours);
  line(0, 0, 0, -lengthHourHand);
  ellipse(0, -lengthHourHand, 10,10);
  popMatrix();
  
  fill(faceCol);
  ellipse(width/2, height/2, 10, 10);
  
  //println (mouseX +"," + mouseY);//used to get coordinates to place numbers

}
