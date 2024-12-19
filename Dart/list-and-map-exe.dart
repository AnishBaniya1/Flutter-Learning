void main(){
  Map<String,String> Family={
    'Father':'Ram',
    'Mother':'Sita',
    'Son':'Bibek'

  };
  print(Family);
  List<String>Keys=[];
  List<String>Values=[];
  for (var entry in Family.entries) {
    Keys.add(entry.key);   // Add the key to the keys list
    Values.add(entry.value); // Add the value to the values list
  }

  print("Keys: $Keys");
  print("Values: $Values");
}

