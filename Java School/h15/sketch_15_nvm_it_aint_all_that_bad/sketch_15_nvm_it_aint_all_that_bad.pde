class Person 
{
 float health;
 float danage;
 float health_regen;
   Person(float x, float y, float z)
   {
   health = x;
   danage = y;
   health_regen = z;
   }
   void info()
   {
   println(health+ " "+ danage + " " + health_regen);
   }
}
 Person Goku = new Person(1000,200,50);
void setup()
{
 Goku.info();
}
