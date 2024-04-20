import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController phone = TextEditingController();
   TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
}
