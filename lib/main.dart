import 'package:flutter/material.dart';
//import 'package:hamzawyapp/features/auth/ForgetPasswod/view/page/forget.dart';
import 'package:hamzawyapp/features/auth/OnBording/view/page/OnBording.dart';
//import 'package:hamzawyapp/features/auth/login/view/page/LoginPage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:hamzawyapp/core/validation.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/page/NewPassword.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/page/CreateAccount.dart';
import 'package:hamzawyapp/features/auth/verification/view/page/verification.dart';

import 'features/auth/ForgetPasswod/view/page/forget.dart';
import 'features/auth/login/view/page/LoginPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
  bool onbording = sharedpreferences.getBool('onbording') ?? false;
  MaterialApp materialapp = MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onbording ?  Login() :const OnBording(),
      onGenerateRoute:Myroute.onGenerateRoute ,
      onGenerateInitialRoutes:(_)=> Myroute.initr
       );
  runApp(materialapp);
}







class Myroute {
 static List<Route> initr=[
 MaterialPageRoute<dynamic>(builder: (BuildContext context) => const OnBording()),
 MaterialPageRoute<dynamic>(builder: (BuildContext context) => const CreateAccount())

  ];

 static Route<dynamic>  onGenerateRoute (RouteSettings settings){
    switch(settings.name){
      case 'create': return  MaterialPageRoute<dynamic>(builder: (BuildContext context) => const CreateAccount());
      case 'login': return    MaterialPageRoute<dynamic>(builder: (BuildContext context) =>  Login());
      case 'newpass': return    MaterialPageRoute<dynamic>(builder: (BuildContext context) => NewPassword());
       case 'ver': return   MaterialPageRoute<dynamic>(builder: (BuildContext context) => verification_page());
  case'forget':  return  MaterialPageRoute<dynamic>(builder: (BuildContext context) =>  forget());
  default:  return  MaterialPageRoute<dynamic>(builder: (BuildContext context) => const OnBording());
  
  
    }
 
}
}
