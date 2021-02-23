abstract class Person{
  int _id;
  String _name;
  String _lastName;
  String _cpf;
  String _age;
  String _userName;

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  String get cpf => _cpf;

  set cpf(String value) {
    _cpf = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  set name(String value) {
    _name = value;
  }


  String get userName => _userName;

  set userName(String value) {
    _userName = value;
  }

  Person(this._id, this._name, this._lastName, this._cpf, this._age, this._userName);
}