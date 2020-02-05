class Ball{
  // GLOBAL VARIABLES
  float x=0;
  float y=0;
 
  
  // CONSTRUCTOR *
   Ball(float _x, float _y){ //_x and _y linked to initialise stage
     x = _x;
     y = _y;
   }
  
  // FUNCTIONS
  void run() {
  display(); 
  //move
  //bounce
  //gravity
  }
  void display(){
 ellipse(x,y,20,20); 
  }
  
}

//when opening curly brackets, close them immediately
