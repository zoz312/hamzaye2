import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/cubit/obording_cubit.dart';

class bodyOnbording extends StatelessWidget {
   bodyOnbording({super.key,required this.controller});
  ObordingCubit controller;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(
        height: 30,
      ),
      Text(
        "Welcome To Hamzawy",
        style: TextStyle(fontSize: 30),
      ),
      Expanded(
        child: BlocProvider<ObordingCubit>.value(
        value: controller,
          child: BlocBuilder<ObordingCubit, ObordingState>(
            builder: (context, state) {
              ObordingCubit controller = context.read<ObordingCubit>();
              return PageView(
                controller: controller.pagecontroller,
                  children: List.generate(controller.data.length, (index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 300,
                        child: Image.asset(controller.data[index].image)),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      controller.data[index].title,
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                );
              }));
            },
          ),
        ),
      )
    ]);
  }
}
