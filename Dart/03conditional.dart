//import 'dart:io';
void main(){
  //if statement
//   int x=6;
//   if(x>6&&x<10){
//     print('Number is out of bound but within 10');
//   }else if(x==6){
//     print('Number is within bound');
//   }else if(x>0&&x<6){
//     print('Number is within lower bound');
//   }
//   else{
// print('Number is 0');
//   }

//switch
// int x =6;
// int y=5;
// print("""
// Menu
// 1.Add
// 2.Sub
// 3.Div
// 4.Mul
// """);
// print('Choose your Option:'); 
// String? input = stdin.readLineSync();
// switch(input){
//   case '1':
//   int sum=x+y;
//   print('Sum is $sum');
//   break;
//   case '2':
//   int sub = x-y;
//   print('Sub is $sub');
//   break;
//   case '3':
//   double div=x/y;
//   print('Div is $div');
//   break;
//   case '4':
//   int mul =x*y;
//   print('Mul is $mul');
//   break;
//   default:
//   print('Please provide a number');

// }

//for loop
int x=3;
int y=6;
// for (int i=0;i<=x;i++) {
//  print(i); 
// }
//while loop
while(x<y){
  print(x);
  x++;
}
//do while loop
do {
  print(x);
  x++;
} while (x<y);
}