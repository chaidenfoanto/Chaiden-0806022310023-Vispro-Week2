import 'dart:io';
import 'ATM.dart';
void main() {
  ATM? atm = ATM(0.0);

  while (true) {
    stdout.write(
        '\nPilih Menu:\n1. Deposit\n2. Tarik Uang\n3. Cek Saldo\n4. Exit\nChoose [1-4]: ');
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        atm.deposit();
        break;
      case 2:
        atm.withdraw();
        break;
      case 3:
        atm.checkBalance();
        break;
      case 4:
        print('Terima kasih telah menggunakan ATM.');
        return;
      default:
        print('=== Pilihan tidak valid. ===');
        break;
    }
  }
}
