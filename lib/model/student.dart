import 'package:sistema_academico/helpers/enums/participated.dart';
import 'package:sistema_academico/model/person.dart';

class Student extends Person {
  //notas
  Map<String, int> _grades = Map();

  /*
  Lista de faltas
  a chave é um timestamp e o valor é um enum que diz sim ou não
   */
  Map<int, Participated> _attendances = Map();

  Student(int id, String name, String lastName, String cpf, String age, String userName) : super(id, name, lastName, cpf, age, userName);

  Map<String, int> get grades => _grades;

  set grades(Map<String, int> value) {
    _grades = value;
  }

  void addGrade(String subject, int grade) {
    _grades[subject] = grade;
  }

}
