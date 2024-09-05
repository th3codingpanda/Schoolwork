
void setup(){
int a = 2;
int b = 10;
int totaal = a + b; 
println(a,b,totaal);
size(50,50);

int c = 1;
int d = 2;
int e = 40;
int f = 40;
rect(c,d,e,f);
println(15 % 2 , 31 % 3, 10%5 , 39%4);


int mijnEersteVariabele = 15;
println(mijnEersteVariabele);
mijnEersteVariabele *= 10;
println(mijnEersteVariabele);
mijnEersteVariabele /=10;
println(mijnEersteVariabele);
mijnEersteVariabele -=10;
println(mijnEersteVariabele);
println(Math.floor(2.5));
println(Math.round(2.4));
println(Math.sqrt(4));
float tijd_seconden = 1000000;
float tijd_minuten = tijd_seconden/60; 
float tijd_uren = tijd_minuten/60;
float tijd_dagen = tijd_uren/24;
float tijd_jaren = tijd_dagen/365;
println(tijd_seconden + " seconden", tijd_minuten + " minuten", tijd_uren + " uren", tijd_dagen + " dagen ", tijd_jaren + " jaren");

float cijfer = 8;
float cijfer_2 = 7; 
float cijfer_3 = 7;

println(Math.round(((cijfer + cijfer_2 + cijfer_3)/3)* 100.0)/ 100.0);

}
