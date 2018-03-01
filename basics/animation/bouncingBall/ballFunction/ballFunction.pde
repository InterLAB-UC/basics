float circleX = 0;
float circleY = 0;
float circleSpeedX = 2.8;
float circleSpeedY = 5;


void setup() {
  size(720, 480);
}

void draw() {
  background(0);

  verBola();
  moverBola();
  limiteBola();
}

void verBola() {
  ellipse(circleX, circleY, 50, 50);
}

void moverBola() {
  circleX = circleX + circleSpeedX;
  circleY = circleY + circleSpeedY;
}

void limiteBola() {
  if (circleX >= width || circleX <= 0) {
    circleSpeedX = circleSpeedX * -1;
  }
  if (circleY >= height || circleY <= 0) {
    circleSpeedY = circleSpeedY * -1;
  }
}