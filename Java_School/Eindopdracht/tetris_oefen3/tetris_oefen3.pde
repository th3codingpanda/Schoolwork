int Xrow = 10;
int Yrow = 20;
int timer = 0;
boolean BlockScreen = true;
boolean[][] myArray = new boolean[Xrow][Yrow];
// int for amount of rows and array to use those;
// blockscreen to check if a block is on screen so i dont have 100 blocks
void blokjes() {
  if (BlockScreen)
  {
    for (int i = 0; i < Xrow; i++) {
      for (int j = 0; j < Yrow; j++) {
        if (j<19 && myArray[i][j] && timer>= 60 && !myArray[i][j+1]  ) {
          timer = 0;

          myArray[i][j] = false;
          myArray[i][j+1] = true;
          
        }
      }
    }
  } else if (!BlockScreen)
  {
    int Random_num = 0;
    //Random_num = int(random(7));
    println(Random_num);
    BlockScreen = true;
    if (Random_num == 0)
    {
      for (int i =5; i<8; i++) {
        myArray[i][0] = true;
      }
    }
    //gives random number from 0 to 6 so 7 since there are 7 pieces
    //also make Block screen true
  }
}
void draw()
{
  timer+=1;
  println(timer);
  Grid();
  blokjes();
  line(200, 0, 200, 400);
}
void setup()
{
  myArray[0][0] = true;
  myArray[5][6] = true;
  myArray[5][7] = true;
  size(300, 400);
}
void Grid() {

  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i * 20;
      int Yrect = j * 20;
      if (!myArray[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
      } else {
        fill(0);
        rect(Xrect, Yrect, 20, 20);
      }
    }
  }
}
