import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remote;

void setup() {
  size(400,400);
  osc = new OscP5(this,11000);
  remote = new NetAddress("127.0.0.1", 12000);
}


void draw() {
  background(240);
  translate(width/2, height/2);
  float scl = abs(sin(frameCount*0.01)*100);
  fill(0,255,200);
  noStroke();
  ellipse(0,0,scl,scl);
  osc.send(remote, "/5/fader", int(scl));
}

void mousePressed() {
  osc.send(remote, "/5/fader", int(random(0,127)));
}
