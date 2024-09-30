import 'dart:io';
import 'Vehicle.dart';

void main() {
  stdout.write('Mau naik Mobil atau Motor? [car/bike]: ');
  String? choice = stdin.readLineSync()?.toLowerCase();

  if (choice == 'car' || choice == 'bike') {
    stdout.write('Masukkan nama kendaraan : ');
    String? name = stdin.readLineSync();

    stdout.write('Masukkan kecepatan kendaraan mu [km/jam] : ');
    int? speed = int.tryParse(stdin.readLineSync()!);

    if (name != null && speed != null) {
      Vehicle vehicle;

      if (choice == 'car') {
        vehicle = Car(name, speed);
      } else {
        vehicle = Bike(name, speed);
      }

      vehicle.move();
    } else {
      print('Input tidak valid.');
    }
  } else {
    print('Pilihan tidak valid, cuman boleh pilih "car" atau "bike".');
  }
}
