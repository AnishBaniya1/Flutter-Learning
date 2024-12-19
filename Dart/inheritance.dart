class Students{
String? name;
int? age;
int? grade;
void display(){
  print('Name:$name');
  print('Age:$age');
  print('Grade:$grade');
}
}
class Schools extends Students{
  String? Sname;
  String? Saddress;
  void schoolinfo(){
    print('School Name:$Sname');
    print('School Adress:$Saddress');

  } 
}

void main(){
  Schools school =Schools();
  school.name='John';
  school.age=15;
  school.grade=9;
  school.display();
  school.Sname='Global';
  school.Saddress='Ranipauwa';
  school.schoolinfo();
}