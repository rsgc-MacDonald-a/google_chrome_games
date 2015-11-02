// global variables (can be used everywhere below)
Cactus c1;
Dino d1;

float gravity;   // gravity
float distance;  //track distance between dino and a cactus

void setup() {
  // draw the canvas
  size(800, 200);

  // creates and initializes the first cactus object 
  c1 = new Cactus(900, -0.4, 175, -2);

  // creates and initializes the dino object
  d1 = new Dino(0, 170, 0);

  // set gravity
  gravity = 0.07;
}

// this function runs repeatedly
void draw() {
  // background clears each time the program loops
  background(255); 

  // update the cactus
  c1.update(gravity);

  // update the dino
  d1.update(gravity);

  if (d1.isTouching(c1)) {
    textSize(80);
    text("Hit", 400, 100);
    noLoop();
  } 

  //determine whether there is a hit
  //        dino - cactus
  float a = d1.getY() - 175; // leg a 
  float b = 50 - c1.getX(); //leg b
  //float b;
  b = 0;
  distance = sqrt(pow(a, 2)+pow(b, 2));
}

// respond to keypress 
// respond to keypress 
void keyPressed() {
  //if (dinoY == 170) {
  //  dinoA = -1;
  //}
  if (d1.getY() == 170) {
    d1.setA(-1);
  }
}