import 'dart:io';

class Student{

  late String _name;

  late int _age;

  late String _major;

  late double _GPA;

  set setName(String name){

    _name = name;

  }

  set setAge(int age){

    _age = age;

  }

  set setMajor(String major){

    _major = major;

  }

  set setGPA(double GPA){

    _GPA = GPA;

  }

  String get getName{

    return _name;

  }

  int get getAge{

    return _age;

  }

  String get getMajor{

    return _major;

  }

  double get getGPA{

    return _GPA;

  }

  Student(String name, int age , String major , double GPA){

    setName = name;

    setAge = age;

    setMajor = major;

    setGPA = GPA;
  }

  void calculateGrade() {

    if (getAge < 14){

      print("Grade: Secondary");

    }

    else if (getAge == 14){

      print("Grade: 9");

    }

    else if (getAge == 15){

      print("Grade: 10");

    }

    else if (getAge == 16){

      print("Grade: 11");

    }

    else if (getAge == 17){

      print("Grade: 12");

    }

    else{

      print("Grade: University");

    }

  }

  void printData(){

    print("Name: $getName");

    print("Age: $getAge");

    print("Major: $getMajor");

    print("GPA: $getGPA");

    calculateGrade();

  }

}

void main(){

  print("Enter Name: ");

  String? name = stdin.readLineSync();

  print("Enter Age: ");

  int? age = int.parse(stdin.readLineSync()!);

  print("Enter Major: ");

  String? major = stdin.readLineSync();

  print("Enter GPA: ");

  double? GPA = double.parse(stdin.readLineSync()!);

  Student student = new Student(name!, age, major!, GPA);

  student.printData();

}
