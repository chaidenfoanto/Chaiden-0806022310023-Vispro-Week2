import 'dart:io';
import 'Bank.dart';

void main() {
  SavingsAccount? savings;

  while (true) {
    stdout.write(
        '\nPilih Menu:\n1. Buat Akun Tabungan\n2. Deposit\n3. Tarik Uang\n4. Cek Saldo\n5. Terapkan Bunga\n6. Exit\nPilih [1-6] : ');
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        stdout.write('Masukkan saldo awal akun tabungan: ');
        double? saldoTabungan = double.tryParse(stdin.readLineSync()!);
        if (saldoTabungan != null) {
          savings = SavingsAccount(saldoTabungan);
          print('Akun tabungan berhasil dibuat dengan saldo Rp ${saldoTabungan} dan bunga 1%.');
        } else {
          stdout.write('=== Input tidak valid. ===');
        }
        break;

      case 2:
        if (savings != null) {
          savings.deposit();
        } else {
          print('Anda belum memiliki akun tabungan.');
        }
        break;

      case 3:
        if (savings != null) {
          savings.withdraw();
        } else {
          print('Anda belum memiliki akun tabungan.');
        }
        break;

      case 4:
        if (savings != null) {
          savings.checkBalance();
        } else {
          print('Anda belum memiliki akun tabungan.');
        }
        break;

      case 5:
        if (savings != null) {
          savings.applyInterest();
        } else {
          print('Anda belum memiliki akun tabungan.');
        }
        break;

      case 6:
        print('Terima kasih!');
        return;

      default:
        stdout.write('=== Pilihan tidak valid. ===');
        break;
    }
  }
}

