import 'dart:io';

class Student {
  String name;
  String studentID;
  int grade;
  String status = "";

  Student(this.name, this.studentID, this.grade);

  void displayInfo(List<Student> listStudent) {
    print("=" * 60);
    print('|No.|   Name   |    Student ID    | Grade |    Status     |');
    print("=" * 60);

    for (int i = 0; i < listStudent.length; i++) {
      print('|${i + 1}. | ${listStudent[i].name.padRight(8)} | ${listStudent[i].studentID.padRight(16)} | ${listStudent[i].grade.toString().padRight(5)} | ${listStudent[i].status.padRight(13)} |');
    }
    print("=" * 60);
    stdin.readLineSync();
  }

  void checkGrade() {
    status = grade >= 70 ? "PASSED" : "NOT PASSED";
  }
}
