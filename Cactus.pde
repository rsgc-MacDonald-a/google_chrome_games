class Cactus {
  //global variables for the cactus
  float x1;  //cactus x
  float a1;  //acceleration of cactus
  float y1;  //y of cactus
  float s1;  //speed of cactus

  //constructor
  Cactus(float x_, float a_, float y_, float s_) {
    x1=x_;
    y1=y_;
    s1=s_;
    a1=a_;
  }

  //update : draws things related to cactus
  void update(float gravity) {
    ellipse(x1, 175, 50, 50);

    // change the speed
    s1 = s1 + a1;

    // create the appearance of moving by changing the x position
    x1 = x1 + s1;

    // put the cactus back on the right edge if it goes off the left edge
    if (x1 < -25) {
      x1 = 900; // place off screen on right 
      s1 = -1;  // reset the speed (to avoid insanely fast movement)
    }
  }


  //get X
  //Purpose: return X postition to cactus
  float getX() {

    return x1;
  }
}