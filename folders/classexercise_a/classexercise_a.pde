Whatever w;

void setup () {
  size (800, 600, P3D);
  w = new Whatever (200,200);
}

void draw () {
  background (0);
  w.run();
}

class Whatever {
  float x;
  float y;
  float s;
  float speedY;
  
  Whatever(float _x, float _y ) {
    x = _x;
    y = _y;
  } 
  
  void run () {
   draw(); 
   gravity();
   move();
   conditions();
  }
  
  void gravity () {
    speedY += 6;
  }
  
  void move () {
   y = speedY; 
  }
  
  void conditions () {
    if (speedY > 600) {
      speedY = 0;
    }
    if (speedY < 0) {
      speedY = 0;
    }
  }
  
  void draw () {
    pushMatrix();
    translate(width/2,height/2);
    rect(0,0,x,y);
    popMatrix();
    println(speedY,x);
  }
}

