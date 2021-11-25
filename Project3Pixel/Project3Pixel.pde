PImage riley, woncler, huey, sm;
ArrayList<Dot> dots;
ArrayList<Dot2> dots2;
ArrayList<Dot3> dots3;

int scaler = 8;

void setup() {

  frameRate(60);
  size(1000, 800, P2D);  
  riley = loadImage("fundraiser1.png");
  riley.resize(width, height);
  riley.loadPixels();

  woncler = loadImage("woncler1.png");
  woncler.resize(width, height);
  woncler.loadPixels();

  huey = loadImage("huey2.png");
  huey.resize(width, height);
  huey.loadPixels();

  sm = loadImage("stinkmeaner1.png");
  sm.resize(width, height);
  sm.loadPixels();

  dots = new ArrayList<Dot>();

  dots2 = new ArrayList<Dot2>();
  dots3 = new ArrayList<Dot3>();

  for (int x = 0; x < woncler.width / 2; x += scaler) { 
    for (int y = 0; y < woncler.height / 2; y += scaler) {
      int loc = x + y * (woncler.width);

      dots.add(new Dot(x, y, woncler.pixels[loc]));
    }
  }
  for (int x = 501; x > riley.width / 2 && x < riley.width; x += 1) { 
    for (int y = 0; y < riley.height / 2; y += 1) {
      int loc = x + y * (riley.width);
      if (x > riley.width/2 & x > riley.height/2) {
        float r = 255 - red(riley.pixels[loc]);
        float g = 0.7 * green(riley.pixels[loc]);
        float b = 0;
        riley.pixels[loc] = color(r, g, b);
      }
    }
  }
  for (int x = 0; x < sm.width / 2; x += scaler) { 
    for (int y = 401; y > sm.height / 2 && y < sm.height; y += scaler) {
      int loc = x + y * (sm.width);

      dots2.add(new Dot2(x, y, sm.pixels[loc]));
    }
  }


  for (int x = 501; x > huey.width / 2 && x < huey.width; x += scaler) { 
    for (int y = 401; y > huey.height / 2 && y < huey.height; y += scaler) {
      int loc = x + y * (huey.width);

      dots3.add(new Dot3(x, y, huey.pixels[loc]));
    }
  }
  riley.updatePixels();
}


void draw() { 
  image(riley, 0, 0);

  for (Dot dot : dots) {
    dot.run();
  }

  for (Dot2 dot2 : dots2) {
    dot2.run();
  }

  for (Dot3 dot3 : dots3) {
    dot3.run();
  }

  surface.setTitle("" + frameRate);
}
