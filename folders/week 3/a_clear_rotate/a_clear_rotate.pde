
void setup () {
 size (800, 600, P3D); 
}

void draw ()  {
  background (0);
  float s1 = 200;
  
  translate (width/2, height/2);
  rotateY (frameCount * 0.1);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
}
