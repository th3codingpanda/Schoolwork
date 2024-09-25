int x = 230;
int y = 230;
int len = 40;
boolean w = false;
boolean a = false;
boolean s = false;
boolean d = false;
int speed = 5;
void setup(){size(500,500);}

void draw()
{
  background(255);
rect(x,y,len,len);
if(w == true){y-= speed;}
if(a == true){x-= speed;}
if(s == true){y+= speed;}
if(d == true){x+= speed;}
}

void keyPressed()
{
 if (key == 'w')
 {
  w = true;
 }
 


if (key == 'a')
 {
  a = true;
 }



if (key == 's')
 {
  s = true;
 }



if (key == 'd')
 {
  d = true;
 }

}

void keyReleased()
{

if (key == 'w')
 {
  w = false;
 }
 if (key == 'a')
 {
  a = false;
 }
 if (key == 's')
 {
  s = false;
 }
 if (key == 'd')
 {
  d = false;
 }
}
