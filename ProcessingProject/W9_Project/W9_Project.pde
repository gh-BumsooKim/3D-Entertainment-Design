PImage img;

void setup()
{
  colorMode(RGB);
  size(600, 600);
  img = loadImage("1.jpg");
  image(img, 0, 0, width, height);
  img = get(0,0,width,height);
  frameRate(5);
}

int num=0;

void draw()
{
  if (!keyPressed) randomDraw();
}

void keyPressed()
{
  if (key == '1') filter(THRESHOLD);
  if (key == '2') filter(GRAY);
  if (key == '3') filter(INVERT);
  if (key == '4') filter(POSTERIZE, 4);
  if (key == '5') filter(BLUR, 6);
  if (key == '6') filter(ERODE);
  if (key == '7') filter(DILATE);
}

void randomDraw()
{
  PImage cutImg;
  for (int i=0; i<10; i++)
  {
    int x = int(random(width));
    int y = int(random(height));
    cutImg = img.get(x, y, int(random(30, 200)), int(random(30, 200)));
    image(cutImg, 
      x+int(random(-30, 30)), 
      y+int(random(-30, 30)), 
      cutImg.width*random(0.8, 1.2), 
      cutImg.height*random(0.8, 1.2));
  }
}
