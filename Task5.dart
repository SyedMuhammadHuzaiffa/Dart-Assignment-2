
class Bank{

  List<BankAccount> accounts = [];

  void removeAccount(BankAccount account){
    
    accounts.remove(account);
    
  }

  void addAccount(BankAccount account){

    accounts.add(account);



  }

  BankAccount highestBalance(){

    late BankAccount highestBalance;

    int temp = 0;

    for (BankAccount account in accounts){

      if (account.getBalance > temp){

        temp = account.getBalance;

        highestBalance = account;

      }

    }

    print(highestBalance.getName + " has the Highest Balance");

    return highestBalance;

  }

  void printData(){

    for (BankAccount account in accounts){

      account.printData();

    }

  }

}

class BankAccount {
  
  late String _name;

  late int _accountNumber;

  late int _balance;

  set setName(String name){
    
    _name = name;
    
  }
  
  set setAccountNumber(int accountNumber){
    
    _accountNumber = accountNumber;
    
  }
  
  set setBalance(int balance){
    
    _balance = balance;
    
  }
  
  get getName{
    
    return _name;
    
  }
  
  get getAccountNumber{
    
    return _accountNumber;
    
  }
  
  get getBalance{
    
    return _balance;
    
  }

  BankAccount(String name , int accountNumber , int balance){

    setName = name;

    setAccountNumber = accountNumber;

    setBalance = balance;

  }

  void printData(){

    print("Name: $getName");

    print("Account Number: $getAccountNumber");

    print("Balance: $getBalance");

  }
  
}

void main(){

Bank bank = new Bank();

bank.addAccount(BankAccount("Chris" , 001 , 50000));

bank.addAccount(BankAccount("James" , 005 , 75000));

bank.addAccount(BankAccount("Jennifer" , 006 , 5000));

bank.printData();

bank.highestBalance();

bank.removeAccount(bank.highestBalance());

bank.printData();

}
