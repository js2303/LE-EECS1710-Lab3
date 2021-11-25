class Dot2 {

  PVector position, target; 
  color col;
  float speed;

  Dot2(float positionx, float positiony, color colour) {
    position = new PVector(positionx, positiony);
    target = new PVector(random(width), random(height));    col = colour;
    speed = 0.0001;
  }

  void update() {

    position.lerp(target, speed);
    speed = speed + 0.000001;
  }

  void draw() {

    stroke(col);
    strokeWeight(5);
    point(position.x, position.y);
  }

  void run() {

    update();
    draw();
  }
}
