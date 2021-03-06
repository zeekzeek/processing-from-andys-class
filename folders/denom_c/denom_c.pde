ArrayList <Line> line;
float periX;
float periY;
float speed = 1;

void setup() {
    background(0);
  size (500, 500); 
  noStroke();
  line = new ArrayList();
  for (int i=0; i<random(100); i++) {
    line.add(new Line());
  }
}

void draw() {
  fill(255);
  translate (width/2, height/2);
  periX = (cos(frameCount*0.005)*400);
  periY = (cos(frameCount*0.005)*400);
  ellipse(0, 0, periX, periY);
  for (Line l1 : line) {
    l1.update();
  }
}

class Line {
  float x;
  float y;
  float speed;
  float a = random(periX);
  float b = random(periY);

  Line () {
    x = random(-400,400);
    y = random(100);
    speed = 1;
  }

  void update() {
    growth();
    grid();
  }
  
  void growth() {
    y += (0 - y) * frameCount*0.00005;
    if (y < 1) {
      y = random(-periX,periX);
      x = random(-y,y);
    }
    if (frameCount > 300) {
     frameCount = 0; 
    }
  }

  void grid() {
    fill(0);
    //translate (x, y);
    rect (x,y,3,y);
    rect (-y,-x,3,x);
    println(y, x, frameCount);
  }
}

