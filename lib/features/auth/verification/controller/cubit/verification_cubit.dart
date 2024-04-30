import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(VerificationInitial());
  TextEditingController pin = TextEditingController();
  final String vaild = '2222';
  void ontapconf() {
    if (pin.text == vaild) {
      print("vaild");
    } else {
      print('invaild');
    }
  }
}
