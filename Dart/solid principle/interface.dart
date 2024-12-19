abstract class CanSwim {
  void swim();
}

abstract class CanFly {
  void fly();
}

class Bird implements CanFly {
  @override
  void fly() {
    // Fly like a bird
  }
}

class Fish implements CanSwim {
  @override
  void swim() {
    print('Fish swim');
  }
}
void main(){
  Fish fish=Fish();
  fish.swim();
}