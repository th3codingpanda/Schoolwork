void setup(){

String a = "Wat ";
String b = "Is ";
String c = "Dat ";
String d = "Lang!";
String e = " " + a + b + c + d;
var Number = 1;
println(e);
println(Number + " cm" + e);
float Cm = 170;
float KG = 100;
float height_meters = Cm / 100;
float Height_Meters_squared = sq(height_meters);
println(Math.round(KG/Height_Meters_squared));
println("Jouw BMI is " + (Math.round((KG/Height_Meters_squared)*10.0)/10.0));

}
