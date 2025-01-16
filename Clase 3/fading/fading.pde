void setup() {
  size(600, 600);
  
  background(255);
}
void draw(){
  fading();
 for (int i=0; i<100; i++)
  {
    drawRectangle(random(width), random(height), random(10), random(10));
  } 
}
void fading(){
  fill(255,25); //coloreamos con una opacidad, a mas baja mas fading.
  rect(0,0,width,height); //dibujamos un rectangulo en la pantalla con esa opacidad

}
void drawRectangle(float x, float y, float w, float h) {
  rect(x, y, w, h);
}
