import 'dart:io';

class Cars{
  String? name;
  double? price;
  String?color;
  Cars(String? name, double? price, String? color){
    this.name=name;
    this.price=price;
    this.color=color;
  }
  void display(){
    print('Name:$name');
    print('Price:$price');
    print('Color:$color');
  }
  

}
Cars info(){
  print('Enter a Car Name:');
  String? name = stdin.readLineSync();
  print('Enter a  Car Price:');
  double? price = double.parse(stdin.readLineSync()!);
  print('Enter a Car Color:');
  String? color =stdin.readLineSync();
  Cars car=Cars(name, price, color);
  car.display();
  return Cars(name,price,color);
  }
void main(){
  // print('Enter a Car Name:');
  // String? name = stdin.readLineSync();
  // print('Enter a  Car Price:');
  // double? price = double.parse(stdin.readLineSync()!);
  // print('Enter a Car Color:');
  // String? color =stdin.readLineSync();
  //Cars car=Cars(name, price, color);
  // car.display();
  Cars car1=info();
  Cars car2=info();
  car1.display();
  car2.display();
}