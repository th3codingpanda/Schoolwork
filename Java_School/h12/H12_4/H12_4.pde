double klok = 0;
boolean timer = false;
double sec = klok/60;
void keyPressed()
{
 if (key == 'a' && timer == false)
 {
   timer = true;
 }
 else if (key == 'a' && timer == true)
 {
 timer = false;
 }
}

void draw(){
if (timer == true){klok +=1;
sec = (Math.floor((klok/60)*100)/100);}
println(sec);
}
