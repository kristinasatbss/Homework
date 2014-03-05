// Contains the starting, or intial, word (axiom)
String axiom = "F++F++F";

// Contains the existing word
String existingWord = "";

// Contains the new (re-written) word
String newWord = "";

// Tracks how many times existing word has been re-written
int rewriteCount = 0;

// Tracks what character we are currently inspecting in the existing word
int currentCharacter = 0;

// Will contain all the rules that apply for this L-system
StringDict rules; 

//make length of line 300
int initialLength = 300; 
float currentLength = 0;

//starts turtle drawing at (400, 300)
int turtleX = 200;
int turtleY = 400;

//angle turtle is facing
int startAngle = 0;

//angle turtle turns at
int angle = 60;

// This function runs once.
void setup() {

  // Create the canvas
  size(800, 600);

  // White background
  background(255, 255, 255);

  // Black text
  fill(0, 0, 0);

  // Set text size
  textSize(24);

  // Slow down the refresh rate
  frameRate(1);

  // Create the string dictionary object
  // "Using the StringDict class, create a new StringDict object, named 'rules' "
  rules = new StringDict();

  // Add rules (key-value pairs)
  //         key     value
  rules.set("F", "F-F++F-F");

  // For the first re-write, the existing word is set to the axiom
  existingWord = axiom;
  rewriteCount = 1;

  //Rewrite the existing word accoridng to the rules
  rewriteWord();
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {
  

}

// Responds to key presses
void keyPressed() {

  // When the right arrow key is pressed, do another round of replacement
  if (key == CODED) {
    if (keyCode == RIGHT) {

      // New word from last time becomes existing word for this round of replacement
      existingWord = newWord;

      // Need to reset these variables to get ready for another round of replacement 
      newWord = "";
      rewriteCount += 1;


      // do another level of replacement
      rewriteWord();
    }
  }
  //if the user presses the 'd' key, draw the new word
  if (key == 'd') {
    turtleDraw(); //draw current word
  }
}
//rewrite word
//
// Purpose: take the existing word, iterate over each character, make replacements where needed


void rewriteWord() {

  //clean the canvas
  background(255, 255, 255);

  // Iterate over each character
  for (int currentCharacter = 0; currentCharacter < existingWord.length(); currentCharacter++) {

    // Print text to the screen
    // Arguments:
    //   string, x, y
    text("The axiom is: " + axiom, 0, 25);

    // Print the existing word
    text("The existing word: " + existingWord, 0, 50, width, 200);

    // Print what generation of replacement this is
    text("Have re-written word this many times: " + rewriteCount, 0, 275);

    // Re-paint the background
    background(255, 255, 255); // white

    // Print text to the screen
    // Arguments:
    //   string, x, y
    text("The axiom is: " + axiom, 0, 25);

    // Print the existing word
    text("The existing word: " + existingWord, 0, 50, width, 200);

    // Print what generation of replacement this is
    text("Have re-written word this many times: " + rewriteCount, 0, 275);

    // Show what character we are inspecting
    text("Current character is: " + currentCharacter, 0, 325);

    // Check each character - if it matches a rule, replace it
    if ( existingWord.charAt(currentCharacter) == 'F') {
      // replace
      newWord += rules.get("F");
      fill(255, 0, 0); 
     // text("replacement occurred", width/2, 325);
      fill(0, 0, 0);
    } 
    else {
      // copy the character directly
      newWord += existingWord.charAt(currentCharacter);
    }

    // Print the new word
    text("New word is: " + newWord, 0, 350, width, 200);
  }
}


void turtleDraw() {

  println ("about to place turtle");

  //make new origin
  translate(turtleX, turtleY);

  //rotate to facing right
  rotate(radians(startAngle));

  //  //line
  //  line(0, 0, 300, 0);
  
  currentLength = initialLength/pow(3, rewriteCount);

  for (int currentCharacter = 0; currentCharacter < newWord.length(); currentCharacter++) {

    if ( newWord.charAt(currentCharacter) == 'F') {
      line(0, 0, currentLength, 0);
      translate(currentLength, 0);
    } 
    else if ( newWord.charAt(currentCharacter) == '-') {

      rotate(radians(angle));
    }
    else if ( newWord.charAt(currentCharacter) == '+') {

      rotate(radians(angle*-1));

      println (newWord.charAt(currentCharacter));
    }
  }
}
