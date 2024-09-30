import 'dart:io';
import 'Animal.dart';

void main() {
  while (true) {
    stdout.write(
        '\nPilih Hewan:\n1. Anjing\n2. Kucing\n3. Exit\nPilih [1-3]: ');
    int? choice = int.tryParse(stdin.readLineSync()!);

    Animal animal;

    switch (choice) {
      case 1:
        animal = Dog();
        break;
      case 2:
        animal = Cat();
        break;
      case 3:
        print('Terima kasih!');
        return;
      default:
        print('=== Pilihan tidak valid. ===');
        continue;
    }

    animal.sound();
    animal.eat();
  }
}
