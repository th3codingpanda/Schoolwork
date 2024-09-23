int spacebar = 0;
int time = 0;
boolean Held = false;




void setup()
{
 size(500,500);
}
void draw()
{
 time+= 1;
 

}
void keyPressed()
{
  
   

    if (key == ' ' && Held == false)
    {
     spacebar += 1;
     println(spacebar);
     Held = true;
    }
  
   else
    {
      println("Dont hold the spacebar down");  
    }
  if (time >= 600)
    {
      stop();
    }
}
void keyReleased(){
Held = false;
}
