extension StringExtension on String {
  int toint() => int.parse(this);

  addRam() => this + 'RAM';
}

extension IntExtension on int {
  String asString() => this.toString();
}

void main() {
  String age = '24';
  int a = age.toint();
  print(a);
  String c = 90.asString();
  print(c);
  String name = 'Hello Wolrd'.addRam();
  print(name);
}
