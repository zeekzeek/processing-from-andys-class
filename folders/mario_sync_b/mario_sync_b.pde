import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remote;

void setup () {
 osc = new OscP5 (this, 12000);
 remote = new NetAddress ("10.10.239.192", 12000);
}

void draw () {
  
}

void oscEvent (OscMessage m) {
 println(m.getAddress(), "mario", m.get(0)); 
}

void mousePressed() {
 osc.send(remote,"/change"); 
}
