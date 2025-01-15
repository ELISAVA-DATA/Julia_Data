// 09/01/2025
// Julia 
// Mi primer hola mundo 
/*
comentario de bloque
*/
size(700,450);  // tamaño de la hoja (ancho, alto) en pixeles
int diametro=200;
int ojos = 10;
pushMatrix();
translate(width/2,height/2); // traslada el centro de coordenadas a donde le digas
background(255,0,0);
fill(255,255,0);
strokeWeight(4);
ellipse(0,0,diametro,diametro);
ellipse(-40,-20,ojos,ojos);
ellipse(40,-20,ojos,ojos);
popMatrix();
noFill();
rectMode(CENTER);

//square(width/2,height/2,225);
//println("ancho:"+width);
//fill(255,255,255);
//circle(320,200,50);
//circle(380,200,50);
//fill(0,0,0);
//circle(370,205,20);
