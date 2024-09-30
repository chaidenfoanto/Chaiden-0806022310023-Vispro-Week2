
import 'dart:io';
void main(){
  bool ulang = true;


  while(ulang){
    print("="*40+"\n\tTemperature Conversion\n"+"="*40);
    stdout.write("Masukkan Suhu Celcius : ");
    int? celsius = int.tryParse(stdin.readLineSync()!);

    if (celsius == null) {
      print("Input tidak valid. Masukkan angka yang benar.");
      continue;
    }

    stdout.write("\nPilih Menu :\n1. to Reaumur\n2. to Fahrenheit\n3. to Kelvin\n4. Exit\nChoose [1-4] : ");
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        double reaumur = celsius * 4 / 5;
        print("\n"+'=> Hasil konversi ke Reaumur: ${reaumur.toStringAsFixed(2)} Re');
        break;
      case 2:
        double fahrenheit = (celsius * 9 / 5) + 32;
        print("\n"+'=> Hasil konversi ke Fahrenheit: ${fahrenheit.toStringAsFixed(2)} F');
        break;
      case 3:
        double kelvin = celsius + 273.15;
        print("\n"+'=> Hasil konversi ke Kelvin: ${kelvin.toStringAsFixed(2)} K');
        break;
      case 4:
        print("Thank you dek bek bek bek!");
        ulang = false;
        break;
      default:
        print("Pilihan tidak valid. Pilih angka 1-4 saja!");
    }

    if (ulang) {
      stdout.write("\nWanna repeat? (y/t): ");
      String? lagi = stdin.readLineSync();
      if (lagi?.toLowerCase() != 'y') {
        print("Thank you dek bek bek bek!");
        ulang = false;
      }
    }
  }
}