void setup(){
  int temperatuurCelsius = 20;
  if (temperatuurCelsius >25 && temperatuurCelsius <30){println("warm");}
  else if (temperatuurCelsius >=30 ){println("HEET");}
  else println("het is nu graden " + temperatuurCelsius + " celcius");
  
  
int speler1Score = 30;
int speler2Score = 30;

if (speler1Score > speler2Score)
{
println("Win 1");
}
else if (speler2Score > speler1Score)
{
println("win 2");
}
else println("tie");

int steen1 = 3;
int steen2 = 0;
int steen3 = 1;
float resultaat = 0;
if (steen1 >1 && steen2 >1 && steen3 > 1)
{
resultaat = Math.round(steen1 + steen2 + steen3) /3;
}
if (resultaat == 0)
{
println("Mis");
}
else if (steen1 == 1 && steen2 == 1 && steen3 == 1)
{
println("CRITICAL MISS");
}
else println("Hit" + resultaat + "Damage")
//Je code komt hier
print(resultaat);



}
