
float len = 50;
boolean Onrect = false;
boolean red = true;
boolean green = false;
boolean blue = false;

void setup()
{
  size(500, 500);
}
void draw()
{
  background(255);
  

  for (int i =0; i< recx.length; i++) {
    if(Touching[i]){
      fill(r[i],g[i],b[i]);
      if (i == 3)
    {
      if (red == true){
       r[i] +=5;
     }
     if (r[i]== 255){red = false; green = true; r[i] = 0;}
     
    if (green == true){
       g[i] +=5;
     }
     if (g[i]== 255){green = false;blue = true; g[i] = 0;}

    
    if (blue == true){
       b[i] +=5;
     }
     if (b[i]== 255){blue = false; red = true; b[i] = 0;}
    }
    
    }else{
      fill(0);
    }
    rect(recx[i], recy[i], len, len);
  }
}
void mouseDragged()
{
  for (int i = 0; i < Touching.length; i++) {
    if (Touching[i] == true)
    {
      recx[i] = mouseX - offsetx[i] ;
      recy[i] = mouseY - offsety[i] ;
    }
  }
}
void mousePressed() {
  for (int i =0; i< recx.length; i++) {
    if (mouseX <= (recx[i]+len) && mouseX >= recx[i])
    {
      if (mouseY <= (recy[i]+len) && mouseY >= recy[i])
      {
        Touching[i] = true;
        offsetx[i] = mouseX - recx[i];
        offsety[i] = mouseY - recy[i];
      }
    }
  }
}

float[] recx = {50, 90, 40,100};
float[] recy = {50, 90, 40, 60};
float[] offsetx = {0,0,0,0};
float[] offsety= {0,0,0,0};
boolean[] Touching= {false, false, false,false};
float[] r = {255,0,0,50};
float[] g = {0,255,0,50};
float[] b = {0,0,255,50};
void mouseReleased() {
  for (int i = 0; i < Touching.length; i++) {
    Touching[i] = false;
  }
}
