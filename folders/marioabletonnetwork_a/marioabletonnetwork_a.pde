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
  osc = new OscP5 (this, 9000);
  remote = new NetAddress ("192.168.1.159", 12001);
  //192.168.1.215 mine
  //192.168.1.159 mario
  MidiMapper midi = new MidiMapper(this);
  midi.find("Korg");
  test = new Test();
  midi.connect("SLIDER/KNOB", midi.assign(41).to("play"), midi.assign(42).to("stop"));
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
  println(m.getAddress(), "mario");
}

void play(float theValue) {
  if (theValue == 127) {
    osc.send(remote, "play");
    println("play", theValue);
  }
}

void stop(float stopValue) {
  if (stopValue == 127) {
    osc.send(remote, "stop");
    println("stop", stopValue);
  }
}

class Test {
  float b;
}

