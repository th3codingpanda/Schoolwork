String X;
String Y = "Goku";
String Z = "solos";
String Q = "deku";
String U = "No diff";

String everything (String string1, String string2, String string3, String string4)
{
  String totaal = (string1+ " " + string2 + " " + string3 + " " + string4);
  return totaal;
}
void setup()
{
 X = everything(Y,Z,Q,U);
 println(X);
}

void draw()
{

}
