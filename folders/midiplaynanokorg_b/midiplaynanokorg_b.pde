import sojamo.midimap.*;

MidiMapper midi;

float n;
Test test;
String device = "SLIDER/KNOB";

void setup() {
  MidiMapper midi = new MidiMapper(this);
  midi.find("Korg");
  test = new Test();
  midi.connect("SLIDER/KNOB", midi.assign(41).to("play"));
}


void draw() {
  
}

void play(float theValue) {
  println("play", theValue);
}


class Test {
  float b;
}
