import 'dart:async';

import './model.dart';

abstract class StudentRepsitory {
  Future<void> getAllStudents();
  Stream<List<Student>> get students;
}
