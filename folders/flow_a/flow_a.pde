float a;
float b;
float x=0.5;
float counter;
float y = 1;
float n = 1;
float counter2;
float l;
float p;
float col;
float c;

void setup() {
  size (800, 600, P3D);
  filter(BLUR, x);
  frameRate(60);
    background(0);
    //noStroke();
    rectMode(CENTER);
}

void draw() {
  c = c+(sin(frameCount*10)*50);
  counter++;
  counter2++;
  x = x + 1;
    n += (0-n) * counter* 0.00005;
    l = random(-a, a);
    p = random(-b*4, b*4);
    col = random (140,255);
  
  if (c > 800) {
   c = c - 1; 
  }
  if (y > 200) {
   y = -200; 
  }

  if (x > 500) {
    x = 0;
   y = x*n*2;
  }

  if (counter > 100) {
    counter = 0;
  }
  
  if (counter2 > 1500) {
    counter2=0;
   y = x*n*2;
  background(0); 
  }
  
  pushMatrix();
  fill(col);
  stroke(col);
  translate(width/2, height/8);
  translate(c, counter*2);
  rotateY(counter*0.063);
  for (a = 0; a < 150; a = a+149) {
    for (b = 0; b < 200; b = b + 190) {  
      line(a, b*n, 0, y);
    }
  }
  popMatrix();
  println(counter2,y,n,c);
}

