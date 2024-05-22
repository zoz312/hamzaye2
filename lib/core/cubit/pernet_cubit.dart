import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

part 'pernet_state.dart';

class PernetCubit extends Cubit<PernetState> {
  static final PernetCubit instance = PernetCubit();
  ThemeMode themeMode = ThemeMode.dark;
  PernetCubit() : super(PernetInitial()) {
    loadlang();
    //changemode();
  }

  Map<String, dynamic> local = {};
  Future<void> loadlang() async {
    String s = await rootBundle.loadString('assets/lang/ar.json');
    local = json.decode(s);
    emit(PernetInitial());
  }
 
void changemode() {
    if ( themeMode == ThemeMode.dark) {
     themeMode = ThemeMode.light;
    } else {
     themeMode = ThemeMode.dark;
    }
    emit(PernetInitial());
  }
}
