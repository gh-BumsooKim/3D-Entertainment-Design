//import processing.pdf.*;

void setup()
{
  size(800, 800);
  background(255);
}

int r=0;
int t=0;

void draw()
{
  fill(255);
  rect(0, 0, width, height);

  r=0;

  if (mousePressed)
    t+=5;
  else
    t=0;    

  while (r < 360*4 + 5) {
    pushMatrix();
    
    translate(width/2, height/2);
    rotate(radians(r));
    fill(r/5, 150 + r/12, 255-r/5);
    stroke(255); 
    ellipse(-5, -20-r/3, 5 + r/30 + t, 5 + r/30 + t);
    r+=5;
    
    popMatrix();
  }
}
