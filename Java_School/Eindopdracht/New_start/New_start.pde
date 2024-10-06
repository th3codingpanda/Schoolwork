int Xrow = 10;
int Yrow = 20;
int timer = 0;
boolean Rightpressed;
boolean Leftpressed;
boolean Spacebarpressed = false;
boolean BlockScreen = false;
boolean[][] myArray = new boolean[Xrow][Yrow];
boolean[][] myMove = new boolean[Xrow][Yrow];
boolean[][] Testmove = new boolean[Xrow][Yrow];
Tetris Tetris = new Tetris();
void Grid() {

  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i * 20;
      int Yrect = j * 20;
      if (!myMove[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
        // creates the white squares if false
      } else if (myMove[i][j]) {

        fill(0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true
      }
    }
  }
}
void Grid2() {

  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i * 20 +250;
      int Yrect = j * 20;
      if (!Testmove[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
        // creates the white squares if false
      } else if (Testmove[i][j]) {

        fill( 0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true
      }
    }
  }
}
void Grid3() {

  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i  * 20 + 500;
      int Yrect = j * 20;
      if (!myArray[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
        // creates the white squares if false
      } else if (myArray[i][j]) {

        fill( 0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true
      }
    }
  }
}
void setup()
{
  frameRate(200);
  size(800, 400);
}
void draw()
{
  timer++;
  println(timer);
  Tetris.create();
  Tetris.check();
  Tetris.fall();
  Tetris.sync();
  Grid();
  Grid2();
  Grid3();
}
class Tetris {
  void create() {
    for (int i = 9; i >=0; i--) {
      if (!Testmove[i][0]) {
        if (!BlockScreen) {
          int Ran= int(random(0, 7));
          Ran = 0;
          if (Ran == 0)
          {
            myMove[4][0]= true;
            myMove[4][1]= true;
            myMove[4][2] = true;

            myMove[5][2] = true;
            BlockScreen = true;
          }
        }
      } else {
        println("game over");
        stop();
      }
    }
  }
  void fall()
  {
    if (timer == 60)
    {
      for (int i = 9; i >=0; i--) {
        for (int j = 19; j>= 0; j--) {


          if (j<19 &&!Testmove[i][j+1] && myMove[i][j])
          {
            myMove[i][j] = false;
            myMove[i][j+1] = true;
          } else {
          }
        }
      }
      timer = 0;
    }
  }
  void sync() {
    for (int i = 9; i >=0; i--) {
      for (int j = 19; j>= 0; j--) {
        if (myMove[i][j] == true) {
          myArray[i][j] = true;
        } else {
          myArray[i][j] = false;
        }
        if (Testmove[i][j] == true) {
          myArray[i][j] = true;
        }
      }
    }
  }
  void check() {
    for (int i = 9; i >=0; i--) {
      for (int j = 19; j>= 0; j--) {
        if ((j==19 || Testmove[i][j+1]) && myMove[i][j])
        {
          for (int x = 0; x < 10; x++) {
            for (int y = 0; y < 20; y++) {
              if (myMove[x][y]) {
                Testmove[x][y]= true;
              }
              myMove[x][y]= false;
            }
          }
          BlockScreen = false;
        }
      }
    }
  }}
