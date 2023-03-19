import 'dart:io';

bool palindrome(){
    
    print("Enter String to Check if it is A Palindrome or Not: ");

    String? word = stdin.readLineSync();
    String? reverse = word!.split('').reversed.join('');

return true;

}

void main(){
    
    print(palindrome());
    
}
