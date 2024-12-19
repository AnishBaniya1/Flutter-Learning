void main(){
String biodata=bio(name: 'Anish',
age: 20,
Gender: 'M',
Salary: 9980.99);
print(biodata);
}
 String bio({
  required String name,
  required int age,
  String Gender = 'N/A',
  required double Salary
}){
  return 'Name:$name,Age=$age,Gender=$Gender,Salary=$Salary';
}
