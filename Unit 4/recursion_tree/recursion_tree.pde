float randomSize= random(50, 100);
void setup() {

  size(800, 800);
  background(0);
 
  //move the origin
  translate(width/2, height);

  //thicker lines
  strokeWeight(1);

  //make the tree upright
  rotate(radians(-90));


  //start drawing tree
  drawTree(2, randomSize); // with two generations of base, left branch, and right branch
  drawTree(3, randomSize);
  drawTree(1, randomSize);
}

void drawTree(int depth, float randomSize) {

  if (depth > 0) {

    //draw base
    stroke(0, 0, 255); //blue
    line(0, 0, randomSize, 0); //draw along the x-axis

    //move to the end of the base
    translate(randomSize, 0);


    //draw left branch
    pushMatrix();
    rotate(radians(random(-45, -100)));
    stroke(255, 0, 0); //red
    line(0, 0, randomSize, 0);
    translate(randomSize, 0); //translate to end of branch before drawing next "Y"
    drawTree(depth - 1, randomSize - 40);
    popMatrix();


    //draw right branch
    pushMatrix();
    rotate(radians(random(20, 80)));
    stroke(0, 255, 0); //green
    line(0, 0, randomSize, 0);
    drawTree(depth - 1, randomSize);
    popMatrix();

    //more right branches
    pushMatrix();
    rotate(radians(45));
    stroke(0, 255, 0); //green
    line(0, 0, randomSize, 0);
    translate(randomSize, 0);
    drawTree(depth - 1, randomSize - 20);
    popMatrix();

    // added branches red
    pushMatrix();
    rotate(radians(-60));
    stroke(255, 0, 0); //red
    line(0, 0, randomSize, 0);
    translate(randomSize, 0); //translate to end of branch before drawing next "Y"
    drawTree(depth - 1, randomSize - 40);
    popMatrix();
    
     //draw right branch
    pushMatrix();
    rotate(radians(45));
    stroke(0, 255, 0); //green
    line(0, 0, randomSize, 0);
    popMatrix();
  


}
}  
