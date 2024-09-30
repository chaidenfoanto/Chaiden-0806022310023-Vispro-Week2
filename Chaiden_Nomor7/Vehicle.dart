class Vehicle {
  String name;
  int speed;

  Vehicle(this.name, this.speed);

  String speedCategory() {
    if (speed > 60) {
      return 'cepat';
    } else if (speed > 30) {
      return 'normal';
    } else {
      return 'lambat';
    }
  }

  void move() {}
}

class Car extends Vehicle {
  Car(String name, int speed) : super(name, speed);

  @override
  void move() {
    String category = speedCategory();
    print('Mobil $name bergerak dengan $category di jalan dengan kecepatan ${speed} km/jam.');
  }
}

class Bike extends Vehicle {
  Bike(String name, int speed) : super(name, speed);

  @override
  void move() {
    String category = speedCategory();
    print('Motor $name bergerak dengan $category di jalan dengan kecepatan ${speed} km/jam.');
  }
}
