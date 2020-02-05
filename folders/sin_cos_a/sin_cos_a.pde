void setup() {
  size(500,500);
}

void draw() {
  background(0);
  println(frameCount , sin(frameCount)*100);
  translate(width/2, height/2);
  rect(sin(frameCount*0.1)*150, cos(frameCount*0.1)*150 , 20,20);
}
