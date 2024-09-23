void setup(){
size(200,200);
background(255,255,255);

int  sizeX = 100;
int sizeY = 100;

for (var i = 0; i<5; i++)
{
   for (var j = 0; j<5; j++)
    {
     sizeX = sizeX - 3;
     sizeY = sizeY - 3;
     ellipse(100,100,sizeX,sizeY);
     println(sizeX + " " + sizeY);
    }
  sizeX = sizeX - 6;
  sizeY = sizeY - 6;
}






}
