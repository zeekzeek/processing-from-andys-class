import sojamo.midimapper.*;
import controlP5.*;
import oscP5.*;

MidiMapper midi;
MidiOutMapper out;
ControlP5 cp5;
OscP5 osc;

ArrayList commands;
ArrayList<Particle> particles;
boolean mute;


void setup() {
  
  size(400, 800);
  
  midi = new MidiMapper(this);
  out = new MidiOutMapper();
  cp5 = new ControlP5(this);
  osc = new OscP5(this,12000);
  
  commands = new ArrayList();
  commands.add("/1/fader 1 1");
  commands.add("/2/fader 2 1");
  commands.add("/3/fader 3 1");
  commands.add("/4/fader 4 1");
  commands.add("/5/fader 3 2");
  
  controls();
  
  assign(commands);
  
  particles = new ArrayList();
  particles.add(new Floater("/1/fader"));
  particles.add(new Floater("/2/fader"));
  
}


void oscEvent(OscMessage m){
  String address = m.getAddress();
  int value = m.get(0).intValue();
  println("osc receive: ",address,value);
  send(address,value);
}


void draw() {
  background(240);
  for(Particle particle:particles) {
    particle.update();
  }
}


interface Particle {
  
  public void update();
  
}


class Floater implements Particle {
  float x,y; 
  float speed;
  String index;
  Floater(String theIndex) {
    x = width/2;
    y = height/2 + random(-200,200);
    speed = random(0.001,0.01);
    index = theIndex;
  }
  
  void update() {
    float nx = sin(frameCount*speed)* 100;
     pushMatrix();
     translate(x +nx,y);
     noStroke();
     fill(100);
     rect(0,0,1,50);
     send(index,int(map(nx,-100,100,0,127)));
     popMatrix(); 
  }
}


