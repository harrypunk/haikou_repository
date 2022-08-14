import 'dart:async';

import './model.dart';

abstract class StudentRepsitory {
  void getAllStudents();
  Stream<List<Student>> get students;
}
