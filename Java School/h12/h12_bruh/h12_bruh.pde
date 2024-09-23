boolean jeff = false;
void setup()
{
size(500 ,500);
}

void keyPressed()
{
  if (key == CODED){
if (keyCode == DOWN)
  {
  jeff = true;
  }
  else
{
println("error");
}
}
else
{
println("error");
}
}
void draw()
{
 if (jeff == true)
 {
 jeff = false;
 println("test");
 }
}
