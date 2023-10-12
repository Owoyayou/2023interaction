void setup(){
  size(400,400,P3D);//Processing的3D功能
}
void draw(){
  background(255);
  if(mousePressed && mouseButton==LEFT) print(".");//background(255,0,0);
  if(mousePressed && mouseButton==CENTER) background(0,255,0);
  if(mousePressed && mouseButton==RIGHT) background(0,0,255);
}
void mousePressed(){
  if(mouseButton==LEFT) println("LEFT");
  if(mouseButton==LEFT) println("CENTER");
  if(mouseButton==LEFT) println("RIGHT");
}
