void setup() {
  size(600, 600);
  
  
}
void draw(){ // void: la funcion no devuelve nada. 
  background(255);
 for (int i=0; i<100; i++) // bucle: estructura de repetición. El 100 es el numero de veces que se repite
  {
    drawRectangle(random(width), random(height), random(10), random(10)); 
  } 
}
void drawRectangle(float x, float y, float w, float h) {
  rect(x, y, w, h);
}
