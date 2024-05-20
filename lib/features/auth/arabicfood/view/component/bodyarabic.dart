import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/arabicfood/controller/cubit/arabic_cubit.dart';

class BodyArabic extends StatelessWidget {
  BodyArabic({super.key, required this.controller});
  ArabicCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ArabicCubit>.value(
      value: controller,
      child: BlocBuilder<ArabicCubit, ArabicState>(
        builder: (context, state) {
          return ListView(
            children: List.generate(controller.data.length, (index) {
              return Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffD84012),
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 100,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(controller.data[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: null /* add child content here */,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          controller.data[index].name,
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                        Text(controller.data[index].descripction,
                            style: TextStyle(color: Colors.white, fontSize: 15))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text('\$',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                              Text(
                                '${controller.data[index].price}',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              controller.init(
                                  controller.data[index].name,
                                  controller.data[index].descripction,
                                  controller.data[index].price);
                            },
                            icon: Icon(CupertinoIcons.cart),
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
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
