// DECLARE 
Ball myBall;
Ball myBall2;
Ball myBall3;

void setup() {
  size(600, 600);
  smooth();

  // INITIALISE
  myBall = new Ball(200, 200); //specified in Ball tab
  myBall2 = new Ball(100, 240); //specified in Ball tab
  myBall3 = new Ball(400, 200); //specified in Ball tab
}

void draw() {
  background(0);
  //CALL FUNCTIONALITY
  myBall.run(); // . opens up a class and call function
  myBall2.run();
  myBall3.run();
}  

// can make multiple objects acting within the same parameters,
// at different positions

