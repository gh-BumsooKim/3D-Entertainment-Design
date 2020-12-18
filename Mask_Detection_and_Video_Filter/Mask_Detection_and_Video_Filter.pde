import processing.video.*;
import gab.opencv.*;
import java.awt.*;

String isMask_text = "Mask Detection";
PImage img_mask;
PImage img_nose;
PImage img_thug;
PFont font;
Capture cam;
OpenCV opencv;
Rectangle[] faces;

void setup() {
  size(640, 480);
  frameRate(30);

  //font = createFont("");
  //textFont(font);
  img_mask = loadImage("custom-mask2.png");
  img_nose = loadImage("custom-nose.png");
  img_thug = loadImage("thuglife_glasses.png");
  cam = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);

  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  cam.start();
}

void draw() {
  opencv.loadImage(cam);
  image(cam, 0, 0);

  cv_mode();
}

void captureEvent(Capture c) {
  c.read();
}

void keyPressed() {
  // Mode 1 : FrontFace Tracking(Default)
  if (key=='1' || key=='2' || key=='3' || key=='4') opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
  // Mode 2 : Eye Tracking
  if (key=='5') opencv.loadCascade(OpenCV.CASCADE_EYE);
  // Mode 3 : Nose Tracking
  if (key=='6') opencv.loadCascade(OpenCV.CASCADE_NOSE);
}
