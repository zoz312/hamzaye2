import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/cubit/obording_cubit.dart';

class ButtonOnbording extends StatelessWidget {
  ButtonOnbording({super.key, required this.controller});
  ObordingCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ObordingCubit>.value(
        value: controller,
        child: BlocBuilder<ObordingCubit, ObordingState>(
            builder: (context, state) {
          ObordingCubit controller = context.read<ObordingCubit>();
          return SizedBox(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      controller.onChangeSkip(context);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(color: Color(0xffFFF2BC), fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffD84012)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))))),
                TextButton(
                    onPressed: controller.onChangeNext,
                    child: Text(
                      'Next',
                      style: TextStyle(color: Color(0xffFFF2BC), fontSize: 18),
                    ),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xffD84012)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))))
              ],
            ),
          );
        }));
  }
}
