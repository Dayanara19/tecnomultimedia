// Barahona Dayanara
// tp0 comisión 1

PImage paisaje;// montaña nevada.png
size(800, 400);
paisaje = loadImage("montaña nevada.png");

//paisaje.resize(400,400);

background(12, 136, 201); //color del cielo
image(paisaje, 0, 0, 400, 400);


stroke(255); //nubes
ellipse(690, 70, 55, 45);
ellipse(725, 65, 59, 65);
ellipse(755, 70, 55, 45);

ellipse(440, 155, 55, 45);
ellipse(470, 145, 60, 70);
ellipse(500, 155, 55, 45);


noStroke();
fill(98, 71, 50);// color montaña
triangle(800, 300, 600, 58, 420, 320);// montaña

fill(93, 54, 4);
triangle(400, 390, 755, 300, 469, 209); //montañita
rect(400, 209, 70, 200);

fill(255); // nieve
triangle(638, 100, 602, 55, 570, 100);
triangle(638, 100, 602, 130, 570, 100);
triangle(600, 105, 537, 150, 570, 100);
triangle(600, 100, 677, 150, 638, 100);

fill(104, 188, 85); //color pasto
rect(400, 255, 800, 200);

fill(70, 45, 12); //color del suelo
rect(400, 350, 400, 800);
