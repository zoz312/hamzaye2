import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/view/compontent/bodyfood.dart';
import 'package:hamzawyapp/features/auth/fastfood/controller/cubit/fast_cubit.dart';
import 'package:hamzawyapp/features/auth/fastfood/view/component/bodyfood.dart';
import 'package:hamzawyapp/features/auth/italinfood/controller/cubit/itailen_cubit.dart';

class FastFood extends StatelessWidget {
  const FastFood({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FastCubit>(
      create: (context) => FastCubit(),
      child: BlocBuilder<FastCubit, FastState>(
        builder: (context, state) {
          FastCubit controller = context.read<FastCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffD84012),
              title: Text('Fast Food'),
            ),
            backgroundColor: Color(0xffFFF2BC),
            body: BodyFast(controller: controller),
          );
        },
      ),
    );
  }
}