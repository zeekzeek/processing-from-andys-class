import org.puredata.processing.Puredata;

PureData pd;

void setup() {
  size (350, 350);
  //init pd audio rate 44100, no inputs, two outputs, load sine.pd
  pd = new PureData(his, 44100,0,2);
  pd.openPatch("sine.pd")
  pd.start();
}

pd.sendFloat("pitch", (float)id);
