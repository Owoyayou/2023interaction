//互動模式 Interactive Mode (Active Mode)
//大一大二學 int main(){...}
void setup(){//設定
  size(500,500);
  background(255,255,0);//背景(紅,綠,藍);
} 
void draw(){//每秒畫60次
  ellipse(mouseX,mouseY,8,8);
}
