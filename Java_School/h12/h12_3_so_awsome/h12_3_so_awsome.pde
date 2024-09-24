float x;
float y;

void mouseDragged()
{
x = mouseX;
y = mouseY;
line(x,y,x,y);
}
void setup()
{
size(500,500);
strokeWeight(4);
}
void draw()
{

}
