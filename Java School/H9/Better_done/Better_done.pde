int X1 = 20;
int Y1 = 20;
int X2  =70;
int Y2  = 50;

void vierkant(int X3, int Y3, int X4 , int Y4)
  {
  line(X3, Y3 , X3, Y4);
  line(X3, Y3 , X4 , Y3);
  line(X3,Y4,X4,Y4);
  line(X4,Y4,X4,Y3);
  }

void setup()
{
  size(200,200);
 vierkant(X1,Y1,X2,Y2);
 
}
