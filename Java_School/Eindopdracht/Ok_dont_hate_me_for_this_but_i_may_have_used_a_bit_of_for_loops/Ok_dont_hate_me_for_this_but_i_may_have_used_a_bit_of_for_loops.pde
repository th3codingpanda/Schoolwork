int Xrow = 10;
int Yrow = 20;
int timer = 0;
boolean Rightpressed;
boolean Leftpressed;
boolean spacebarpressed = false;
boolean BlockScreen = true;
boolean Screenscanned = true;
boolean[][] myArray = new boolean[Xrow][Yrow];
// int for amount of rows and array to use those;
// blockscreen to check if a block is on screen so i dont have 100 blocks
void blokjes() {
  if (BlockScreen)
  {

    for (int i = 9; i >=0; i--) {

      for (int j = 19; j>= 0; j--) {

        if (j<19 && myArray[i][j]&&timer >= 60 &&!myArray[i][j+1]  ) {

          println("test");
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
  if (timer >= 60 ) {
    timer=0;
  }

  line(200, 0, 200, 400);
}
void setup()
{
  myArray[2][0] = true;
  myArray[3][0] = true;
  myArray[4][0] = true;
  myArray[4][1] = true;
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
void keyPressed()
{
  if (key == ' ') {
    spacebarpressed = true;
  }
  if (spacebarpressed == true) {
    timer+=60;
  }
  if (key == 'd' || keyCode== RIGHT) {
    Rightpressed = true;
  }
  if (key == 'a' || keyCode == LEFT) {
    Leftpressed = true;
  }
  for (int i = 0; i <=9; i++) {

    for (int j = 0; j<= 19; j++) {
      if (i>0&& i<9 && myArray[i][j]&& !myArray[i-1][j] && Leftpressed) {
        myArray[i][j] = false;
        myArray[i-1][j] = true;
      } else if (i==9 && myArray[i][j] && Leftpressed )
      {
        myArray[i][j]= false;
        myArray[i-1][j] = true;
      }
    }
  }
  for (int i = 9; i >=0; i--) {

    for (int j = 19; j>= 0; j--) {
      if (i<9 && i>0 && myArray[i][j]&& !myArray[i+1][j] && Rightpressed) {
      
        myArray[i][j] = false;
        myArray[i+1][j] = true;
      } else if (i==0 && myArray[i][j] && Rightpressed )
      {
        myArray[i][j]= false;
        myArray[i+1][j] = true;
      }
    }
  }
}
void keyReleased()
{
  if (key == ' ') {
    spacebarpressed = true;
  }
  if (spacebarpressed == true) {
    spacebarpressed = false;
  }
  if (key == 'd' || keyCode== RIGHT) {
    Rightpressed = false;
  }
  if (key == 'a' || keyCode == LEFT) {
    Leftpressed = false;
  }
}
