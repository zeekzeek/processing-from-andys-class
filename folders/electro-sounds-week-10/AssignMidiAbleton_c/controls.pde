void controls() {
  cp5.addToggle("mute")
     .setSize(40,40)
     .setPosition(width-60,height-60)
     .getCaptionLabel().align(CENTER,CENTER)
     ;
}


void assign(ArrayList l) {
  for(Object o:l) {
    String[] data = split(o.toString()," ");
    String index = data[0];
    int channel = int(data[1]);
    int note = int(data[2]);
    println(index,channel,note);
    out.assign(index, channel, note);
  }
}


void send(String theIndex, int theValue) {
  if(!mute) {
    out.send(theIndex, theValue);
  }
}

