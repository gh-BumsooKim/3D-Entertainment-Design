void setup() { 
  size(500, 500); 
  noStroke();
  noCursor();
}
void draw () {
  background(255);
  for (int x = 0; x < width; x+=(width/20)) {
    for (int y =0; y < height; y+=(height/20)) {
      fill((x/2), (y/2), (mouseX+mouseY)/4, 50);
      ellipse(x, y, dist(x, y, mouseX, mouseY)/5, dist(x, y, mouseX, mouseY)/5);
    }
  }
}
