import './random_cn.dart';
import './student_repository.dart';
import './model.dart';

class MockDataRepository implements StudentRepsitory {
  final NameGenerator _nameGen;
  final int len;
  MockDataRepository.random({required int seed, int? len})
      : _nameGen = NameGenerator.seed(seed),
        this.len = len ?? 32;

  @override
  Stream<List<Student>> get students => Stream.empty();

  @override
  void getAllStudents() {
  }
}