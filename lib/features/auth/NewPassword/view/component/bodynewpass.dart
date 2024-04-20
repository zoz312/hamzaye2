import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/NewPassword/controller/cubit/newpass_cubit.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/TextFormFieldPassword.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/text1.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/text2.dart';

import '../../../../../core/image1.dart';

import 'buttonnewpass.dart';

class bodynewpass extends StatelessWidget {
   bodynewpass({super.key ,required this.contoller});
  NewpassCubit contoller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewpassCubit>.value(
    value: contoller,
      child: BlocBuilder<NewpassCubit, NewpassState>(
        builder: (context, state) {
          return ListView(
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 20),
            children: [
              text2(),
              text1(),
              image1(),
              TextFormFieldPassword3(
                text: "New Password",
                controller: contoller,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormFieldPassword3(
                text: "Re-Type Password",
                controller: contoller,
              ),
              SizedBox(
                height: 20,
              ),
              ButtonNewPass()
            ],
          );
        },
      ),
    );
  }
}
