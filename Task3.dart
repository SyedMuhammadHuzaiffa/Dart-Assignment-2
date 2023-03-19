import 'dart:io';

class Book{

  late String _title;

  late String _author;

  late String _publisher;

  late double _price;

  late double _discount;

  set setTitle(String title){

    _title = title;

  }

  set setAuthor(String author){

    _author = author;

  }

  set setPublisher(String publisher){

    _publisher = publisher;

  }

  set setPrice(double price){

    _price = price;

  }

  set setDiscount(double discount){

    _discount = discount;

  }

  get getTitle{

    return _title;

  }

  get getAuthor{

    return _author;

  }

  get getPublisher{

    return _publisher;

  }

  get getPrice{

    return _price;

  }

  get getDiscount{

    return _discount;

  }

  Book(String title , String author , String publisher , double price , double discount){

    setTitle = title;

    setAuthor = author;

    setPublisher = publisher;

    setPrice = price;

    setDiscount = discount;

  }

  void calculateDiscount(){

    double temp = getPrice * intToPercent();

    double finalPrice = getPrice - temp;

    print("Final Price: $finalPrice");

  }

  double intToPercent(){

    double discountPercent = getDiscount/100;

    return discountPercent;

  }

  void printData(){

    print("Title: $getTitle");

    print("Author: $getAuthor");

    print("Publisher: $getPublisher");

    print("Original Price: $getPrice");

    print("Discount: $getDiscount%");

    calculateDiscount();

  }

}

void main(){

  print("Enter Title: ");

  String? title = stdin.readLineSync();

  print("Enter Author: ");

  String? author = stdin.readLineSync();

  print("Enter Publisher: ");

  String? publisher = stdin.readLineSync();

  print("Enter Price: ");

  double? price = double.parse(stdin.readLineSync()!);

  print("Enter discount (Only Needed in percent without % symbol): ");

  double? discount = double.parse(stdin.readLineSync()!);

  Book book = new Book(title!, author!, publisher!, price, discount);

  book.printData();

}
