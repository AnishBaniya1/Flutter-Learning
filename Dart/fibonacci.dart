void main(){
  int a=1;
  int b=2;
  int total=0;
  while(b<35){
    if(b % 2==0){
      total=total+b;
      }
      int next=a+b;
      a=b;
      b=next;
  }
    print(total);
}