int x, y; 
int ballSize = 40; 
int xSpeed = 5, ySpeed = 5; 
boolean movingUp = false, movingLeft = false; 

void setup() {
  size(100, 200);
}

void draw() {
  background(#92CFED);
  fill(216, 7, 21); 
  ellipse(x, y, ballSize, ballSize); 

  if (y + ballSize/2 >height) {
    ySpeed = ySpeed * -1;
    y = height - ballSize/2;
  } else if (y - ballSize/2 <= 0) {
    ySpeed = ySpeed * -1;
  }

  if (x + ballSize/2 >=width) {
    movingLeft = true;
  } else if (x - ballSize/2 <= 0) {
    movingLeft = false;
  }

  y = y + ySpeed;

  if (movingLeft) {
    x = x - xSpeed;
  } else {
    x = x + xSpeed;
  }
}

