void setup() {
  size(1000, 1000);
  drawCircle(height/1, 0, 100, 50);
}

void drawCircle(float radius, float priorX, float priorTransparency, float priorBlue) {
  
  float newRadius = radius - 20;
  float newX = priorX+ 20;
  float newTransparency = priorTransparency - 5;
  float newBlue = priorBlue - 20;
  
  //new ellipse - smaller
  fill(255, 30, 100, newTransparency);
  ellipse(newX, height/2, newRadius, newRadius);
  
  
  if (radius>20) {
    //recurse
    drawCircle(newRadius, newX, newTransparency, newBlue);
  }
}

//ya
