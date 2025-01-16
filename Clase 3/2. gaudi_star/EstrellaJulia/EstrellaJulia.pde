// Cuadrante 1
float x1;    // Coordenada inicial x
float y1;    // Coordenada inicial y
float x2;    // Coordenada final x
float y2;    // Coordenada final x
float step = 5;   // Incremento en cada paso

void setup() {
  size(1000, 1000); // Tamaño de la ventana
  borrar(); 
  iniciar(); 
}


void draw() {
// println("y1: "+y1);
  if (y1 < height/2) {

    stroke(0); // Color de la línea (negro)
    strokeWeight(2); // Grosor de las líneas

 
    // Dibuja la línea
    line(x1, y1, x2, y2);

    // Actualiza las coordenadas para la siguiente línea
    
    y1 = y1+step;
    x2= x2+step;

  } else {
    // println("final: "+y1);
    borrar();
    iniciar(); // Detiene la animación cuando se han dibujado todas las líneas
  }
}

// Definimos las coordenadas de inicio

void iniciar(){
  // Inicio (X1 es constante, Y1 va augmentando = para abajo)
  x1 = width/2; 
  y1 = 0;
  // Final (X2 va augmentando = para la derecha , Y2 es constante, Y2 es constante)
  x2 = width / 2;
  y2 = height / 2;
}

void borrar(){
  background(255, 165, 0); // Fondo naranja
}
