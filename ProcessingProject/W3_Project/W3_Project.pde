void setup() {
  size(800, 800);
  background(0);
  noCursor();

  len_x = 10;
}

int len_x;

void draw() {
  background(0, 30);

  if (mousePressed == true)
  {
    len_x+=3;
  } else len_x-=6;

  if (len_x <= 10) len_x = 10;

  fill(255);
  rect(mouseX-len_x/2, mouseY-len_x/2, len_x, len_x);

  println(mouseX + " " + mouseY);
}
