import 'dart:io';

class BankAccount {
  double _balance;

  BankAccount(this._balance);

  void deposit() {
    try {
      stdout.write('Masukkan jumlah deposit: ');
      double? amount = double.tryParse(stdin.readLineSync()!);
      if (amount != null && amount >= 50000) {
        _balance += amount;
        print('Deposit berhasil : Rp ${amount}');
      } else {
        print('Jumlah deposit harus minimal Rp 50.000.');
      }
    } catch (e) {
      print('Input tidak valid.');
    }
  }

  void withdraw() {
    try {
      stdout.write('Masukkan jumlah yang ingin ditarik: ');
      double? amount = double.tryParse(stdin.readLineSync()!);
      if (amount != null && amount >= 50000 && amount <= _balance) {
        _balance -= amount;
        print('Penarikan uang berhasil : Rp ${amount}');
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
    print('Saldo saat ini : Rp ${_balance}');
  }
}

class SavingsAccount extends BankAccount {
  double interestRate = 1.0; // Interest rate tetap 1%

  SavingsAccount(double initialBalance) : super(initialBalance);

  void applyInterest() {
    double interest = (_balance * interestRate) / 100;
    _balance += interest;
    print('Bunga sebesar ${interestRate}% telah diterapkan, saldo bertambah Rp ${interest}');
  }
}