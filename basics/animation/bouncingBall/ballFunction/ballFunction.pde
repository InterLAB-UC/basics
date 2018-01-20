float circleX;
float circleY;
float circleSpeedX;
float circleSpeedY;


void setup() {
  size(720, 480);
  circleX = 0;
  circleSpeedX = 2.8;
  circleY = 0;
  circleSpeedY = 5;
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