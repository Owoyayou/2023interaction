void setup(){
  size(400,400,P3D);//Processing的3D功能
}
void draw(){
  background(#FFFFF2);
  pushMatrix();
    translate(mouseX,mouseY);
    rotateY(radians(mouseX));//對Y軸轉
    fill(0,255,0);//面填成綠色
    box(100);//3D的盒子、方塊
    
    noFill();//面不要填
    scale(2);//放大2倍
    box(100);//雖然是100的盒子，但上面有放大，他就放大了
  popMatrix();
}
