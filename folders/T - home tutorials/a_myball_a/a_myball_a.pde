// DECLARE 
Ball myBall;

void setup() {
  size(600, 600);
  smooth();
  
// INITIALISE
  myBall = new Ball(400, 400); //specified in Ball tab
}

void draw() {
  background(0);
//CALL FUNCTIONALITY
  myBall.run(); // . opens up a class and call function
}  

