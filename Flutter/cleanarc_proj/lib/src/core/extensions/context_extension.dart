import 'package:flutter/material.dart';

extension BuildExtension on BuildContext{
  void push (dynamic route)=>Navigator.of(this).push(MaterialPageRoute(builder: (_)=> route));
}