int y = 0;
int GOKU[] = new int[10];
int Ggs(int getal)
  {
    for (int i = 0; i < GOKU.length; i++)
    {
      if(GOKU[i] == getal)
      {
       y++;
      }
    }
   int Answer = y;
    return Answer;
  }
void setup()
{
GOKU[0] = 9;
GOKU[1] = 8;
GOKU[2] = 8;
GOKU[3] = 8;
GOKU[4] = 8;
GOKU[5] = 8;
GOKU[6] = 8;
GOKU[7] = 9;
GOKU[8] = 9;
GOKU[9] = 8; //<>//


println(Ggs(8));


 
}
