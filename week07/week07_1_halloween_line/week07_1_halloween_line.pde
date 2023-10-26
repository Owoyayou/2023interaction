void setup(){
 size(400,400); 
}
void draw(){
 background(255);
 if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}
void mouseReleased(){
 background(255);
}
