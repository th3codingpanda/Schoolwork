String[] tekst = {"H", "o", "i", " ", "i", "k", " ", "b", "e", "n", " ", "P", "i", "e", "t", " ", "i", "k", "."};
int state = 0;
void setup() {

  for (int i = 0; i < tekst.length; i++ ) {
    switch(state) {
    case 0:
      if (tekst[i] != "I" && tekst[i] != "i") {
        state = 3;
      } else {
        state = 1;
        println("exit state 0");
      }
      break;
    case 1:
      if (tekst[i] !="K" && tekst[i] != "k") {
        state = 3;
      } else {
        state = 2;
        println("exit state 1");
      }
      break;
    case 2:
      if (tekst[i] != "," && tekst[i] != "." && tekst[i] != " ") {
        state = 3;
      } else {
        println("er staat ik");
        state = 3;
      }
      break;
    case 3:
      if (tekst[i] == " " || tekst[i] == "," || tekst[i] == ".")
      {
        state = 0;
        println("exit state 3");
      }
    }
  }
}
