class Dino {
  //global variables for Dino
  //Dino
  float dinoY;     // tracks position of dino
  float dinoS;     // tracks speed of dino
  float dinoA;     // tracks acceleration of the dino

  //constructor
  Dino (float a_, float y_, float s_) {
    dinoA=a_;
    dinoY=y_;
    dinoS=s_;
  }

  // updating and drawing the dino on screen
  void update(float gravity) {
    // draw the dino
    fill(0);
    ellipse(50, dinoY, 60, 60);

    //move dino
    dinoA = dinoA + gravity;   //change acceleration based on gravity
    dinoS = dinoS + dinoA;  //change speed based on speed
    dinoY = dinoY + dinoS;  //change speed based on acceleration
    //change location based on speed

    //stop the dino if it hits the ground
    if (dinoY > 170) {
      dinoS = 0;
      dinoY = 170;
      dinoA = 0;
    }
  }// bottom of the screen (200) minus the radius of (30)
  // getY
  //
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dinoY;
  }

  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dinosaur be set
  //          from outside the class
  void setA(float newA_) {
    dinoA = newA_;
  }
  // isTouching
  //
  // Purpose: uses information about cactus position and determines if it is 
  //          touching the dino
  boolean isTouching(Cactus c) {
    // determine distance between the objects
    //        dino - cactus
    float a = (c.getY() - dinoY);
    float b = (c.getX() - dinoX);
    float distance = (sqrt(a*a + b*b));

    if ( distance < (dinoR + c.getR())) {
      return true;
    }
    // when dino is not touching, say "no" (not touching) or "false"
    return false;
  }
}