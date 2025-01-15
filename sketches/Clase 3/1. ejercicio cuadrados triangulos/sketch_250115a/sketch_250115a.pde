boolean drawRectangles = true; // Variable para alternar entre rectángulos y triángulos

// INICIO
void setup() {
  size(600, 600); // Se abre una ventana de 600x600 píxeles
  frameRate(5); // se dibujan figuras a 5 frames per second
}


// EJECUCIÓN
void draw() { 
  // Limpia el lienzo para borrar las figuras anteriores
  background(255);
  for (int i = 0; i < 50; i++) {  // 50 rectangulos por frame
    if (mousePressed) {
      drawRectangle(random(width), random(height), random(30), random(30));
      fill(#FF00FF);
      println("rectangulos");
    } else {
      drawTriangle(random(width), random(height), random(40), random(20));
      fill(#4CDEEA);
      println("drawTriangle");
    }
  }
}

void drawRectangle(float x, float y, float w, float h) {
  rect(x, y, w, h);
}

void drawTriangle(float x, float y, float w, float h) {
  pushMatrix(); // Guarda la configuración actual del sistema de coordenadas
  translate(x, y); // Traslada el sistema de coordenadas al punto (x, y)
  triangle(0, 0, w, 0, w / 2, -h); // Dibuja el triángulo con coordenadas relativas
  popMatrix(); // Restaura la configuración previa del sistema de coordenadas
}

// Propuesta profe
// void drawtriangle(float x, float y, float size) {
  fill(random(255),0,0);
  triangle(x,y,x+size,y-size,x

void mousePressed() {
  drawRectangles = !drawRectangles; // Cambia entre rectángulos y triángulos
  println("drawRectangles "+drawRectangles);
}
