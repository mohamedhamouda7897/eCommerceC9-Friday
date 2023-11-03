import 'package:bloc/bloc.dart';
import 'package:e_commerce_c9_friday/core/utils/observer.dart';
import 'package:e_commerce_c9_friday/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}
