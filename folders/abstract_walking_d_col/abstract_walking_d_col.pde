ArrayList <Line> line;
float periX;
float periY;
float speed = 1;
float col = random(255);
float dist = random(-100, 100);
int counter = 0;

void setup() {
  background(0,190,210);
  size (500, 500); 
  line = new ArrayList();
  for (int i=0; i<10; i++) {
    line.add(new Line());
  }
noStroke();
}

void draw() {
  counter++;
  fill(255);
  translate (width/2, height/2);
  periX = (cos(counter*0.002)*400);
  periY = (cos(counter*0.002)*200);
  // ellipse(0, 0, periX, periY);
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
    x = random(-400, 400);
    y = random(100);
    speed = 1;
  }

  void update() {
    growth();
    grid();
  }

  void growth() {
    y += (0 - y) * counter*0.00005;
    if (y < 1) {
      y = random(-periX, periX);
      x = random(-100, 100);
    }
    if (counter > 220) {
      counter = 200;
      background(0, 190, counter);
      // now send a sound event to sc or ableton
    }
  }

  void grid() {
    fill(255);
    //translate (x, y);
    fill(255);
    ellipse (x, b, random(-100, 100), random(-y, y));
     println(y, x, counter);
  }
}

