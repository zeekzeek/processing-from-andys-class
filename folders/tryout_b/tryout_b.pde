objects obj;

void setup () {
  size (600, 600, P3D);
  smooth ();
  
  obj = new objects (200, 200);
}

void draw () {
  background (0);
  obj.run();
}


