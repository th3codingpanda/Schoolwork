void setup()
{
 int leeftijd = 4;
 switch (leeftijd)
 {
 case 1:
 println("WAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA");
 break;
 case 2:
 case 3:
 println("Baby");
 break;
 case 4:
 case 5:
 println("Kleuter");
 break;
 case 6:
 case 7:
 case 8:
 case 9:
 case 10:
 println("Kind");
 break;
 case 11:
 case 12:
 case 13:
 case 14:
 case 15:
 case 16:
 println("puber");
 break;
 case 17:
 case 18:
 println("oud");
 break;
 default:
 println("Nog ouder");
 break;
 }
var som = 5 + ((10 * 10) + 50);
// eerst doet het 10 * 10 dan doet het + 50 en dan + 5 Dus 155
println(som);

Boolean fiets = false;
Boolean lopen = false;
Boolean auto = false;

if(!lopen && (fiets || auto))
{
  println("Je gebruikt een voertuig met wielen");
}
var dag = 7;
switch(dag){
case 1:
 println("maandag");
 break;
 case 2:
 println("dinsdag");
 break;
 case 3:
 println("woensdag");
 break;
 case 4:
  println("donderdag");
 break;
 case 5:
 println("vrijdag");
 break;
 case 6:
  println("zaterdag");
 break;
 case 7:
  println("zondag");
 break;
 default:
 println("Niet geldige dag");
 break;
}

/* De cijfers 1, 2 en 3 zijn slecht, het cijfer 4 is onvoldoende
het cijfer 5 is matig, de cijfers 6 en 7 zijn voldoende,
de cijfers 8, 9 en 10 zijn goed. */
 var cijfer = 10;
 
 switch(cijfer)
 {
 case 1:
 case 2:
 case 3:
 println("Slecht");
 break;
 case 4:
 println("onvoldoende");
 break;
 case 5:
 println("matig");
 break;
 case 6:
 case 7:
 println("voldoende");
 break;
 case 8:
 case 9:
 case 10:
 println("goed");
 break;
 default:
 println("invalid number");
 break;
 }



}
