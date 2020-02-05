// DECLARE 
Ball myBall;
Ball myBall2;
Ball myBall3;

void setup() {
  size(600, 600);
  smooth();
  background(0); //if background is placed in setup, trails will remain
frameRate(30);
  // INITIALISE
  myBall = new Ball(0, 0); //specified in Ball tab
  myBall2 = new Ball(600, 600); //specified in Ball tab
  myBall3 = new Ball(600, 0); //specified in Ball tab
}

void draw() {
  fill(random(255));
  //CALL FUNCTIONALITY
  myBall.run(); // . opens up a class and call function
  myBall2.run();
  myBall3.run();
}

  // can make multiple objects acting within the same parameters,
  // at different positions

