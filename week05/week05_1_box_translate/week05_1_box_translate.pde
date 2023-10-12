void setup(){
  size(400,400,P3D);//Processing的3D功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix();
    translate(mouseX,mouseY);
    box(100);//3D的盒子、方塊
  popMatrix();
}
