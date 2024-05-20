import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/italinfood/controller/cubit/itailen_cubit.dart';
import 'package:hamzawyapp/features/auth/italinfood/view/component/bodyitalin.dart';

class itailnfood extends StatelessWidget {
  const itailnfood({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ItailenCubit>(
      create: (context) => ItailenCubit(),
      child: BlocBuilder<ItailenCubit, ItailenState>(
        builder: (context, state) {
          ItailenCubit controller = context.read<ItailenCubit>();
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Color(0xffD84012),
              title: Text('Italian Food'),
            ),
            backgroundColor: Color(0xffFFF2BC),
            body: bodyitalian(controller: controller,),
          );
        },
      ),
    );
  }
}
