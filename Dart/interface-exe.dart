abstract class Person{
  eat();
  drive();
  sleep();
  read();
}
class Ram implements Person{
  @override
  drive() {
    
  }

  @override
  eat() {
  
  }

  @override
  read() {
    
   }

  @override
  sleep() {
    
   }

   fly(){
print('Ram fly');
   }
}
class Shyam implements Person{
  @override
  drive() {
   
    
  }

  @override
  eat() {
 
    
  }

  @override
  read() {
   
    
  }

  @override
  sleep() {
  
  }


}
void main(){
  Ram ram=Ram();
  ram.fly();
}