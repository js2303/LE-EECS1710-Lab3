Player player;

ArrayList<Car> cars;
float d = 5;
int timeLimit = 60;
int currentTime = 0;
int markTime = 0;
int carInterval = 1000;
float crashRange = 80;
boolean debug = false;
color debugColor = color(255, 127, 0);

PFont font;
int fontSize = 48;
PImage road, car, bg, endscreen, escapescreen, startscreen;
void setup() {
  size(800, 600, P2D);
  startscreen = loadImage("policechase.png");
  image(startscreen, 0, 0);
  font = createFont("Arial", fontSize);
  textFont(font, fontSize);
  player = new Player();
  cars = new ArrayList<Car>();
  bg = loadImage("road.jpg");
}
void startGame() {
}
void gameend() {
  background(0);
  endscreen = loadImage("arrestedit.png");
  image(endscreen, 0, 0);
  text("press SPACE to exit", width/4, 6*height/7);
  if (keyCode == ' ') {
    exit();
  }
}

void gammeescaape() {
  background(0);
  escapescreen = loadImage("escape.png");
  image(escapescreen, 0, 0);
  text("press SPACE to exit", width/4, 3*height/4);
  if (keyCode == ' ') {
    exit();
  }
}
void draw() {
  background(bg);
  noStroke();
  int t = millis();
  currentTime = abs(timeLimit - int(t/1000));
  if (t > markTime + carInterval) {
    cars.add(new Car());
    markTime = t;
  }


  for (Car car : cars) {
    car.run();
    if (debug) {
      stroke(debugColor);
      line(car.position.x, car.position.y, player.position.x, player.position.y);
    }
    if (player.position.dist(car.position) < crashRange) player.alive = false;

    if (player.alive == false) {
    }
  }
  player.run();

  fill(255);
  text(currentTime, 10, fontSize);

  // clean up cars that have left the screen
  for (int i=cars.size()-1; i>=0; i--) {
    if (!cars.get(i).alive) {
      cars.remove(i);
    }
  }

  surface.setTitle("" + frameRate);
}
