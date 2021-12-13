import processing.sound.*;
SoundFile[] file;

//the number of sounds that are used and loaded into processing
int numsounds = 5;

int backgroundColor[] = {255, 255, 255};

void setup() {
  size(800, 200);
  file = new SoundFile[numsounds];

  //loop to load all the sound files
  for (int i = 0; i < numsounds; i++) {
    file[i] = new SoundFile(this, (i+1) + ".aif");
  }
}

void draw() {
  pianokeys();
}

void pianokeys () {
  //Drawing 22 white piano keys
  stroke(0);
  fill(255, 255, 255);
  rect(0, 0, 36.3636363636, 200);
  rect(36.3636363636, 0, 36.3636363636, 200);
  rect(72.7272727273, 0, 36.3636363636, 200);
  rect(109.090909091, 0, 36.3636363636, 200);
  rect(145.454545455, 0, 36.3636363636, 200);
  rect(181.818181818, 0, 36.3636363636, 200);
  rect(218.181818182, 0, 36.3636363636, 200);
  rect(254.545454545, 0, 36.3636363636, 200);
  rect(290.909090909, 0, 36.3636363636, 200);
  rect(327.272727273, 0, 36.3636363636, 200);
  rect(363.636363636, 0, 36.3636363636, 200);
  rect(400, 0, 36.3636363636, 200);
  rect(436.363636364, 0, 36.3636363636, 200);
  rect(472.727272727, 0, 36.3636363636, 200);
  rect(509.090909091, 0, 36.3636363636, 200);
  rect(545.454545455, 0, 36.3636363636, 200);
  rect(581.818181818, 0, 36.3636363636, 200);
  rect(618.181818182, 0, 36.3636363636, 200);
  rect(654.545454545, 0, 36.3636363636, 200);
  rect(690.909090909, 0, 36.3636363636, 200);
  rect(727.272727273, 0, 36.3636363636, 200);
  rect(763.636363636, 0, 36.3636363636, 200);

  stroke(0);
  fill(0);
  rect(25, 0, 20, 150);
  rect(61, 0, 20, 150);

  rect(134, 0, 20, 150);
  rect(170, 0, 20, 150);
  rect(207, 0, 20, 150);

  rect(279, 0, 20, 150);
  rect(316, 0, 20, 150);

  rect(390, 0, 20, 150);
  rect(425, 0, 20, 150);
  rect(461, 0, 20, 150);

  rect(534, 0, 20, 150);
  rect(570, 0, 20, 150);

  rect(643, 0, 20, 150);
  rect(678, 0, 20, 150);
  rect(716, 0, 20, 150);
}
void keyPressed() {
  switch(key) {

  case 'a':
    file[0].play(0.5, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(0, 0, 36.3636363636, 200);
    break;

  case 's':
    file[1].play(0.5, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(36.3636363636, 0, 36.3636363636, 200);
    break;

  case 'd':
    file[2].play(0.5, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(72.7272727273, 0, 36.3636363636, 200);
    break;

  case 'f':
    file[3].play(0.5, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(109.090909091, 0, 36.3636363636, 200);
    break;

  case 'g':
    file[4].play(0.5, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(145.454545455, 0, 36.3636363636, 200);
    break;

  case 'h':
    file[0].play(1.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(181.818181818, 0, 36.3636363636, 200);
    break;

  case 'j':
    file[1].play(1.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(218.181818182, 0, 36.3636363636, 200);
    break;

  case 'k':
    file[2].play(1.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(254.545454545, 0, 36.3636363636, 200);
    break;

  case 'l':
    file[3].play(1.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(290.909090909, 0, 36.3636363636, 200);
    break;

  case ';':
    file[4].play(1.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(327.272727273, 0, 36.3636363636, 200);
    break;

  case '\'':
    file[0].play(2.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(363.636363636, 0, 36.3636363636, 200);
    break;

  case 'q':
    file[1].play(2.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(400, 0, 36.3636363636, 200);
    break;

  case 'w':
    file[2].play(2.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(436.363636364, 0, 36.3636363636, 200);
    break;    

  case 'e':
    file[3].play(2.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(472.727272727, 0, 36.3636363636, 200);
    break;

  case 'r':
    file[4].play(2.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(509.090909091, 0, 36.3636363636, 200);
    break; 

  case 't':
    file[0].play(3.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(545.454545455, 0, 36.3636363636, 200);
    break;

  case 'y':
    file[1].play(3.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(581.818181818, 0, 36.3636363636, 200);
    break;

  case 'u':
    file[2].play(3.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(618.181818182, 0, 36.3636363636, 200);
    break;    

  case 'i':
    file[3].play(3.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(654.545454545, 0, 36.3636363636, 200);
    break;

  case 'o':
    file[4].play(3.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(690.909090909, 0, 36.3636363636, 200);
    break;

  case 'p':
    file[0].play(4.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(727.272727273, 0, 36.3636363636, 200);
    break;    

  case '[':
    file[1].play(4.0, 1.0);
    stroke(0);
    fill(255, 0, 0);
    rect(763.636363636, 0, 36.3636363636, 200);
    break;

  case ' ':
    exit();
  }
}
