import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../controller/cubit/mainapp_cubit.dart';

class mainbody extends StatelessWidget {
  mainbody({super.key, required this.controller});
  MainappCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: controller,
      child: BlocBuilder<MainappCubit, MainappState>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(controller.data.length, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffD84012),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(controller.data[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: null /* add child content here */,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, controller.data[index].route);
                        },
                        child: Text(
                          controller.data[index].title,
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ))
                  ],
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
