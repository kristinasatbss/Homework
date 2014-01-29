// setup fuction - things we once
// draw function - things that should happen repeatedly
// other functions - things we teach the computer to do

//set up
void setup() {

  size(300, 300);
  strokeWeight(8);

  // declare variables
  // type name = ?;
  float randomWidth = random(0, width - 25);
  println("width is" + randomWidth);
  float randomHeight = random(0, height - 25);

  //rectangles
  fill(0, 255, 0);
  rect(0, 0, randomWidth, randomHeight);

  fill(255, 255, 0);
  rect(randomWidth, 0, width - randomWidth, randomHeight);


  fill(0, 255, 255);
  rect(0, randomHeight, randomHeight, height - randomHeight);

  fill(255, 0, 255);
  rect(randomWidth, randomHeight, width - randomWidth, height - randomHeight);
}




void draw() {
}
