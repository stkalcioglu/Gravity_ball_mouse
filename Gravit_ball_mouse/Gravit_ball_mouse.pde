import processing.video.*;
import gab.opencv.*;
import java.awt.Rectangle;
OpenCV opencv;
Capture cam;
Rectangle[] faces;


Ball[] b = new Ball[50];


//HADIIIIIII
//OF SLALAAAAKKKK


//Ball b;

void setup() {
  size(640, 480);
  //b = new Ball();
  
  
   cam = new Capture(this, width, height);
  cam.start();
  opencv = new OpenCV(this, cam.width, cam.height); 
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); 
  
  

  for (int i = 0; i < b.length; i++) {

    b[i] = new Ball();
  }
}


void captureEvent(Capture cam) { // New images from camera
  cam.read();
}



void draw() {
  background(255);
  for (int i = 0; i< b.length; i++) {

    b[i].update();
    b[i].display();
  }
}
