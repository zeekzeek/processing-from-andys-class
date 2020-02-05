import sojamo.midimap.*;
import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remote;
MidiMapper midi;

float n;
Test test;
String device = "SLIDER/KNOB";

void setup() {
  osc = new OscP5 (this, 12000);
  remote = new NetAddress ("192.168.1.159", 12001);
  MidiMapper midi = new MidiMapper(this);
  midi.find("Korg");
  test = new Test();
  midi.connect("SLIDER/KNOB", midi.assign(41).to("play"));
}


void draw() {
}

void play(float theValue) {
  if (theValue == 127) {
    background(0);
  }
  if (theValue == 0){
  background(255);  
  }
  println("play", theValue);
}

void oscEvent (OscMessage m) {
  println(m.getAddress(), "mario", m.get(0));
}

void mousePressed() {
  osc.send(remote, "/change", 123);
}

void keyPressed () {
  if (keyCode >= 49 && keyCode <= 59) {
    osc.send(remote, "/change", keyCode-49);
  }
}

class Test {
  float b;
}

