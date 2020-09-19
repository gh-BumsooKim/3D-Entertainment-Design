void setup() {
  size(800, 600);
  background(0);
}

void draw() {
  noStroke();
  
  if (mousePressed == true)
  {
    
    fill(random(255),random(255),random(255),20);
    rect(mouseX, mouseY, random(width/2), random(height/2));
  }
  
  if (keyPressed && key == 'A')
  {
    fill(random(255));
    rect(0, 0, width, height);
  }  
}
