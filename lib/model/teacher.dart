import 'package:sistema_academico/model/person.dart';

class Teacher extends Person {
  /*
    Materias do professor
   */
  List<String> _subjects = List();

  List<String> get subjects => _subjects;

  set subjects(List<String> value) {
    _subjects = value;
  }

  Teacher(int id, String name, String lastName, String cpf, String age, String userName) : super(id, name, lastName, cpf, age, userName);

}
