void timebar(Time t) {
  int bar_h = 10;
  int bar_y = height - 150;

  //bar
  noStroke();
  fill(120, 90);
  rect(0, bar_y, width, bar_h);

  //time bar
  fill(255, 0, 0, 160);
  if (bar_y < mouseY && mouseY < bar_y + bar_h)
  {    
    fill(255, 0, 0);
  }  
  float t_map = map(t.get(), 0, myMovie.duration()*frameRate, 0, width);
  rect(0, bar_y, t_map, bar_h);

  //time bar_Mouse up
  if (bar_y < mouseY && mouseY < bar_y + bar_h)
  {
    fill(255);
    circle(mouseX, bar_y + bar_h/2, 20);

    if (mousePressed)
    {
      float jump_pos =  map(mouseX, 0, width, 0, myMovie.duration()*frameRate);
      myMovie.jump(jump_pos/frameRate);
      myMovie.play();

      t.set(jump_pos);
    }
  }
}
