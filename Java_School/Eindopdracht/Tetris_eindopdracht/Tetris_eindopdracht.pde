int y;
int x;
int Amount_spawned;
int Timer=0;
boolean Onscreen = true;
class blok
{

  int wid;
  int heigh;
  void Blokje(int a, int b)
  {
    if (Onscreen == true)
    {
      if (a< 380 && b <= 580) {

        rect(a, b, 20, 20);
        rect(a -20, b, 20, 20);
        if (Timer == 60){
          Timer = 0;
        x +=20;
        y += 20;}
      } else if (a>=380 && b <= 580) {
        x = 380;
        rect(a, b, 20, 20);
        rect(a -20, b, 20, 20);
        y += 2;
      } else
      {
        rect(a, b, 20, 20);
        rect(a- 20, b, 20, 20);
        Onscreen = false;
      }
      if (Onscreen== false) {
        Amount_spawned =+1;
        
      }
    }
  }
}
blok blok1 = new blok();
blok blok2 = new blok();
/*
Here is placed what every var is used for
 
 
 
 
 */

void setup()
{
  size(600, 600);
  line(400, 0, 400, 600);
  //creates lines
}

void draw()
{
  background(255);
  Timer +=1;
  line(400, 0, 400, 600);
  blok1.Blokje(x, y);
}
