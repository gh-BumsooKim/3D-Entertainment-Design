import processing.video.*; 
Movie myMovie;

int time_goes_by = 0;

void setup() { 
  size(1200, 360, P3D);
  myMovie = new Movie(this, "Pexels_Tom-Fisk.mp4"); 
  myMovie.loop();
  frameRate(10);
} 

void draw() { 
  if (time_goes_by>width) {
    save("timecompress.tif"); 
    myMovie.stop();
    noLoop(); // program stop
  } else {
    image(myMovie.get(width/2, 0, 1, height), time_goes_by, 0, 1, height);
    time_goes_by++;
  }
}

void movieEvent(Movie m) {
  m.read();
}
