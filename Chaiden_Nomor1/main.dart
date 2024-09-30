import 'dart:io';
import 'Student.dart';
void main() {
  List<Student> listStudent = [];
  bool ulang = true;

  while (ulang) {
    print("="*45+"\n\t\tMasukkan Data Mahasiswa\n"+"="*45);

    stdout.write('Masukkan Nama: ');
    String? name = stdin.readLineSync();
    
    stdout.write('Masukkan Student ID: ');
    String? studentID = stdin.readLineSync();
    
    stdout.write('Masukkan Grade: ');
    int? grade = int.tryParse(stdin.readLineSync()!);

    print("="*45);
    
    if (name != null && studentID != null && grade != null) {
      Student student = Student(name.capitalize(), studentID, grade);
      student.checkGrade();
      listStudent.add(student);
    }

    stdout.write('Masih mau input data lagi? (y/t) : ');
    String? input = stdin.readLineSync();
    if (input == "t") {
      ulang = false;
    }
  }
  
  print("\n");
  if (listStudent.isNotEmpty) {
    listStudent[0].displayInfo(listStudent);
  }
}

extension StringExtension on String {
  String capitalize() {
    return this[0].toUpperCase() + this.substring(1).toLowerCase();
  }
}
