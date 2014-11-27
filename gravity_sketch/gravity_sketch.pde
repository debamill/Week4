Ball bouncy; 

int numBalls = 10;
Ball[] ballArray; 


void setup() { 
  size(640, 240); 
  
  ballArray = new Ball[numBalls];
 
  for (int i = 0; i < 10; i++) {

    ballArray[i] = new Ball(random(width), random(height), random(2.5), random(8));
  }

  // Ball bouncy = new Ball(width/2, 70, 4, 5);
  //ballArray = new Ball[1];

  //Ball second = new Ball(width/2, 60, 2.5, 5);
  //ballArray = new Ball[2];

  //ballArray[0] = bouncy;
  //ballArray[1] = second;
}

void draw() {
  background(#92CFED); 

  for (int i = 0; i < ballArray.length; i++) {
    Ball localBall = ballArray[i];
    localBall.update();
  }
}

