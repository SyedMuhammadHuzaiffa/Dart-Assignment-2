import 'dart:io';

class Circle{
    
    double _radius = 0;
    final pi = 3.142;
    
   set setRadius(double radius){
    _radius = radius;
}

double get getRadius{
    
    return _radius;
    
}

void circumference(){
    
    double circumference = 2 * getRadius * pi ;

  print('The Cirumference of Circle is $circumference');
}
}

void main(){
    
    Circle circle = new Circle();

  print("Enter Radius of Circle: ");

  double radius = double.parse(stdin.readLineSync());
    
    circle.setRadius = radius;
    
    circle.circumference();
    
}
