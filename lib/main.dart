import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/core/cubit/pernet_cubit.dart';
import 'package:hamzawyapp/core/theme.dart';
//import 'package:hamzawyapp/features/auth/ForgetPasswod/view/page/forget.dart';
import 'package:hamzawyapp/features/auth/OnBording/view/page/OnBording.dart';
import 'package:hamzawyapp/features/auth/dashboard/view/page/Dashboard.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/page/NewPassword.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/page/CreateAccount.dart';
import 'package:hamzawyapp/features/auth/drinks/view/page/pagedrinks.dart';
import 'package:hamzawyapp/features/auth/fastfood/view/page/pagefast.dart';
import 'package:hamzawyapp/features/auth/italinfood/view/page/pageitalin.dart';
import 'package:hamzawyapp/features/auth/satting/view/page/satting.dart';

import 'package:hamzawyapp/features/auth/verification/view/page/verification.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'features/auth/ForgetPasswod/view/page/forget.dart';
import 'features/auth/arabicfood/view/page/pagearabic.dart';
import 'features/auth/login/view/page/LoginPage.dart';
import 'features/auth/mainapp/view/page/mainapp_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences sharedpreferences = await SharedPreferences.getInstance();
  bool onbording = sharedpreferences.getBool('onbording') ?? false;

  runApp(materialapp());
}

class materialapp extends StatelessWidget {
  const materialapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PernetCubit>(
      create: (context) => PernetCubit(),
      child: BlocBuilder<PernetCubit, PernetState>(
        builder: (context, state) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: mytheme.insatance.light,
              darkTheme: mytheme.insatance.dark,
               themeMode: PernetCubit.instance.themeMode,
              builder: DevicePreview.appBuilder,
              // useInheritedMediaQuery: true,
              onGenerateRoute: Myroute.onGenerateRoute,
              onGenerateInitialRoutes: (_) => Myroute.initr);
        },
      ),
    );
  }
}

class Myroute {
  static List<Route> initr = [
    MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const OnBording()),
    MaterialPageRoute<dynamic>(
      builder: (BuildContext context) => const CreateAccount(),
    )
  ];

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'create':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const CreateAccount());
      case 'login':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => Login());
      case 'newpass':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => NewPassword());
      case 'ver':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => verification_page());
      case 'forget':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => forget());
      case 'mp':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => MainappPage());
      case 'itailn':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => itailnfood());
      case 'abric':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => ArabicFood());
      case 'drink':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => Drinks());
      case 'fast':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => FastFood());
      case 'ord':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => Dashboard());
      case 'se':
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => Settings());
      default:
        return MaterialPageRoute<dynamic>(
            builder: (BuildContext context) => const OnBording());
    }
  }
}
