
Ball[] b = new Ball[50];

//Ball b;

void setup() {
  size(640, 480);
  //b = new Ball();

  for (int i = 0; i < b.length; i++) {

    b[i] = new Ball();
  }
}

void draw() {
  background(255);
  for (int i = 0; i< b.length; i++) {

    b[i].update();
    b[i].display();
  }
}
