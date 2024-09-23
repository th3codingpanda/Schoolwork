class Bank
{
  String Wachwoord = "wachtwoord";
  float Money = 100 ;
  String Name;
  boolean Loggedin = false;
  void Login(String A, String B)
    {
    if (B == Wachwoord)
      {
      Loggedin = true;
      println(Loggedin);
      }
      else
      {
      println("wrong password");
      }
    } 
    
    
    
  void withdraw(float Amount)
    {
     if (Money < Amount)
       {
       println("overexceeds leftover money");
       }
       else if(Loggedin == true)
     {
     Money-=Amount;
     println("withdrew " + Amount);
     }
     else
     {
     println("you are not logged in");
     }
    }
    
    
    
    void deposit(float Amount)
    {
      if(Loggedin == true)
    {
     Money+=Amount;
     println("deposited " + Amount);
    }
    }
    
    
     void balance()
    {
      if (Loggedin == true){
      println("your current balance is " + Money);
      }
     else
       {
       println("you are not logged in");
       }
    }
    
}

Bank jerry = new Bank();

void setup()
{
jerry.Login("jerry","wachtwoord");
jerry.balance();
jerry.withdraw(400);
jerry.withdraw(50);
jerry.deposit(1000);
}

void draw()
{

}
