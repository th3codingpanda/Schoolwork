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

int steen1 = 5;
int steen2 = 6;
int steen3 = 2;
var resultaat = 0;
if (steen1 >1 && steen2 >1 && steen3 > 1)
{
resultaat = Math.round(steen1 + steen2 + steen3) /3;
}
if (steen1 == 1 && steen2 == 1 && steen3 == 1)
{
println("CRICTICAL MISS");
}
else if (resultaat == 0)
{
println("MISS");
}
else if(steen1 == 6 && steen2 == 6 && steen3 == 6)
{
println("Critical Hit " + resultaat + "Damage");
}
else println("Hit " + resultaat + " Damage");
println(resultaat);


int lessen_gevolgd = 16;
float cijfer = 5.5 ;
int  lessen_needed = 20;
lessen_needed = floor(lessen_gevolgd / 100 * 80);
if (lessen_gevolgd>lessen_needed && cijfer > 5.5)
{
println("Geslaag!");
}
else {
println("niet geslaagd");
}







}
