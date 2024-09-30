import 'dart:io';
import 'Library.dart';





void main() {
  Library library = Library();

  while (true) {
    stdout.write(
        '\nPilih Menu:\n1. Add Book\n2. Delete Book\n3. View Book\n4. Exit\nChoose [1-4] : ');
    int? choice = int.tryParse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        library.addBook();
        break;
      case 2:
        library.removeBook();
        break;
      case 3:
        library.displayBooks();
        break;
      case 4:
        print('Terima kasih telah menggunakan sistem perpustakaan.');
        return;
      default:
        print('=== Pilihan tidak valid. ===');
        break;
    }
  }
}


