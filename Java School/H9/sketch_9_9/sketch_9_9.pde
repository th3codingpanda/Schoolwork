void tree(int X1, int Y1, int L1 , int W1)
{
  noStroke();
  fill(150,75,0);
 rect(X1,Y1,L1,W1 * 3);
 fill(0,255,0);
 ellipse(X1 + (L1/2),Y1,L1*1.8,W1 *1.8);
 
}
void forest(int X1,int Y1, int Amount1)
{
 for(int Amount = Amount1; Amount>=0; Amount--)
 {
  tree(X1,Y1,50,50);
  X1 = X1 + 50;
 }
}


void Triangle(int X1, int Y1 , int X2 , int Y2, int X3, int Y3)
{

  
  line(X1,Y1,X2,Y2);
  line(X2,Y2,X3,Y3);
  line(X1,Y1,X3,Y3);
}

void setup()
{
  background(0,255,255);
  size(500,500);
 Triangle(200,200,250,150,300,200);
 //tree(50,50,50,50);
 forest(50,300,5);

}
