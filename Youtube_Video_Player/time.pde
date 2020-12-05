class Time{
  public float millis;
  public int rate;
  
  Time(float m, float r) {
    millis = m;
    rate = int(r);
  }
  
  void update() {
    millis += 1;    
  }  
  
  void set(float c) {
    millis = c;
  }
  
  float get() {
    return millis;    
  }
}
