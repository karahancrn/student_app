class Student {
  late int id;
  late String name;
  late int grade;
  late String status;

  Student(String name, int grade) {
    this.name = name;
    this.grade = grade;
  }

  Student.withId(int id, String name, int grade) {
    this.id = id;
    this.name = name;
    this.grade = grade;
  }

  String get getStatus {
    String message = "";
    if (this.grade >= 50) {
      message = "Geçti";
    } else if (this.grade > 40) {
      message = "Bütünlemeye kaldı ";
    } else {
      message = "Kaldı";
    }
    this.status = message;
    return this.status;
  }
}
