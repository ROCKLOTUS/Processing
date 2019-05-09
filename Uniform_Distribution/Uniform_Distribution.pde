int[] randomCounts;


void setup(){
 size(640,240);
 randomCounts = new int[20];     //创建20个空格接受随机数
}

void draw(){
  
  background(255);//设置背景为白色
  
  int index = int(random(randomCounts.length));  //产生0-randomCounts.length-1范围内的随机数
  
  randomCounts[index]++;
  
  stroke(0);  //画笔为黑色
  fill(175);  //填充灰色
  int w = width/randomCounts.length;  //每个正方形的宽度
  
  //画出高度
  for(int x = 0;x < randomCounts.length;x++){
    rect(x*w,height-randomCounts[x],w-1,randomCounts[x]);
  }
}
