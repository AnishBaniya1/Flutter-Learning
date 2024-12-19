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
void main(){
  Cars car1 =Cars('BMW',99999.99,'red');
  Cars car2=Cars('Creta', 8888.9999, 'white');
  car1.display();
  car2.display();

}