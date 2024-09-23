void setup(){
int mijnEersteVariabele = 2;
if(mijnEersteVariabele == 2){
println("ja de variabele is 2 ");
}

int temperatuur = -2;
if( temperatuur < 0){
println("Het is kouder dan 0 graden " +true);
}
String sneeuw = "wit";
if(sneeuw != "geel"){
      println("goed" + true);
}
int jantje = 6;
if(jantje >= 4){
      println("Je mag van tafel " + true);
}
String datum = "01-04";
String mijnVerjaardag = "01-04";
if(mijnVerjaardag == datum){
      println("je bent jarig " + true);
}
double mijnLengte = 1.60;
if(mijnLengte <=1.60){
      println("je mag naar de Wc gratis "+ true);
}
int mijnMondGehouden = 15;
if(mijnMondGehouden > 10){
      println(":D " + true);
}
float cijfer = 0;
float cijfer_2 = 0; 
float cijfer_3 = 8;

var eind_cijfer = (Math.round(((cijfer + cijfer_2 + cijfer_3)/3)* 100.0)/ 100.0);

if (eind_cijfer >=5.5){println("je hebt een voldoende");}
else{println("je hebt een onvoeldoende");}
var leeftijd = 1;

if (leeftijd <2){
println("je bent een Baby");
}
else if(leeftijd <2){
println("je bent een kleuter");
}
else if(leeftijd <12){
println("je bent een kind");
}
else if(leeftijd <20){
println("je bent een tiener");
}
else if(leeftijd <25){
println("je bent een adolescent");
}
else if(leeftijd >=25){
println("je bent een volwassene");
}
String Goku = "ok";
String Gojo = "ok";
String gon = "cool";
// strings amiright
if(gon == "cool" && Gojo == "ok" && Goku == "ok"){
println(gon + " ami right");
}
float quest_one = 0;
float quest_two = 0;
float quest_three = 0;
boolean quest_one_completion_status = false ;
if(quest_one == 0){quest_one_completion_status = true;}
boolean quest_two_completion_status = true ;
boolean quest_three_completion_status = true ;
// could not be bothered to change them all to true with a check for percentage
if (quest_one_completion_status && quest_two_completion_status && quest_three_completion_status == true){
  println("Congrats you won");
}










}
