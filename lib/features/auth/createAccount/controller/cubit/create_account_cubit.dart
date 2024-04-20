import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'create_account_state.dart';

class CreateAccountCubit extends Cubit<CreateAccountState> {
  CreateAccountCubit() : super(CreateAccountInitial());
  TextEditingController name = TextEditingController();
   TextEditingController phone = TextEditingController();
    TextEditingController email = TextEditingController();
     TextEditingController password = TextEditingController();
}
