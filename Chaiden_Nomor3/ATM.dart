import 'dart:io';

class ATM {
  double _balance;

  ATM(this._balance);

  void deposit() {
    try {
      stdout.write('Masukkan jumlah deposit: ');
      double? amount = double.tryParse(stdin.readLineSync()!);
      if (amount != null && amount >= 50000) { // Minimal deposit Rp 50.000
        _balance += amount;
        print('Deposit berhasil : Rp $amount');
      } else {
        print('Jumlah deposit harus minimal Rp 50.000.');
      }
    } catch (e) {
      print('Input tidak valid.');
    }
  }

  void withdraw() {
    try {
      stdout.write('Masukkan jumlah yang ingin ditarik : ');
      double? amount = double.tryParse(stdin.readLineSync()!);
      if (amount != null && amount >= 50000 && amount <= _balance) { // Minimal withdraw Rp 50.000
        _balance -= amount;
        print('Penarikan berhasil: Rp $amount');
      } else if (amount != null && amount > _balance) {
        print('Saldo tidak cukup.');
      } else {
        print('Jumlah penarikan harus minimal Rp 50.000.');
      }
    } catch (e) {
      print('Input tidak valid.');
    }
  }

  void checkBalance() {
    print('Saldo saat ini : Rp $_balance');
  }
}
