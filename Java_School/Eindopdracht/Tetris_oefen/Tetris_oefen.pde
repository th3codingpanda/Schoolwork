int Xrow = 10;
int Yrow = 20;
boolean BlockScreen = false;
boolean[][] myArray = new boolean[Xrow][Yrow];
// int for amount of rows and array to use those;
// blockscreen to check if a block is on screen so i dont have 100 blocks
void blokjes() {

  if (!BlockScreen)
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
  Grid();
  blokjes();
  line(200, 0, 200, 400);
}
void setup()
{  myArray[5][5] = true;
  size(300, 400);}
void Grid(){

  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i * 20;
      int Yrect = j * 20;
      if (!myArray[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
        
      } else if (myArray[i][j]) {
        fill(0);
        rect(Xrect, Yrect, 20, 20);
        
      }
    }
  }
}
