int spacebars;
void setup()
{
size(500 ,500);
}

void keyPressed()
{
  if (key == CODED){
if (key == ' ')
  {
    spacebars += 1;
   println(spacebars);
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

}
