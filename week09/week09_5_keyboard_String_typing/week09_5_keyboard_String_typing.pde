PImage img;
int [][] pos = {{83,457},{91,491},{110,524},{117,456},{127,490},{142,524},{153,456},{162,493},{176,525},{185,456},{197,493},{212,527},{221,454},{228,493},{245,523},{253,457},{265,492},{279,523},{285,454},{297,496},{317,524},{319,453},{332,491},{355,458},{365,488},{392,458}};//這行有幾個下面for的i<"數字"就要有幾個
void setup(){
 size(800,600);
 img=loadImage("keyboard.png");
 rectMode(CENTER);//用中心點畫四邊形
}
void draw(){
  background(#FFFFF2);//淡黃色，清背景
  image(img,0,600-266);
  fill(255,0,0,128);//半透明的紅色
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);//半透明的綠色
  for(int i=0;i<26;i++){//注意啦
    if(typing.charAt(0)-'a' == i) rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);//黑色的字
  textSize(50);
  text(typing,50,50);
  text(typing.charAt(0),50,100);//現在要打得字，是typing
}
String typing = "printf";
boolean [] pressed = new boolean[26];//Java的陣列宣告，都是0或false
void keyPressed(){
  if(key>='a'&&key<='z') pressed[key-'a'] = true;
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
