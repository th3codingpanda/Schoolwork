//Copy pasted code to test out why it works 
// Declare and construct two objects (h1, h2) from the class HLine 
HLine h1 = new HLine(50, 1); 
HLine h2 = new HLine(50, 2.5); 
 
void setup() 
{
  size(200, 200);
  frameRate(30);
}

void draw() { 
  background(204);
  h1.update(); 
  h2.update();  
} 
 
class HLine { 
  float ypos, speed; 
  HLine (float y, flvoat s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 
