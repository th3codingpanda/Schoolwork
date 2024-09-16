float Z;
float Y;
float X;
float Q;

float Numbers(int number1, int number2)
{
 float total = (number1 + number2);
  return total;
}

void setup()
{
size(200,200);
Z = Numbers(20,20);
Y = Numbers(20,20);
Q = Numbers(20,20);
X = Numbers(50,50);
line(Z,Y,Q,X);
Z = Numbers(20,20);
Y = Numbers(20,20);
Q = Numbers(50,50);
X = Numbers(20,20);
line(Z,Y,Q,X);
Z = Numbers(50,50);
Y = Numbers(20,20);
Q = Numbers(50,50);
X = Numbers(50,50);
line(Z,Y,Q,X);
Z = Numbers(20,20);
Y = Numbers(50,50);
Q = Numbers(50,50);
X = Numbers(50,50);
line(Z,Y,Q,X);
}
void draw()
{

}
