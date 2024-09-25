int a = 50;
int b = 50;
int rectx = 10;
int recty = 10;
int lengte = 50;
int lengte1 = 50;
int speedx = 4;
int speedy = 4;
boolean w = false;
boolean s = false;
boolean up = false;
boolean down = false;


void setup() {
  size(700, 500);
}

void draw() {
  background(0, 0, 0);
  println(a);
  ellipse ( a, b, 10, 10);
  rect(0, rectx, 10, lengte);
  rect(690, recty, 10, lengte1);
  a += speedx;
  b += speedy;
  if ( a >= 690 && a<=700 && b>= recty && b<= (recty+lengte1)) {
    speedx = speedx - 4;}

  if ( a >= 0 && a<=10 && b>= rectx&& b<= (rectx+ lengte)) {
    speedx += 4;
  }
  
  if ( b > 500) {
    speedy = -4;
  }
  if ( b <= 0) {
    speedy = 4;
  }
  if (rectx <= -5 ){
    rectx = rectx +5;
  }
  if (recty <= -5 ){
    recty = recty +5;
  }
  if(rectx >= 455){
    rectx = rectx -5;
  }
  if(recty >= 455){
    recty = recty -5;
  }
  if ( w == true) {
    rectx = rectx -5;
  }
  if ( s == true) {
    rectx = rectx +5;
  }
  if ( up == true) {
    recty = recty -5;
  }
  if ( down == true) {
    recty = recty +5;
  }
}

void keyPressed() {
  if ( key == 'w') {
    w = true;
  }
  if ( key == 's') {
    s = true;
  }
  if ( keyCode == UP) {
    up = true;
  }
  if ( keyCode == DOWN) {
    down = true;
  }
}
void keyReleased() {
  if ( key == 'w') {
    w = false;
  }
  if ( key == 's') {
    s = false;
  }
  if ( keyCode == UP) {
    up = false;
  }
  if ( keyCode == DOWN) {
    down = false;
  }
}








// if ( x < 60) {
//   if (x > rectx);
//   if (x < (rectx + 80));
//    speedx = speedx - 4;
