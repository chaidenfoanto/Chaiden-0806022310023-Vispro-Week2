class Animal {
  void sound() {}

  void eat() {}
}

class Dog extends Animal {
  @override
  void sound() {
    print('Suara anjing : Woof Woof Auuuf');
  }

  @override
  void eat() {
    print('Anjing lagi makan.');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Suara kucing : Meow Meow Rawrr');
  }

  @override
  void eat() {
    print('Kucing lagi makan.');
  }
}