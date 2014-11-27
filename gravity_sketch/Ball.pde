class Ball {
  
  PVector location, velocity; 
  int ballSize = 40; 
  float gravity = random(1); 
  float braking = 0.09;
  float R = random(255);
  float G = random(255);
  float B = random(255);
  
  
  Ball(float inX, float inY, float inVelX, float inVelY) {
    location = new PVector(inX, inY); 
    velocity = new PVector(inVelX, inVelY);
    

  }

  void update() {
    
    move(); 
    
    if (shouldBounceX()) {
      bounceX();
    }
    if (shouldBounceY()) {
      bounceY();
    }
    
    draw();
  }
  void move() {
    location.add(velocity); 
    velocity.y += gravity;
  }

  boolean shouldBounceX () { 
    return ((location.x > width) || (location.x < 0));
  } 

  boolean shouldBounceY() {
    return ((location.y > height) || (location. y < 0));
  }
  
  void bounceX() {
    
    velocity.x = velocity.x * -1;
    
   // if (location.x <0) {
   //   location.x = 0;
   //    }
       
  //  else if (location.x > width) { 
   //   location.x = width;
   // }
    
  }
  
  void bounceY() {
    
    velocity.y *= -(1 - braking); 
    
    //location.y = height - ballSize/2;
    
  }

  void draw() {
    fill(R, G, B);
    ellipse(location.x, location.y, ballSize, ballSize);
    
       
  }
}

