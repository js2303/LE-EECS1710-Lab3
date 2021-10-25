float x=0;
float y=0;

PImage faceCurrent, face01, face02, face03, face04, bg, nightbg, currentbg;
PImage treat;
//https://forum.processing.org/one/topic/drag-around-an-image.html//source for mouse moving treat
//and collision detection
float easing = 0.05;
float xloc = random(800);
float yloc = random(600);
float w = 488;
float h =480;
int tcounter=0;

void setup() { 
  size(800, 600, P2D);
  treat = loadImage("treat.png");
  treat.resize(treat.width/4, treat.height/4);
  bg = loadImage("dogpark.jpg");
  nightbg = loadImage("nightimebg.jpg");
  face01 = loadImage("dogconcerned1.png");
  face01.resize(face01.width/3, face01.height/3);
  face02 = loadImage("dogangry1.png");
  face02.resize(face01.width, face01.height);
  face03 = loadImage("doghappy1.png");
  face03.resize(face01.width, face01.height);
  face04 = loadImage("dogveryhappy1.png");
  face04.resize(face01.width, face01.height);
  faceCurrent = face02;
  currentbg = bg;
}

void draw() {
  background(currentbg);
  fill(100);
  textSize(30);
  image (treat, x, y);
  image (faceCurrent, 488, 480);
  if (dist(w, h, x, y)<=50) {
    faceCurrent = face03;
    image (faceCurrent, w, h);
    if (faceCurrent == face03) {
      x=0;
      y=0;
      tcounter+=1;
      if (tcounter >= 5) {
        faceCurrent=face04;
        x=0;
        y=0;
      }
      if (tcounter >= 9) {
        currentbg = nightbg;
        faceCurrent=face01;
        x=0;
        y=0;
      }
      if (tcounter == 12) {
        exit();
      }
    }
  }
}

void mouseDragged ()
{
  x += (mouseX - x) * easing;
  y += (mouseY-y)*easing;
}
