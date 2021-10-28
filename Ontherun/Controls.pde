void keyPressed() {
  if (keyCode == UP) {
    player.moveForward();
  } else if (keyCode == DOWN) {
    player.moveBackward();
  } else if (keyCode == RIGHT) {
    player.moveRight();
  } else if (key == 'd') { // toggle debug mode
    debug = !debug;
  } else if (key == 'r') { // reset
    player.init();
  }
}
