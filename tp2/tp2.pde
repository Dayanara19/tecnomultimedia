// Barahona Dayanara - legajo:10497/0
//comision 1
// https://youtu.be/l6xG_EFoi1M

PImage ilusion;

void setup() {
  size(800, 400);
  ilusion= loadImage ("ilusion.png");
}
String estado="inicio";

void draw() {
  background(255);
  image (ilusion, 20, 20, 350, 341);
efecto(400);
}
void cuadrado(int x, int y){
  int lad=180;
 for(int i=0; i<4; i++){
     if(i%2==0){
      fill(0);
      if(estado=="estado2")
       fill(0,random(255), 100);
     }else{
        fill(255);
     }  
    rect(x+i*20, y+i*20, lad, lad);
   
    lad = lad - 40;
 }  
 
} 


 void efecto(int r){
   
   for(int i=0; i<2; i++){
     cuadrado(r+20+i*160,20);
     cuadrado(r+20+i*160,180); 
   } 
     cuadrado(r+100,100);
     fill(0);
     if(estado=="estado2")
     fill(0,random(255),100);
     rect(r+180,180,22,22); 
 }
 

void keyPressed(){
 if(key == 'a')
  estado="estado2";
  if(key == 'r')
   estado="inicio";
}  
