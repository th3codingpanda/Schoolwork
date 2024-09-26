int Xrow = 10;
int Yrow = 20;
boolean[][] myArray = new boolean[Xrow][Yrow];

void draw()
{
  line(200, 0, 200, 400);
  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
    }
  }
}
void setup()
{
  myArray[5][5] = true;
  size(300, 400);
  for (int i = 0; i < Xrow; i++) {
    for (int j = 0; j < Yrow; j++) {
      int Xrect = i * 20;
      int Yrect = j * 20;
      if (!myArray[i][j]) {
        fill(255);
        rect(Xrect, Yrect, 20, 20);
        println(i + " " + j);
      } else if(myArray[i][j]) {
        fill(0);
        rect(Xrect, Yrect, 20, 20);
        println(i + " true " + j);
      }
    }
  }
}
