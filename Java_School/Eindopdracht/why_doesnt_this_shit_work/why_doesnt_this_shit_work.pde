int Xrow = 10;
int Yrow = 20;
int timer = 0;
boolean Rightpressed;
boolean Leftpressed;
boolean Spacebarpressed = false;
boolean BlockScreen = true;
boolean[][] myArray = new boolean[Xrow][Yrow];
boolean[][] myMove = new boolean[Xrow][Yrow];
// int Xrow for x Yrow for y
// blockscreen to check if a block is on screen so i dont have 100 blocks
// Pressed to check if its pressed
// Myarray is used for the grid and is a boolean so if theres a block its true if theres not one then its false
void blokjes() {
  if (BlockScreen)
  {
    boolean mayImove = true;
    if(timer >= 60){
      
      for (int i = 9; i >=0; i--) {
        for (int j = 19; j>= 0; j--) {
          if (myMove[i][j]) {
            if(j<19 && (!myArray[i][j+1] || myMove[i][j+1])){}
            else{ mayImove = false;break;}
          }
        }
      }
      for (int i = 9; i >=0; i--) {
        for (int j = 19; j>= 0; j--) {
          if(myMove[i][j]){
            if(mayImove){
              myArray[i][j] = false;
              myArray[i][j+1] = true;
              
              myMove[i][j] = false;
              myMove[i][j+1] = true;
            }else{
              myMove[i][j] = false;
            }
          }
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
        // currently does nothing i think it was going to be used for spawning them in
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
  // draws the grid
  blokjes();
  //draws the blokjes
  if (timer >= 60 ) {
    timer=0;
  }
  // resets the timer i couldnt figure out how to fit it into a method

  line(200, 0, 200, 400);
  // line to devide the screen am going to use this as a scoreboard and a next
}
void setup()
{
  frameRate(100);
  myArray[2][0] = true;
  myArray[3][0] = true;
  myArray[4][0] = true;
  myArray[4][1] = true;
  myMove[2][0] = true;
  myMove[3][0] = true;
  myMove[4][0] = true;
  myMove[4][1] = true;
  size(300, 400);
  // setup
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
      } else {
        
        fill(0);
        rect(Xrect, Yrect, 20, 20);
        // creates the black squares if its true
      }
    }
  }
}

void keyPressed()
{
  if (key == ' ') {
    Spacebarpressed = true;
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
  for (int i = 0; i <=9; i++) {
    for (int j = 0; j<= 19; j++) {
      if (i>0&& i<9 && myArray[i][j]&& !myArray[i-1][j] && Leftpressed) {
        myArray[i][j] = false;
        myArray[i-1][j] = true;
        // left if leftpressed = true and it works
      } else if (i==9 && myArray[i][j] && Leftpressed )
      {
        myArray[i][j]= false;
        myArray[i-1][j] = true;
        //left pressed and against the borders so it doesnt crash
      }
    }
  }
  for (int i = 9; i >=0; i--) {

    for (int j = 19; j>= 0; j--) {
      if (i<9 && i>0 && myArray[i][j]&& !myArray[i+1][j] && Rightpressed) {
      
        myArray[i][j] = false;
        myArray[i+1][j] = true;
        // rightpressed and possible
      } else if (i==0 && myArray[i][j] && Rightpressed )
      {
        myArray[i][j]= false;
        myArray[i+1][j] = true;
        // right pressed and against border
      }
    }
  }
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
