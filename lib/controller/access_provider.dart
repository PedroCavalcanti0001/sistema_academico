import 'package:flutter/material.dart';
import 'package:sistema_academico/model/person.dart';

class AccessProvider extends ChangeNotifier {
  Person _loggedPerson;

  Person get loggedPerson => _loggedPerson;

  set loggedPerson(Person value) {
    _loggedPerson = value;
  }
}
