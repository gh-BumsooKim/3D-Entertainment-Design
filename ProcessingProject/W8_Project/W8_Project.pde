PImage img;

void setup()
{
  size(600, 600);
  img = loadImage("1.jpg");
}

int t=10;

void draw()
{
  image(img, 0, 0, width, height);
  
  if(mousePressed)
  {
    t+=1;
  }
  else
    t=10;
  
  for (int i=1; i<600; i+=t)
  {
    for (int j=1; j<600; j+=t)
    {
      color c = get(i, j);
      fill(c);
      println(c);
      rect(i, j, t-1, t-1);
    }
  }
}
