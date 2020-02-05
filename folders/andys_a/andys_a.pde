ArrayList <Rectangle> rectangles;

void setup () {
  size (800, 600, P3D);
  rectangles = new ArrayList();
  for (int i=0; i < 10; i++) {
    rectangles.add (new Rectangle());
  }
  noStroke();
}

void draw () {
  background(0);
  for (Rectangle r : rectangles) {
    r.update();
    r.draw();
  }
}

class Rectangle {
  float rx, ry, x, y, s;
  float nx, ny, ns, nrx, nry;
  
  Rectangle() {
    x = width/2;
    y = height/2;
    nx = random(width);
    ny = random(height);
    ns = random(20, 50);
    nrx = random(-PI, PI)+10;
    s = 100;
  }
  
  void update () {
    s=interpolate(s, ns, 0.01);
    x = interpolate(x, nx, 0.01);
    y=interpolate(y,ny,0.01);
    rx=interpolate(rx,nrx,0.01);
    ry += 0.01;
  }
  
  float interpolate (float v0, float v1, float speed) {
    return v0 + (v1 - v0)*speed;
  }
  
  void draw () {
    fill(255);
    pushMatrix();
    translate (x,y);
    rotateX (rx);
    rotateY (ry);
    translate (-s/2, -s/2);
    rect (0,0,s,s);
    popMatrix();
    
  }
}

