/**
    This Project is Youtube Video Player Platform Processing
    Youtube Player's Preveiw, CC, Skip, Share, etc.
*/
import processing.video.*;  //Movie controller Module
import ddf.minim.*;         //Audio controller Module

Movie myMovie;
Minim minim;
Time time;
boolean isPlaying = false;

void setup() {
  size(1920, 1080);
  frameRate(24);
  
  myMovie = new Movie(this, "lifeofvids_LEEROY.mp4");
  time = new Time(0,frameRate);
}

void draw() {
  if(isPlaying)
  {
    myMovie.play();
    image(myMovie, 0, 0);
    
    time.update();  
    println(time.get());
    timebar(time);
  }
}

void movieEvent(Movie m) {
  m.read();
}

void mousePressed() {
  isPlaying = true;
}

void mouseReleased() {
}
