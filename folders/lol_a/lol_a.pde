float x;
float y;

float r1;
float r2;

float col;
float counter;
float speed = 1;

void setup() {
     background(0);
 size (800,600); 
}
void draw() {
  counter++;
  r1 = random(800);
  r2 = random (-10, 10);
  x = x+(sin(frameCount*2)*50);
  col = counter;
  y = y + speed;
noFill();
stroke(sin(col/2)*255);
pushMatrix();
beginShape();
vertex(y, 600);
vertex(r2, -x*2);
endShape();
popMatrix();

if (y > 800) {
y = 0; 
// background(0);
 counter = 0;
 x=x+speed;
}

if (y < 0) {
 y = y + speed; 
}

println(x,y);
}
