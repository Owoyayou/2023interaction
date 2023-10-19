import processing.sound.*;

SoundFile da,dingdong,ouch;
void setup(){
  size(300,300);
  da = new SoundFile(this,"da.mp3");
  dingdong = new SoundFile(this,"dingdong.mp3");
  ouch = new SoundFile(this,"ouch.mp3");
}
String line = "";
void draw(){
  background(0);
  text("Input: " + line,50,100);
}
void keyPressed(){
  if(key >= 'A' && key <= 'Z') {line += key;da.play();}
  if(key >= 'a' && key <= 'z') {line += key;da.play();}
  if(key == BACKSPACE && line.length()>0){//刪到變成0的時候就不能再刪了
    line = line.substring(0,line.length()-1);
    ouch.play();
  }
  if(key == ENTER){
    dingdong.play();
  }
}
