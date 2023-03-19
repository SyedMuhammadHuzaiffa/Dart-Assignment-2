import 'dart:io';

class Course{

  late String _name;

  late String _code;

  late String _instructor;

  late int _credit;

  late int _cost;

  set setName(String name){

    _name = name;

  }

  set setCode(String code){

    _code = code;

  }

  set setInstructor(String instructor){

    _instructor = instructor;

  }

  set setCredit(int credit){

    _credit = credit;

  }

  set setCost(int cost){

    _cost = cost;

  }

  get getName{

    return _name;

  }

  get getCode{

    return _code;

  }

  get getInstructor{

    return _instructor;

  }

  get getCredit{

    return _credit;

  }

  get getCost{

    return _cost;

  }

  Course(String name , String code , String instructor , int credit , int cost){

    setName = name;

    setCode = code;

    setInstructor = instructor;

    setCredit = credit;

    setCost = cost;

  }

  int calculateCost(){

    int finalCost = getCredit * getCost;

    return finalCost;

  }

  void printData(){

    print("Name: $getName");

    print("Code: $getCode");

    print("Instructor: $getInstructor");

    print("Credit Hours: $getCredit");

    print("Cost per Credit Hour: $getCost");

    int finalCost = calculateCost();

    print("Final Cost: $finalCost");

  }

}

void main(){

  print("Enter Name: ");

  String? name = stdin.readLineSync();

  print("Enter Code: ");

  String? code = stdin.readLineSync();

  print("Enter Instructor: ");

  String? instructor = stdin.readLineSync();

  print("Enter Credit Hours: ");

  int? credit = int.parse(stdin.readLineSync()!);

  print("Enter Cost: ");

  int? cost = int.parse(stdin.readLineSync()!);

  Course course = new Course(name!, code!, instructor!, credit, cost);

  course.printData();

}
