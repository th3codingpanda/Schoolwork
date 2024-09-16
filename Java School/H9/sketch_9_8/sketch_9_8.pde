float Start_X = 250;
float Start_Y = 250;
float bruh = 100;
float Testing(float getal,float getal2)
{
  float totaal = (getal - getal2);

return totaal;
}

void setup()
{
  
  size(500,500);
  for (var i = 0; i<=5; i++)
    {
    ellipse(Start_X,Start_Y,bruh,bruh);
    println(bruh);
    bruh = Testing(bruh,20);
    }


}

void draw()
{
for (var i = 0; i>=5; i++)
    {
    ellipse(Start_X,Start_Y,bruh,bruh);
    bruh = Testing(bruh,10);
    }

}
