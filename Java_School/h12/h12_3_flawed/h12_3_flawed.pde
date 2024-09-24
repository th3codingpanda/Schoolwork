float x;
float y;
float z;
float a;
boolean one = true;


void mouseClicked()
{
if (one == true){

 x = mouseX;
  y = mouseY;
  one = false;
  }
 else if (one == false)
  {
    z= mouseX;
    a = mouseY;
     line(x,y,z,a);
     one = true;
  }  
}



void setup()
{
 size(500,500);
}
void draw()
{
}
