class Player {
  PImage playercar;
  PVector startPosition, position, target;
  float movementStep = 50;
  float movementSpeed = 0.1;
  color col = color(127, 255, 10);
  boolean alive;

  Player() {
    init();
  }

  void init() {
    alive = true;
    startPosition = new PVector(0, height/2);
    position = startPosition.copy();
    target = position.copy();
  }

  void moveForward() {
    target.y -= movementStep;
  }

  void moveBackward() {
    target.y += movementStep;
  }

  void moveRight() {
    target.x += movementStep;
  }

  void update() {
    position.lerp(target, movementSpeed);
  }

  void draw() {
    rectMode(CENTER);
    if (alive) {
      fill(col);
    } else {
      fill(255, 0, 0);
    }
    playercar = loadImage("bluecar.png");
    playercar.resize(100, 50);
    image(playercar, position.x, position.y);

    if (debug) {
      noFill();
      stroke(debugColor);
      ellipse(player.position.x, player.position.y, crashRange, crashRange);
    }
    if (player.position.x>=800) {
      gammeescaape();
    }
    if (player.position.y<=50) {
      gameend();
    }
    if (player.position.y>=550) {
      gameend();
    }
    if (player.alive==false) {
      gameend();
    }
  }

  void run() {
    update();
    draw();
  }
}
