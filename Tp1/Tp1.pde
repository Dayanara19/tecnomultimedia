// Dayanara Barahona
// tp1, Comisión 1
PImage imagenuno, imagendos, imagentres;
int segundos;
int posX, posY, posX1;
int botonX=420;
int botonY=410;
int botonAncho=140;
int botonAlto=50;
PFont t;
void setup() {
  size(640, 480);
  segundos=3;

  t = loadFont("letrabonis.vlw");
  textFont(t, 35);
  textAlign(CENTER);
  posX =480 ;
  posY = 480;
  posX1 = 480;
  imagenuno = loadImage("galapagos1.jpg");
  image(imagenuno, 0, 0, 320, 480);

  imagendos = loadImage("galapagos2.jpg");
  image(imagendos, 0, 0, 320, 480);

  imagentres = loadImage("galapagos3.jpg");
  image(imagentres, 0, 0, 320, 480);
}

void draw() {
  background(255);
  if (segundos>26) {
    segundos=26;
  }
  if (frameCount%60==0) {
    segundos++;
  }
  //ESTADO1
  if (segundos<=10) {
    image(imagenuno, 0, 0, 320, 480);
    fill(0);
    textSize(35);
    text("GALÁPAGOS", width/2, 20, 320, 400);
    textSize(30);
    text("Las islas Galápagos son un archipiélago volcánico del océano Pacífico, es conocido como uno de los destinos más famosos del mundo para la observación de fauna. ", width/2, posX, 320, 480);
    if (posX>width/6) {
      posX --;
    }
  }
  //ESTADO2
  else if (segundos<=20) {
    image(imagendos, 0, 0, 320, 480);
    text("Es una provincia de Ecuador y se encuentra a unos 1,000 km desde sus costas. Su terreno aislado alberga una diversidad de especies animales y vegetales, muchas de ellas exclusivas. ", width/2, posY, 320, 480);
    if (posY>width/6) {
      posY --;
    }
    //ESTADO3
  } else if (segundos<=30) {
    fill(0);
    image(imagentres, 0, 0, 320, 480);
    textSize(30);
    text("Es conocida por sus numerosas especies endémicas y por los estudios de Charles Darwin que le llevaron a establecer su teoría de la evolución por la selección natural.", width/2, posX1, 320, 480);
    if (posX1>width/6) {
      posX1 --;
    } else {
      fill(0);
      rect(botonX, botonY, botonAncho, botonAlto);
      textSize(20);
      fill(255);
      text("REINICIAR", botonX + botonAncho/2, botonY + botonAlto/2);
    }
  }
}


void mousePressed() {
  if (segundos==3) {
  }

  if (segundos>=0 && segundos <=27  && mouseX >= botonX && mouseX <= botonX + botonAncho && mouseY >= botonY && mouseY <= botonY + botonAlto) {
    segundos=0;
    posX =480 ;
    posY = 480;
    posX1 = 480;
  }
}
