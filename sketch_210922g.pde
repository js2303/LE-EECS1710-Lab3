color bgColor = color(170, 17, 188); //color of the background
color circleColor = color(255, 165, 0); //color of the circle    
float circleSize = 50; //size of the circle
PImage bg;
String message1 = "SHOOT THE BALL!";
PFont font;
int fontSize = 75;

void setup() { 
  size(800, 600, P3D); 
  bg = loadImage("bg.jpg");
  background(bg);
  font = createFont("Times New Roman", fontSize);
  textFont(font, fontSize);
  textAlign(CENTER);
}
void draw() {
  text(message1, width/2,height/3);
  if (mousePressed) {
    background(bg);
    ellipseMode(CENTER);
    fill(circleColor);
    stroke(bgColor);
    ellipse(mouseX, mouseY, circleSize, circleSize);
  }

  if (keyPressed) {
    background(bg);
  }
}
