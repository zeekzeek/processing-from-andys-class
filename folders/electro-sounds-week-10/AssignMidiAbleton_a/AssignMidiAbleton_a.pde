import sojamo.midimapper.*;
import controlP5.*;

MidiMapper midi;
MidiOutMapper out;
ControlP5 cp5;
ArrayList commands;

void setup() {
  
  size(400, 800);
  
  midi = new MidiMapper(this);
  out = new MidiOutMapper();
  
  
  commands = new ArrayList();
  commands.add("/1/fader 1 1");
  commands.add("/2/fader 2 1");
  commands.add("/3/fader 3 1");
  commands.add("/4/fader 4 1");
  
  controls();
  assign(commands);
  
}

void keyPressed() {
  // println(out.isAvailable());
  // send a midi control-change previously assigned to an index  
  out.send("/1/fader", frameCount%127);
}



void draw() {
  background(240);
}

