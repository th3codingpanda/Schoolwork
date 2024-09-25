float x;
float y;
float z;
float a;
boolean one = true;

void mousePressed()
{
  if (one == true){

 x = mouseX;
  y = mouseY;
  }
  else if (one == false)
  {
    z= mouseX;
    a = mouseY;
     line(x,y,z,a);
  }  
}
void mouseReleased()
{
 if (one == false)
 {
   x = z;
   y = a;
 }
  else if (one == true)
 {
   one = false;
 }
}

void setup()
{
 size(500,500);
}
void draw()
{
}
