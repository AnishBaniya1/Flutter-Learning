abstract class Shape{
  void draw();
}
class Circle implements Shape{
  @override
  void draw() {
    print('Drawing Circle');
  }

}
class Square implements Shape{
  @override
  void draw() {
    print('Drawing a Square');
  }
}
void main(){
  Circle circle=Circle();
  Square square=Square();
  circle.draw();
  square.draw();
}