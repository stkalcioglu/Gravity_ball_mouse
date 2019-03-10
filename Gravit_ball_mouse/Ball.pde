class Ball {
  PVector location;
  PVector velocity;
  PVector acceleration;



  Ball() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }

  void update() {
    PVector mouse = new PVector (mouseX, mouseY);
    mouse.sub(location);
    mouse.setMag(1);
    acceleration = mouse;

    velocity.add(acceleration);
    location.add(velocity);
    velocity.limit(10);
  }

  void display() {
    fill(0, 255, 0);
    ellipse(location.x,location.y,20,20);
  }
}
