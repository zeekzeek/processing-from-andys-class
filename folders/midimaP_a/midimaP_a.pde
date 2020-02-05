import sojamo.midimap.*;

MidiMapper midi;

float n;
Test test;
String device = "SLIDER/KNOB";

void setup() {
  MidiMapper midi = new MidiMapper(this);
  midi.find("Korg");
  test = new Test();
  midi.connect("SLIDER/KNOB", midi.assign(23).to("n"),midi.assign(24).to(test,"b"), midi.assign(25).to("c"));
  midi.test(device);
}


void draw() {
println(n, test.b);
}

void c(float theValue) {
  println("c",theValue);
}


class Test {
  float b;
}
