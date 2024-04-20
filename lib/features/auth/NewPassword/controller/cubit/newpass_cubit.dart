import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'newpass_state.dart';

class NewpassCubit extends Cubit<NewpassState> {
  NewpassCubit() : super(NewpassInitial());
  TextEditingController password = TextEditingController();
}
