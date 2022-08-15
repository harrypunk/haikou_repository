import 'dart:async';

import './random_cn.dart';
import './student_repository.dart';
import './model.dart';

class MockDataRepository implements StudentRepsitory {
  final NameGenerator _studentNameGen;
  final NameGenerator _parentNameGen;
  final StreamController<List<Student>> _studentController;
  final int len;
  MockDataRepository.random({required int seed, int? len})
      : _studentNameGen = NameGenerator.seed(seed),
        _parentNameGen = NameGenerator.seed(seed + 1),
        _studentController = StreamController(),
        this.len = len ?? 32;

  @override
  Stream<List<Student>> get students async* {
    yield* _studentController.stream;
  }

  @override
  Future<void> getAllStudents() async {}
}

const List<School> _schools = [
  School.simple(32, "海口第一中学"),
  School.simple(33, "海南二十四中"),
  School.simple(34, "德慧外国语学校"),
];

const List<Grade> _grades = [
  Grade(32, "初一"),
  Grade(33, "初二"),
  Grade(34, "初三"),
  Grade(35, "高一"),
  Grade(36, "高二"),
  Grade(37, "高三"),
];
