import 'package:flutter/material.dart';
import 'package:katmanli_deneme/models/student.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  List<Student> students = [
    Student.withId(1, "Ali", 90),
    Student.withId(2, "Veli", 30),
    Student.withId(3, "Ayşe", 45)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Öğrenci Bilgi Sistemi"),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
              itemCount: students.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(students[index].name),
                  subtitle: Text("Sınav notu:" +
                      students[index].grade.toString() +
                      "[" +
                      students[index].getStatus +
                      "]"),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://cdn2.iconfinder.com/data/icons/professions/512/student_graduate-512.png"),
                  ),
                  trailing: buildStatusIcon(students[index].grade),
                );
              }),
        )
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade > 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
