/**
    Total : 3 cv_mode
    
    Mode 1 : Face Tracking & MaskDetection.
    Mode 2 : Auto Mask Wearing Function.
    Mode 3 : Extra Video Filter Function.
    Mode 4 : Christmas easter egg. XD
*/

void cv_mode() {
  faces = opencv.detect();
  char input_key = key;

  switch(input_key) {
  // Mode 4 : Thug Life Glasses
  case '4':
    for (int i=0; i<faces.length; i++) {
      image(img_thug, faces[i].x, faces[i].y+0.35*faces[i].height,
        faces[i].width, faces[i].height*0.2);
    }
    break;
    
  // Mode 3 : Rudolph the Red-Nose
  case '3':
    for (int i=0; i<faces.length; i++) {
      image(img_nose, faces[i].x+0.1*faces[i].width+5, faces[i].y+0.5*faces[i].height-25,
        faces[i].width*0.8, faces[i].height*0.5);
    }
    break;
    
  // Mode 2 : Mask Video Filter
  case '2':
    for (int i=0; i<faces.length; i++) {
      image(img_mask, faces[i].x+0.1*faces[i].width, faces[i].y+0.5*faces[i].height,
        faces[i].width*0.8, faces[i].height*0.45);
    }
    break;
    
  // Mode 1 : Mask Detection(Default)
  case '1':  
  default : 
    noFill();
    strokeWeight(3);

    if (!isMaskDetection(faces)) {
      stroke(255, 0, 0); //Not Safety
    } else {
      stroke(0, 255, 0); //Safety
    }

    for (int i=0; i<faces.length; i++) {
      rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
      rect(faces[i].x+0.2*faces[i].width, faces[i].y+0.5*faces[i].height, 
        0.6*faces[i].width, 0.5*faces[i].height);
    }
    break;
  }
}
