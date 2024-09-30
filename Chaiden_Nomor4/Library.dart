import 'dart:io';
import 'book.dart';

class Library {
  List<Book> _books = [];

  void addBook() {
    print("="*45+"\n\t\tMasukkan Data Buku\n"+"="*45);
    stdout.write('Masukkan Judul Buku : ');
    String? title = stdin.readLineSync();
    
    stdout.write('Masukkan Nama Author : ');
    String? author = stdin.readLineSync();
    
    stdout.write('Masukkan Tahun Terbit : ');
    int? year = int.tryParse(stdin.readLineSync()!);

    if (title != null && author != null && year != null) {
      Book book = Book(title.capitalize(), author.capitalize(), year);
      _books.add(book);
      print('Buku berhasil ditambahkan.');
    } else {
      print('Input tidak valid.');
    }
  }

  void removeBook() {
    if (_books.isEmpty) {
      print('Tidak ada buku untuk dihapus.');
      return;
    }

    displayBooks();
    stdout.write('Masukkan nomor buku yang ingin dihapus: ');
    int? index = int.tryParse(stdin.readLineSync()!);

    if (index != null && index > 0 && index <= _books.length) {
      _books.removeAt(index - 1);
      print('Buku berhasil dihapus.');
    } else {
      print('Nomor buku tidak valid.');
    }
  }

  void displayBooks() {
    if (_books.isEmpty) {
      print('Tidak ada buku di perpustakaan.');
    } else {
      print('=' * 60);
      print('| No. |         Judul        |        Penulis       | Tahun |');
      print('=' * 60);
      for (int i = 0; i < _books.length; i++) {
        print(
            '| ${i + 1}.  | ${_books[i].title.padRight(20)} | ${_books[i].author.padRight(20)} | ${_books[i].year.toString().padRight(5)} |');
      }
      print('=' * 60);
    }
  }
}

extension StringExtension on String {
  String capitalize() {
    return this[0].toUpperCase() + this.substring(1).toLowerCase();
  }
}
