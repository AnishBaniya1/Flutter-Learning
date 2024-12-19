import 'dart:io';
void main(){
  //Directory dir= Directory('Hello);//makes the folder

  for(int i=0;i<5;i++){
    File file = File('hello$i.txt');
  
  if(!file.existsSync()){
    file.createSync();
    file.writeAsString('Hello $i');
  }}
}