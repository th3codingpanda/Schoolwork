class regirock
{
  float y;
  float x;
  float leng;
  float heig;
  regirock(float e, float r , float z, float p)
   {
   y = e;
   x = r;
   leng = z;
   heig = p;
   }
    void real(){
    rect(y,x,leng,heig);
    }
 
}
regirock rep = new regirock(10,20,40,50);

void setup()
{
 size(400,400);
 rep.real();
}

void draw()
{

}
