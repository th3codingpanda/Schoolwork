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
crying cry = new crying();
void setup() {
  frameRate(200);
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
        // creates the white squares if false
      } else if (myMove[i][j]) {

        fill(255, 255, 0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true
      } else {

        fill(0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true}
      }
    }
  }
}
void draw()
{
  
  cry.create();
  cry.fall();
  timer+=1;

  Grid();
  if (timer >= 61 ) {
    timer=0;
  }
}
class crying {
  void create() {
    if (!BlockScreen) {
      int Ran= int(random(0, 7));
      Ran = 0;
      if (Ran == 0)
      {
        myArray[4][0]= true;
        myMove[4][0] = true;
        myArray[5][0]= true;
        myMove[5][0] = true;
        myArray[6][0]= true;
        myMove[6][0] = true;
        myArray[6][1]= true;
        myMove[6][1] = true;
        Testmove[4][0]= true;
        Testmove[5][0] = true;
        Testmove[6][0]= true;
        Testmove[6][1] = true;
        myArray[4][3]= true;
        myMove[4][3] = true;
         Testmove[4][3]= true;
                 myArray[4][4]= true;
        myMove[4][4] = true;
         Testmove[4][4]= true;
        BlockScreen = true;
      }
    }
  }
  void fall()
  {
    // this feature is so annoying i want to cry
    if (timer >= 60 && BlockScreen)
    {
      for (int i = 9; i >=0; i--) {
        for (int j = 19; j>= 0; j--) {

          if (j<19 && Testmove[i][j] &&(myMove[i][j] || !myArray[i][j+1] )) {
            
            if (!Testmove[i][j+1] && myMove[i][j])
            {
              Testmove[i][j] =false;
              Testmove[i][j+1]=true;
              myArray[i][j] =false;
              myArray[i][j+1]=true;
              myMove[i][j] =false;
              myMove[i][j+1] =true;
            }
            if (myMove[i][19] || Testmove[i][j+1]) {
                    for (int x = 9; i >=0; i--) {
        for (int y = 19; j>= 0; j--) { myMove[x][y] = false;
           
              
        }
                
              }
            }
             else {
            }
            
          }
        }}
    }
  }
}
