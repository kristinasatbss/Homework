float xRandom;
float yRandom;
float newWidth;
float newHeight;
float newX;
float newY;

void setup() {
  size(500, 500);
  strokeWeight(5);
  xRandom= random(50, width-50);
  yRandom= random(50, height-50);
  newWidth= xRandom;
  newHeight= yRandom;
  newX= random(50, newWidth);
  newY= random(50, newHeight);
  //float xRandom
  //float yRandom
  drawRect();
  drawNewRect();
}


void drawRect() {
  fill(255, 255, 0);
  rect(0, 0, xRandom, yRandom);
  fill(255, 0, 0);
  rect(xRandom, 0, width-xRandom, yRandom);
  fill(0, 0, 255);
  rect(0, yRandom, xRandom, height-yRandom);
  fill(255, 255, 255);
  rect(xRandom, yRandom, width-xRandom, height-yRandom);
  if (yRandom>75);
}

void drawNewRect() {
  fill(255, 255, 255);
  rect(0, 0, newX, newY);
  fill(0, 0, 255);
  rect(newX, 0, newWidth-newX, newY);
  fill(255, 0, 0);
  rect(0, newY, newX, newHeight-newY);
  fill(255, 255, 0);
  rect(newX, newY, newWidth-newX, newHeight-newY);
  
  if(xRandom>25){
  drawRect(xRandom, yRandom);
  }
}
