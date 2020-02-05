import oscP5.*;
import netP5.*;

OscP5 osc;
NetAddress remote;

void setup () {
 osc = new OscP5 (this, 12000);
 remote = new NetAddress ("192.168.1.159", 12001);
}

void draw () {
  
}

void oscEvent (OscMessage m) {
 println(m.getAddress(), "mario", m.get(0)); 
}

void mousePressed() {
 osc.send(remote,"/change",123); 
}

void keyPressed () {
  if (keyCode >= 49 && keyCode <= 59) {
    osc.send(remote,"/change",keyCode-49);
  }
}
