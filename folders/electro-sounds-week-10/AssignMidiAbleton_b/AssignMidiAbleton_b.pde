import sojamo.midimapper.*;
import controlP5.*;

// assign midi, key in text input, then play here. 
// disable to assign new text input.
MidiMapper midi;
MidiOutMapper out;
ControlP5 cp5;
ArrayList commands;
ArrayList<Particle> particles;
boolean mute;


void setup() {
  
  size(400, 800);
  
  midi = new MidiMapper(this);
  out = new MidiOutMapper();
  cp5 = new ControlP5(this);
  
  commands = new ArrayList();
  commands.add("/1/fader 1 1");
  commands.add("/2/fader 2 1");
  commands.add("/3/fader 3 1");
  commands.add("/4/fader 4 1");
  
  controls();
  assign(commands);
  
  particles = new ArrayList();
  particles.add(new Floater("/1/fader"));
  particles.add(new Floater("/2/fader"));
  particles.add(new Floater("/3/fader"));
  particles.add(new Floater("/4/fader"));
  
}

void keyPressed() {
  // println(out.isAvailable());
  // send a midi control-change previously assigned to an index  
  out.send("/1/fader", frameCount%127);
}



void draw() {
  background(0);
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
    speed = random(0.001,0.1);
    index = theIndex;
  }
  
  void update() {
    float nx = sin(frameCount*speed)* 50; //changes the width
     pushMatrix();
     translate(x +nx,y);
     noStroke();
     fill(100);
     rect(0,0,4,50);
     send(index,int(map(nx,-100,100,0,127)));
     popMatrix(); 
  }
}


