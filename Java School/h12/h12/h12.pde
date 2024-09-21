int X = 5 ;

void setup()
{
size(500,500);
}

void draw()
{
  rect(X,X,50,50);

}
void keyPressed()
{
  
     if (keyCode == UP)
     {
        X += 5;
     }
   
    


}
 
  

/*arrow left = 37
arrow up = 38
arrow right = 39
arrow down = 40
*/
