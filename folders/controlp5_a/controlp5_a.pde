import controlP5.*;

ControlP5 cp5;
float cr;
float cg;
float cb;

void setup() {
  size (800,600);
  cp5 = new ControlP5(this);
  cp5.addSlider("cr").setRange(0,255).setPosition(10,10).setSize(200,20);
    cp5.addSlider("cg").setRange(0,255).setPosition(10,110).setSize(200,20);
      cp5.addSlider("cb").setRange(0,255).setPosition(10,210).setSize(200,20);
}

void draw() {
  background (cr, cg, cb);
}
