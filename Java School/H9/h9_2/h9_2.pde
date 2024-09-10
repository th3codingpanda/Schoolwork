int xWaarde = 0;
int yWaarde = 0;
int zWaarde = 500;
int uWaarde = 500;
int pWaarde = 0;
int bWaarde = 0;
int mWaarde = 500;
int nWaarde = 500;
//ints
void setup(){
  size(500,500);  
}

void draw(){
  //background(255,255,255);
  zWaarde--;
  uWaarde-=5;
  xWaarde++;
  yWaarde+=5;
  pWaarde+=5;
  bWaarde++;
  mWaarde-=5;
  nWaarde--;


  if(xWaarde >= 500){
    xWaarde = 0;
    stop();
  }

  if(yWaarde >= 500)
  {
    yWaarde = 0; 
  }
  if(uWaarde <= 0)
  {
    uWaarde = 500;
  }
    if(pWaarde >= 500)
  {
    pWaarde = 0; 
  }
      if(mWaarde <= 0)
  {
    mWaarde = 500; 
  }
  
  
  rect(zWaarde, uWaarde,1,1);
  rect(xWaarde, yWaarde, 1,1);
  rect(pWaarde, bWaarde, 1,1);
  rect(mWaarde,nWaarde,1,1);

  println(xWaarde + "x " + yWaarde + "y" );
}
