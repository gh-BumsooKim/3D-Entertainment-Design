void Star(float a1, float a2, float b1, float b2, float c1, float c2, float d1, float d2,float e1, float e2){
  line(a1, a2, b1, b2);
  line(b1, b2, c1, c2);
  line(c1, c2, d1, d2);
  line(d1, d2, e1, e2);
  line(e1, e2 ,a1 ,a2);
}  

void setup(){
  background(0);
  size(800,600);
  //frameRate(4);
}

void draw(){
  filter(BLUR,3);
  
  noStroke();
  fill(0,40);
  rect(0,0,width,height);
  
  strokeWeight(5);
  stroke(255);
  Star(random(0,width),random(0,height),random(0,width),random(0,height),random(0,width),random(0,height),random(0,width),random(0,height),random(0,width),random(0,height));
}
