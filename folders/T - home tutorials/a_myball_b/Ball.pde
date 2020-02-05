class Ball {
  // GLOBAL VARIABLES
  float x=0;
  float y=0;
  float speedX = 2;
  float speedY = 0.5;


  // CONSTRUCTOR *
  Ball(float _x, float _y) { //_x and _y linked to initialise stage
    x = _x;
    y = _y;
  }

  // FUNCTIONS
  void run() {
    display(); 
    move();
    //bounce
    //gravity
  }
  void move() {
    x += speedX;
    y += speedY; //update position by adding +0.5 in every frame
  }
  void display() {
    ellipse(x, y, 20, 20);
  }
}

//when opening curly brackets, close them immediately

