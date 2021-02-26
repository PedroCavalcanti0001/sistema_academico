import 'package:flutter/material.dart';
import 'package:sistema_academico/helpers/enums/user_type.dart';

class RegisterProvider extends ChangeNotifier{
  UserType _userType;

  UserType get userType => _userType;

  set userType(UserType value) {
    _userType = value;
  }
}