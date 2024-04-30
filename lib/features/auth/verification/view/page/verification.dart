import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/verification/controller/cubit/verification_cubit.dart';

import '../component/body_verification.dart';

// ignore: camel_case_types
class verification_page extends StatelessWidget {
  const verification_page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerificationCubit>(
      create: (context) => VerificationCubit(),
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          VerificationCubit controller = context.read<VerificationCubit>();
          return Scaffold(
            body:  body_verification(controller: controller,),
            appBar: AppBar(
              title: const Text(
                'Vrification',
                style: TextStyle(color: Color(0xffFFF2BC)),
              ),
              backgroundColor: Color(0xffD84012),
              elevation: 0,
            ),
            backgroundColor: Color(0xffFFF2BC),
          );
        },
      ),
    );
  }
}
