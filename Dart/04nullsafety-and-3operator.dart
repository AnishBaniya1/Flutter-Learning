void main(){
  int age =10;
  int? salary;
  print(age);
  print(salary??0);

  //ternary operator
  print((age>18)?('Above 18'):('Below 18'));
  (age>18)?print('Voter'):print('Not a Voter');
}