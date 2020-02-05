void controls() {
  cp5 = new ControlP5(this);
  
  cp5.addScrollableList("selection")
     .setPosition(100, 100)
     .setSize(200, 100)
     .setBarHeight(20)
     .setItemHeight(20)
     .addItems(commands)
     .setType(ScrollableList.LIST);
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


void selection(int n) {
  println(n);
  String[] data = split(cp5.get(ScrollableList.class, "selection").getItem(n).get("text").toString()," ");
  String index = data[0];
  int channel = int(data[1]);
  int note = int(data[2]);
  println(index,channel,note);
  out.assign(index, channel, note);
  out.send(index,127);
}


