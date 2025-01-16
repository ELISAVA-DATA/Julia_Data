/*
Alba G Corral
 Fecha 6 nov
 Description:+alkjlkajsdkljadk
 */

float posx= 0; //horizontal position
float posy;
float speed = 5;
int direction=1;
float dimension = 100;

//setup config, only onces
void setup() {
  size(800, 800);

  posx = 0;
  posy = height/2; //posy = 400
  background(0);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  render();
  display();
}

void display() {
  fill(255);
  ellipse(posx, posy, dimension, dimension);
}
void render() {
  // dimension = mouseX;
  dimension = map(mouseX, 0, width, 0, 200);


  if (posx > width || posx < 0) { //OR //and &&
    println("collide with the borders");
    direction *=-1; //direction = direction * (-1);
    posy = random(height);
  }
  posx = posx +(speed*direction);
}
