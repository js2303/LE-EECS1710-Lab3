class Dot3 {

  PVector position, target; 
  color col;
  float speed;

  Dot3(float positionx, float positiony, color _col) {
    position = new PVector(positionx, positiony);
    target = new PVector(random(width), random(height));
    col = _col;
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
