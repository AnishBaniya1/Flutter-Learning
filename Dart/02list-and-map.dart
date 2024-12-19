void main(){
  //list
  List<String> Name =['Ram', 'shyam'];
  print(Name);
  print(Name[1]);
  print(Name.length);
  //dynamic used when we dont know the data types of data

 for (var x in Name) {
  print(x);}

  for (var i = 0; i < Name.length; i++) {
    print(Name[i]);
  }

   Name.add('John');
   print(Name);
  Name.remove('Ram');
    print(Name);
    print('Length:${Name.length}');
    Name[1]='Bibek';
    print(Name);
    Name.removeLast();
    print(Name);

    //Map
    Map<String,int>Ages={
      'Age1':24,
      'Age2':30
      };

    print(Ages);
    print(Ages['Age2']);
    Ages['Age3']=12;
    print(Ages);
    Ages.remove('Age1');
    print(Ages);
    print(Ages.length);

    bool containsAges = Ages.containsKey('Age1');
    print(containsAges);
   
 }

