int x;
int y;

void setup()
{
  size(800, 800);
  x=10;
  y=10;
}

void draw()
{
  if (mousePressed==false)
  {
    x+=10;    
    if (x>100) x=10;
    
    float fillColorX = random(800); 
    float fillColorY = random(800); 
     
    fill(fillColorX/4, 255-fillColorY/4, 255);
    rect(fillColorX, fillColorY, x, y);
  }
}
