PImage space, spacer, spacef;
float x1, y1, x2, y2;
float speedX1, speedX2;

void setup() {
  size(800, 600, P2D);
  spacer = loadImage("Spacerocketnew.png");
  spacer.resize(spacer.width * (height / spacer.height), height);
  spacef = loadImage("Spaceafire.png");
  spacef.resize(spacef.width * (height / spacef.height), height);
  space = loadImage("Space.png");
  space.resize(space.width * (height / space.height), height);

  imageMode(CENTER);
  
  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 50;
  y2 = y1 - 50;
  speedX1 = 5;
  speedX2 = speedX1 * 0.5;
}

void draw() {
  background(space);
    
  image(space, x2, y2);
  
  noTint();
  image(spacef, x1, y1); // the image drawn last will be in front
  image(spacer, x2, y2);
  
  x1 += speedX1;
  x2 += speedX2;
    
  if (x1 > width || x1 < 0) {
    speedX1 *= -1;  
    speedX2 *= -1;
  }
}
