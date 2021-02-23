abstract class Student {
  //notas
  Map<String, int> _grades;

  Map<String, int> get grades => _grades;

  set grades(Map<String, int> value) {
    _grades = value;
  }

  void addGrade(String subject, int grade) {
    _grades[subject] = grade;
  }

  Student(){
    this._grades = Map();
  }
}
