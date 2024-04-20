import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamzawyapp/features/auth/OnBording/model/onbordingModel.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/page/CreateAccount.dart';
import 'package:hamzawyapp/main.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'obording_state.dart';

class ObordingCubit extends Cubit<ObordingState> {
  ObordingCubit() : super(ObordingInitial());
  PageController pagecontroller = PageController();
  void onChangeNext() {
    pagecontroller.nextPage(
        duration: Duration(seconds: 2), curve: Curves.linear);
  }
  void onChangeSkip(BuildContext context)async{
    SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
  bool onbording = await sharedpreferences.setBool('onbording',true);
   Navigator.push(context, MaterialPageRoute<void>(builder: (BuildContext context) => const CreateAccount()));
  }

  List data = [
    OnbordingModel(image: 'assets/Egyptianfood.jpg', title: 'Egyptian food'),
    OnbordingModel(image: 'assets/Italianfood.jpg', title: 'Italian food'),
    OnbordingModel(
      image: 'assets/Arabicfood.jpg',
      title: 'Arabic food',
    ),
    OnbordingModel(image: 'assets/Fastfood.jpg', title: 'Fast food'),
    OnbordingModel(image: 'assets/Drinks.jpg', title: 'Drinks'),
  ];
}
