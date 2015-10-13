//global variables
float x1; //tracks x coord of first cactus
float a1; //tracks acceleration of x1
float s1; //tracks speed of x1
//float x2; //tracks x coord of second cactus
//float a2; //tracks acceleration of x2
//float s2; //tracks speed of x2
//float x3; //tracks x coord of third cactus
//float a3; //tracks acceleration of x3
//float s3; //tracks speed of x3
float dinoY; //tracks y coord of dino
float dinoS; //tracks speed of dino
float dinoA; //tracks acceleration of the dino
float gravity; //gravity

//Runs once
void setup() {
 size(800, 200);
 frameRate(60);
 //set initial position of cactus
 x1 = 900; //cactus one
 //x2 = 1050;  //cactus two
 //x3 = 1200;  //cactus three
 a1 = -0.4;  //accel. of cactus one
 s1 = -3;  //initial speed of cactus one
 //a2 = -0.5; //accel. of cactus two
 //s2 = -3; //initial accel of cactus two
 //a3 = 0.6; //accel. of cactus three
 //s3 = -3; //initial speed of cactus three
 dinoY = 170; //initial vertical position of dino
 dinoS = 0; //initial dino speed
 dinoA = 0; //accel. of dino
 gravity = 0.05; //gravity
}
//Runs repeatedly
void draw() {
 background(255);

 fill (0);
 //status updates
 text("dinoY is " + dinoY, 150, 25);
 text("dinoS is " + dinoS, 150, 50);
 text("dinoA is " + dinoA, 150, 75);
 //       x    y   w    h
 ellipse(x1, 175, 50, 50); // Cactus One

 //ellipse(x2, 175, 50, 50); // Cactus Two

 //ellipse(x3, 175, 50, 50); // Cactus Three
 
 //move the dino
 
 dinoA = dinoA + gravity; 
 dinoS = dinoS + dinoA;
 dinoY = dinoY + dinoS;
 
 //stop dino hits the ground
 if (dinoY > 170) {  //bottom of the screen (200) minus the radius 
   dinoA = 0;
   dinoS = 0;
   dinoY = 170;
 
 
 }
 
 ellipse(50, dinoY, 60, 60);
 //create the appearance of moving by changing the x position
 s1 = s1 + a1;
 x1 = x1 + s1;
 //x2 = x2 + s2;
 //s2 = s2 + a2;
 //x3 = x3 + s3;
 //s3 = s3 + a3;

 //put the cactus back to x=900 if it goes past x=(-50)

 if (x1 < -26) {
   x1 = 900;                       //  <--
   s1 = -3;
 }                                 //
 //if (x2 < -26) {                   //
 //  x2 = 910;                       //  <--
 //  s2 = -3;
 //}                                 //
 //if (x3 < -26) {                   //
 //  x3 = 920;                       //  
 //  s3 = -3;
 //}
}

void keyPressed() {
 dinoY=-1;
 dinoA=-1;
}