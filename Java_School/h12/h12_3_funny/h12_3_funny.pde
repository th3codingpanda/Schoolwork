float x;
float y;

void mouseMoved(){
   x = mouseX;
  y = mouseY;
  strokeWeight(4);
line(x,y,x,y);
}

void setup()
{
 size(500,500);
}
void draw()
{
}
