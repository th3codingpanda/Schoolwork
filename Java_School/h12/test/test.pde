float x;
float y;
float a = 500;
float b = 0;
boolean right = false;
boolean left = true;
float rectWidth = 50;
float rectHeight = 50;

void setup (){
  size(500,500);
  


}
void draw (){
 background(255,255,255);
/*
x;
y;

rectWidth;
rectHeight;


if( x < 250) rectWidth += 10;
else if(x > 250) rectWidth -= 10;

if( y < 250) rectHeight += 10;
else if(y > 250) rectHeight -= 10;
50,50
150,150

midPointX = width / 2;
midPointY = width / 2;

GrowCounter = 0;



*/
SqrMove();
}

void SqrMove() {
  if (left == true){
  rect(x,y,rectWidth,rectHeight);
  x = x + 2;
  y = y + 2;


  fill(0, 255, 0);
  rect(240, 240, 10, 10);
  noFill();


  if( x < 250 - rectWidth / 2) rectWidth = rectWidth + 0.2;
  else if(x > 250 - rectWidth / 2) rectWidth -= 0.2;

  if( y < 250 - rectHeight / 2) rectHeight += 0.2;
  else if(y > 250 - rectHeight / 2) rectHeight -= 0.2;

  if ( x > width - rectWidth){
    x = 0;
    rectWidth = 50;
  }
  if (y > height - rectHeight){
    y = 0;
    rectHeight = 50;
    left = false;
    right = true;
  }
  }


  if (right == true){
  rect(a - rectWidth,b ,rectWidth,rectHeight);
  a = a - 2;
  b = b + 2;


  fill(0, 255, 0);
  rect(240, 240, 10, 10);
  noFill();


  if( a < 250 + rectWidth / 2) rectWidth = rectWidth - 0.2;
  else if(a > 250 + rectWidth / 2) rectWidth += 0.2;

  if( b < 250 - rectHeight / 2) rectHeight += 0.2;
  else if(b > 250 - rectHeight / 2) rectHeight -= 0.2;

  

  if (b > height - rectHeight){
    b = 0;
    rectHeight = 50;
    rectWidth = 50;
        a = 500;
    left = true;
    right = false;
  }
  }
}
