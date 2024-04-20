import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'forgetpassword_state.dart';

class ForgetpasswordCubit extends Cubit<ForgetpasswordState> {
  ForgetpasswordCubit() : super(ForgetpasswordInitial());
  TextEditingController phone = TextEditingController();
}
