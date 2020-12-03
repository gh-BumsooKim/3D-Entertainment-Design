/**
    Mode 1 : Mask Detection(Default)
    This function return Boolean Vaule if you wear a mask based on Color
*/

Boolean isMaskDetection(Rectangle[] r) {
  Boolean is = false;
  int threshold = 195;
  int num, ans;
  color c;
  
  for (int i=0; i<r.length; i++) {
    ans=0; num=0;
    for (int x=0; x<r[i].width*0.6; x++) {
      for (int y=0; y<r[i].height*0.5; y++) {
        c = cam.get(int(r[i].x+r[i].width*0.2+x), int(r[i].y+r[i].height*0.5+y));
        ans += red(c) + green(c) + blue(c);
        num+=3;
      }
    }
    is = (ans/num > threshold) ? true : false;
  }
  return (is==true) ? true : false;
}
