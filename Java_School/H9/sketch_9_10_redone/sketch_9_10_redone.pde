//9.9
int x = 0;
void setup(){
  size(300,300);
  //treemeth(40,140,40,100);
  bos (0,50);
}

void draw(){}

void treemeth(int num1, int num2, int num3, int num4){
  fill(56, 17, 9);
  rect(num1, num2, num3, num4);
  fill(64, 120, 38);
  ellipse(num1 + (num3/2),num2,num3*1.8,num3*1.8);
}

//9.10

void bos(int num1, int num2){
  for(int i = 0; i<5 ; i++){
    
    treemeth((num1+ x),num2,40,100);
    x += 50;
    println("test");
  }
}
