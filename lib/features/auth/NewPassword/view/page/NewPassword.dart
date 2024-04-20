import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/NewPassword/controller/cubit/newpass_cubit.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/bodynewpass.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/buttonnewpass.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/text1.dart';
import 'package:hamzawyapp/features/auth/NewPassword/view/component/text2.dart';


import '../../../../../core/TextFormFieldPassword.dart';
import '../../../../../core/image1.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewpassCubit(),
      child: BlocBuilder<NewpassCubit, NewpassState>(
        builder: (context, state) {
          final NewpassCubit controller = context.read<NewpassCubit>();
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Forget PassWord ?",
                  style: TextStyle(color: Color(0xffFFF2BC)),
                ),
                backgroundColor: Color(0xffD84012),
              ),
              backgroundColor: Color(0xffFFF2BC),
              body: bodynewpass(contoller: controller));
        },
      ),
    );
  }
}
