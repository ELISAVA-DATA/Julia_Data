void mousePressed() {

  noLoop();
}

void mouseReleased() {
  // background(0,0,0);//variaciion
  loop();
}
void keyPressed() {
  if (key == 'b' || key == 'B') {
    iniciar();
  }
  if (key == 's' || key == 'S') {
    saveFrame("estrella-####.png");
  }
}
