import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../../controller/cubit/mainapp_cubit.dart';
import '../component/bodymain.dart';

class MainappPage extends StatelessWidget {
  const MainappPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainappCubit>(
      create: (context) => MainappCubit(),
      child: BlocBuilder<MainappCubit, MainappState>(
        builder: (context, state) {
          MainappCubit controller = context.read<MainappCubit>();
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text('hamzawy'),
                backgroundColor: Color(0xffD84012),
              ),
              backgroundColor: Color(0xffFFF2BC),
              body: mainbody(controller: controller,));
        },
      ),
    );
  }
}
