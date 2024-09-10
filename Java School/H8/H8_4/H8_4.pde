void setup()
{
  size(500,500);
int xWaarde = 0;
int yWaarde = 10;
for(int i = 0; i < 5; i++)
{
  for (int j = 0; j<5; j++)
{
rect(xWaarde ,yWaarde, 20, 20 );
xWaarde += 20;
}
println(yWaarde);
yWaarde += 40;
} 

}
