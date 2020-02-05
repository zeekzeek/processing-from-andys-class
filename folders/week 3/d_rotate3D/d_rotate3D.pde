void setup () {
 size (800, 600, P3D); 
 //P3D = Render in 3D
}

void draw ()  {
  background (0);
  float s1 = 200;
  
  //TRANSLATE TO CENTER
  translate (width/2, height/2);
  
  //ROTATE Y
  rotateY (frameCount * 0.1);
  float s = abs(sin(frameCount * 0.01));
  //SCALE to s
  scale (s,s);
  //TRANSLATE TO CENTER
  translate (-s1/2, -s1/2);
  
  //RECT STAYS INTACT
  rect (0, 0, s1, s1);
  
}
