void setup() {
  size(600, 600);
  
  
}
void draw(){
  background(255);
 for (int i=0; i<100; i++)
  {
    drawRectangle(random(width), random(height), random(10), random(10));
  } 
}
void drawRectangle(float x, float y, float w, float h) {
  rect(x, y, w, h);
}
