int x = 50;
int y = 50;
int rect = 0;
int rect1 = 10;
int rect2 = 694;
int rect3 = 10;
int speedx = 5;
int speedy = 5;
int speedrect1 = 2;
int speedrect3 = 2;
boolean Up1 = false;
boolean Up2 = false;
boolean Down1 = false;
boolean Down2 = false;
void setup() {
  size(700, 500);
}


void draw() {
  background(255, 255, 255);
  ellipse ( x, y, 10, 10);
  rect(rect, rect1, 5, 50);
  rect(rect2, rect3, 5, 50);
  x += speedx;
  y += speedy;

  if ( x > 685) {
    speedx = speedx - 5;
  }
  if ( x < 15 ) {
    speedx += 5;
  }
  if ( y > 485) {
    speedy = -5;
  }
  if ( y <= 15) {
    speedy = 5;
  }
{
  if (Up1 == true) {
    rect1 = rect1 -5;
  }
  if (Down1 == true) {
    rect1 = rect1 +5;
  }
  if (Up2 == true) {
    rect3 = rect3 -5;
  }
  if (Down2 == true) {
    rect3 = rect3 +5;}
}
}

void keyPressed(){
if (key == 'w'){Up1 = true;}
if (key == 's'){Down1 = true;}
if (keyCode == UP){Up2 = true;}
if (keyCode == DOWN){Down2 = true;}
}
void keyReleased(){
if (key == 'w'){Up1 = false;}
if (key == 's'){Down1 = false;}
if (keyCode == UP){Up2 = false;}
if (keyCode == DOWN){Down2 = false;}
}
