import controlP5.*;
import sojamo.midimapper.*;

ControlP5 cp5;
MidiOutMapper out;

void setup() {
  size(600,160);
  out = new MidiOutMapper();
  cp5 = new ControlP5(this);
  cp5.setFont(createFont("Helvetica",32));
  cp5.addTextfield("input")
     .setSize(560,40)
     .setPosition(20,50)
     .getCaptionLabel().setVisible(false)
     ;
}


void draw() {
  background(0);
}

void input(String theInput) {
  String[] data = split(theInput," ");
  if(data.length==3) {
    String index = data[0];
    int channel = int(data[1]);
    int note = int(data[2]);
    println(index,channel,note);
    out.assign(index, channel, note);
    out.send(index,127);
  }
}


