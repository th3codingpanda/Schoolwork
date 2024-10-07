int Xrow = 10;
int Yrow = 20;
int timer = 0;
boolean Cooldown = false;
boolean Rightpressed;
boolean Leftpressed;
boolean Spacebarpressed = false;
boolean BlockScreen = false;
boolean Move = true;
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

  Tetris.create();
  Tetris.check();
  Tetris.Check_Movement();
  Tetris.Movement();
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
          int Ran= int(random(0, 8));
          println(Ran);
          
          if (Ran == 0)
          {
            myMove[4][0]= true;
            myMove[4][1]= true;
            myMove[4][2] = true;

            myMove[5][2] = true;
            BlockScreen = true;
          }if (Ran == 1)
          {
            myMove[4][0]= true;
            myMove[4][1]= true;
            myMove[5][1] = true;

            myMove[5][0] = true;
            BlockScreen = true;
          }if (Ran == 3)
          {
            myMove[4][0]= true;
            myMove[5][0]= true;
            myMove[5][1] = true;

            myMove[6][1] = true;
            BlockScreen = true;
          }if (Ran == 4)
          {
            myMove[6][0]= true;
            myMove[5][0]= true;
            myMove[5][1] = true;

            myMove[4][1] = true;
            BlockScreen = true;
          }if (Ran == 5)
          {
            myMove[4][0]= true;
            myMove[5][0]= true;
            myMove[5][1] = true;

            myMove[6][1] = true;
            BlockScreen = true;
          }if (Ran == 6)
          {
            myMove[4][0]= true;
            myMove[4][2]= true;
            myMove[4][3] = true;

            myMove[4][1] = true;
            BlockScreen = true;
          }if (Ran == 7)
          {
            myMove[4][0]= true;
            myMove[5][1]= true;
            myMove[4][1] = true;

            myMove[3][1] = true;
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
    if (timer >= 60)
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
  }
  void Check_Movement() {
    for (int i = 9; i >=0; i--) {
      for (int j = 19; j>= 0; j--) {
        if (i<9 && i>0) {
          if (!Testmove[i-1][j] && !Testmove[i+1][j])
          {
            if (myMove[i][j])
            {
              if (i == 9 || i == 0) {
                println("Cant move further");
                Move = false;
              }
              if (myMove[9][j] == true){Rightpressed = false;}
              if (myMove[0][j]== true){Leftpressed = false;}
            }
          }
          if (myMove[i][j] && (Testmove[i+1][j] ||Testmove[i-1][j])) {
            Leftpressed = false;
            Rightpressed = false;
          }
        }
      }
    }
  }
  void Movement() {
    for (int i = 0; i <=9; i++) {
      for (int j = 0; j<= 19; j++) {
       
        if (Move == true) {
           if (i>0&& i<9) {
          

            if (myMove[i][j]&& !myMove[i-1][j] && Leftpressed) {
              myMove[i][j] = false;
              myMove[i-1][j] = true;
              // left if leftpressed = true and it works
            }
            
          }
        }if (i==9 && myMove[i][j] && Leftpressed)
            {
              myMove[i][j] = false;
              myMove[i-1][j] = true;
            }
      }
    }
    for (int i = 9; i >=0; i--) {
      for (int j = 19; j>= 0; j--) {
        
          if (Move == true) {
            if (i>0&& i<9) {


            if (myMove[i][j]&& !myMove[i+1][j] && Rightpressed) {
              myMove[i][j] = false;
              myMove[i+1][j] = true;
              //same but right
            }
            }
          if (i==0 && myMove[i][j] && Rightpressed)
          {
            myMove[i][j] = false;
            myMove[i+1][j] = true;
          }
        }
      }
    }
    Rightpressed = false;
    Leftpressed= false;
  }
}




void keyPressed()
{
  if (key == ' ') {
    Spacebarpressed = false;
  }
  if (Spacebarpressed == true) {
    timer+=60;
  }
  if (key == 'd' || keyCode== RIGHT) {
    Rightpressed = true;
  }
  if (key == 'a' || keyCode == LEFT) {
    Leftpressed = true;
  }
  // left right spacebar pressed check
}
void keyReleased()
{
  if (key == ' ') {
    Spacebarpressed = true;
  }
  if (Spacebarpressed == true) {
    Spacebarpressed = false;
  }
  if (key == 'd' || keyCode== RIGHT) {
    Rightpressed = false;
  }
  if (key == 'a' || keyCode == LEFT) {

    Leftpressed = false;
  }
  // checked if released
}
