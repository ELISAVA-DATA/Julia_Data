/*  Alba G. Corral  */
int posx, posy;
int distancia; //distancia entre cada linea
int conty1, contx1, contx2, conty2;
color c = color(#999999);
void setup()
{
  size(1920, 1080);//ponemos el posx y el posy de la ventana
  frameRate(5);
  noStroke();//deshabilita la posibilidad de poner borde
  smooth();
  iniciar();
}

void draw()
{
  dibujar();
  renderizar() ;
  if (conty1 >= posy) {
    iniciar();
  }
}
void dibujar() {
  line(contx1, posy, posx, conty1);
  println("conty1:"+conty1);
  line(posx, conty1, contx2, posy);
  line(posx, conty2, contx1, posy);
  line(posx, conty2, contx2, posy);
}
void renderizar() {
  contx1 = contx1 - distancia;
  conty1 = conty1 + distancia;
  conty2 = conty2 - distancia;
  contx2 = contx2 + distancia;
}
void iniciar() {
  //saveFrame("estrella-####.png");
  // delay(2000);
  background(color(214, 148, 50));

  stroke(c, 100);
  distancia=10;
  posy = height/2;
  posx = width/2;
  contx1 = posx;
  conty1 = 0;
  contx2 = posx;
  conty2 = posy*2;
}
