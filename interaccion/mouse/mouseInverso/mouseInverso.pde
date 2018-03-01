
void setup() {
  size(100,100);
  noStroke();
  smooth();
}

void draw() {
  float x = mouseX;
  float y = mouseY;
  float ix = width - mouseX; // x inverso
  float iy = height - mouseY; // y inverso
  background(126);
  fill(255,150);
  ellipse(x,height/2,y,y);
  ellipse(ix,height/2,iy,iy);
}