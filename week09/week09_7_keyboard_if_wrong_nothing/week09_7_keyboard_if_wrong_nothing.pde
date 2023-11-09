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
    if(typing.charAt(ID)-'a' == i) rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  textSize(50);
  fill(0);//黑色的字
  text(typing,50,50);//要打的字
  fill(255,0,0);//紅色
  text(typed + typing.charAt(ID),50,100);//現在要打得字，是typing
  fill(0);//再用黑色，秀出已經打好的字
  text(typed,50,100);//已經打好的字
}
String typing = "printfprintfprintf";
String typed = "";//一開始打了0個字
int ID = 0;//第幾個字母要被打
boolean [] pressed = new boolean[26];//Java的陣列宣告，都是0或false
void keyPressed(){
  if(key>='a'&&key<='z'){
    if(key==typing.charAt(ID)){//字母正確就往下
      pressed[key-'a']=true;
      typed += key;
      ID++;
    }else{
      background(255,0,0);//畫面紅色一直閃     
    }
  }
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
