import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/arabicfood/controller/cubit/arabic_cubit.dart';
import 'package:hamzawyapp/features/auth/arabicfood/view/component/bodyarabic.dart';

class ArabicFood extends StatelessWidget {
  const ArabicFood({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArabicCubit>(
      create: (context) => ArabicCubit(),
      child: BlocBuilder<ArabicCubit, ArabicState>(
        builder: (context, state) {
          ArabicCubit controller = context.read<ArabicCubit>();
          return Scaffold(
            appBar: AppBar(
               backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              
              title: Text('Arabic food'),
            ),
                     
              backgroundColor:  Theme.of(context).backgroundColor,
            body: BodyArabic(controller: controller,),
          );
        },
      ),
    );
  }
}