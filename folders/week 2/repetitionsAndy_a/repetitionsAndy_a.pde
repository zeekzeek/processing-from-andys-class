float x; //float and int [java very picky]
float speed = 4; //

void setup () { // called function block
  size (400, 400);
}

void draw () {
  background (200);
  x = x+speed;
  for (int i=0; i < 20; i++) {
    
    fill(255);
    
  rect (x, i*30, 100, 100);
  if (x>width-100) {
 speed = -4;
  }
 else if(x<0) {
   speed = +4;
   println(x);
 }
 }
}

// processing book

