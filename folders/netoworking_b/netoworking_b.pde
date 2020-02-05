import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remote;

void setup () {
 osc = new OscP5 (this, 9001);
 remote = new NetAddress ("192.168.1.249", 9001);
}

void draw () {
  
}

void oscEvent (OscMessage m) {
 println(m.getAddress(), "mario", m.get(0)); 
}

void mousePressed() {
 osc.send(remote, "/live/play");
}

// user datagram protocol
