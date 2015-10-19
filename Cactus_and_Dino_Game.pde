// global variables (can be used everywhere below)
Cactus c1;

//Dino
float dinoY;     // tracks position of dino
float dinoS;     // tracks speed of dino
float dinoA;     // tracks acceleration of the dino
float gravity;   // gravity
float distance;  //track distance between dino and a cactus
// this function runs once only
void setup() {
  // draw the canvas
  size(800, 200);

  c1 = new Cactus(900, -0.4, 175, -2);


  // set dino initial vertical position
  dinoY = 170;

  // set dino's initial speed
  dinoS = 0;

  // set dino's initial acceleration
  dinoA = 0;

  // set gravity
  gravity = 0.07;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255);

  // update the cactus
  c1.update(gravity);

  if (distance<(30+25)) {
    textSize(80);
    text("Game Over", 100, 100);
  }

  // draw the dino
  fill(0);
  ellipse(50, dinoY, 60, 60);


  //determine whether there is a hit
  //        dino - cactus
  float a = dinoY - 175; // leg a 
  //float b = x1 - 50; //leg b
  float b;
  b = 0;
  distance = sqrt(pow(a, 2)+pow(b, 2));
}

// respond to keypress 
void keyPressed() {

  // Make dino move "up" on the screen
  // (negative acceleration is required, given direction of Y axis
  //  in Processing's co-ordinate system)
  if (dinoY>=170) {
    dinoA = -1;
  }
}