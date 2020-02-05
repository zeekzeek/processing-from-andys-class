int[] fibs;
final int FIBLIMIT = 47; // 93;
int nextFib = 1;
long etime;
long ftime = 1000;

int nextFib(){
  if(nextFib >= FIBLIMIT)
    nextFib = 1;
  return fibs[nextFib++];
}

void makeFibs(){
  fibs = new int[FIBLIMIT];
  fibs[1] = fibs[2] = 1;
  for(int i = 3; i < FIBLIMIT; i++){
    fibs[i] = fibs[i-1] + fibs[i-2];
   }
  nextFib = 1;
}

void setup(){
  makeFibs();
  etime = millis();

}

void draw(){
  if(millis() - etime > ftime){
    println(""+nextFib());
    etime = millis();
  }
}
