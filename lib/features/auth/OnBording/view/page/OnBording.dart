import 'package:flutter/material.dart';
import 'package:hamzawyapp/features/auth/OnBording/view/component/buttononbording.dart';
import 'package:hamzawyapp/features/auth/OnBording/view/component/onbordingbody.dart';

import '../../controller/cubit/obording_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<ObordingCubit>(
          create: (context) => ObordingCubit(),
          child: BlocBuilder<ObordingCubit, ObordingState>(
              builder: (context, state) {
            ObordingCubit controller = context.read<ObordingCubit>();
            return Scaffold(
              backgroundColor: Color(0xffFFF2BC),
              body: bodyOnbording(controller: controller,),
              bottomNavigationBar: ButtonOnbording(controller: controller,),
            );
          })),
    );
  }
}
