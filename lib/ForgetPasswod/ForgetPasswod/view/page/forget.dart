import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ozoo/ForgetPasswod/ForgetPasswod/controller/cubit/forgetpassword_cubit.dart';
import 'package:flutter_ozoo/ForgetPasswod/ForgetPasswod/view/component/bodyForget.dart';


class forget extends StatelessWidget {
  forget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetpasswordCubit(),
      child: BlocBuilder<ForgetpasswordCubit, ForgetpasswordState>(
        builder: (context, state) {
          final ForgetpasswordCubit controller =
             context.read<ForgetpasswordCubit>();
          return Scaffold(
              appBar: AppBar(
                title: Text(
                  "Forget Password",
                  style: TextStyle(color: Colors.white),
                ),
                backgroundColor: Color(0xffD84012),
              ),
              body: bodyFoget(controller: controller,));
        },
      ),
    );
  }
}
