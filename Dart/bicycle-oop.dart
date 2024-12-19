class Bicycle{
  String? name;
  int? gearnum;
  int? currentspeed;

  void changegear(int newspeed){
    currentspeed =newspeed;
  }
  void display(){
    print('Name:$name');
    print('gearnum:$gearnum');
    print('Speed:$currentspeed');
  }
}
void main(){
  Bicycle bc=Bicycle();
  bc.name='Giant';
  bc.gearnum=6;
  bc.currentspeed=0;
  bc.changegear(20);
  bc.display();
}