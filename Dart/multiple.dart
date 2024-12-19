void main(){
  int x=1;
  int sum=0;
  while(x<1000){
    if(x%3==0 || x%5==0){
      sum+=x;
    }
    x++;
  }
  print(sum);
}