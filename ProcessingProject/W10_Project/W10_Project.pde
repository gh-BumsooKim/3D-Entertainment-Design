import processing.video.*;
Movie myMovie;

int row=64;
int colum; 

void setup() {
  size(1280, 720, P3D);
  background(0);
  myMovie = new Movie(this, "Pexels_Tom-Fisk.mp4"); 
  myMovie.loop();
  noStroke();
  colum=row*height/width;
  noFill();
}

void draw() {
  //tint(255,20);
  //image(myMovie, 0, 0, width, height);
  
  //background(40);
  for (int x=0; x<width; x+=width/row) { 
    for (int y=0; y<height; y+=height/colum) {
      color c = myMovie.get(x, y);
      stroke(c, 150);
      line(x, y, random(-30, 30)+x, random(-30, 30)+y);
      if (random(1)<0.01)
        curve(random(width), random(height), 
          x, y, 
          random(-200, 200)+x, random(-200, 200)+y, 
          random(width), random(height));
    }
  }
}

void movieEvent(Movie m) {
  m.read();
}

void keyPressed() {
  myMovie.jump(random(myMovie.duration()));
  myMovie.play();   
}
