float dimension = 20;
float angle = 0 ;
float inc = PI/90;
void setup() {
  size(800, 800);
  noCursor();
  //cursor(CROSS);
  // frameRate(24);
  background(#8E3B46); //https://processing.org/reference/background_.html
}

void draw() {
  angle = angle + inc ;
  dimension = dimension + sin(angle)* 5;
  
  //println("mousePressed:"+mousePressed);
  //println("frameRate:"+frameCount+"- fc:"+frameRate);
  if (mousePressed) {
    fill(#8E3B46, 20);
    rect(0, 0, width, height);
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, dimension, dimension);
}
