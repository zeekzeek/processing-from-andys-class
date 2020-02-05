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
  osc = new OscP5 (this, 12001);
  remote = new NetAddress ("192.168.1.215", 12001);
  MidiMapper midi = new MidiMapper(this);
  midi.find("Korg");
  test = new Test();
  midi.connect("SLIDER/KNOB", midi.assign(41).to("play"));
}


void draw() {
}

//void stop(float theValue2) {
//println("stop", theValue2);
//if (theValue2 == 127) {
// background(0);
//  }
//}

void oscEvent (OscMessage m) {
  //println(m.getAddress(), "mario", m.get(0));
}

void play(float theValue) {
  if (theValue == 127) {
    osc.send(remote, "/change", theValue);
    println("play", theValue);
  }
}


class Test {
  float b;
}

