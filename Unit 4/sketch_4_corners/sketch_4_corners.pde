void setup() {
  size(1000, 1000);
  drawCircle(height/4, width/2, height/50, 100, 50);
}

void drawCircle(float radius, float priorX, float priorY, float priorTransparency, float priorBlue) {
  
  float newRadius = radius - 20;
  float newX = priorX+ 20;
  float newY = priorY- 5;
  float newTransparency = priorTransparency - 5;
  float newBlue = priorBlue - 20;
  
  //new ellipse - smaller
  fill(255, 30, 100, newTransparency);
  ellipse(newX, height/2, newRadius, newRadius);
  
  
  if (radius>20) {
    //recurse
    drawCircle(newRadius, newX, newY, newTransparency, newBlue);
  }
}

//ya
