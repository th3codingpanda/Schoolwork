void setup()
{
  size(500,500);
  for (int i = 0; i <21; i++)
    {
      for (int j = 0; j <21; j++)
      {
       if ((j+i) % 2 == 0)
        {
        fill(0,0,0);
        }
        else
        {
         fill(255,255,255) ;
        }
        rect(j*10 + 10 , i * 10 +10, 10 ,10);
        println((j+i) % 2);
        
      }



}
}
