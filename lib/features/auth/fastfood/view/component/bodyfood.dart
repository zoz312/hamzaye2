import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/fastfood/controller/cubit/fast_cubit.dart';

class BodyFast extends StatelessWidget {
  BodyFast({super.key, required this.controller});
  FastCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FastCubit>.value(
      value: controller,
      child: BlocBuilder<FastCubit, FastState>(
        builder: (context, state) {
          return ListView(
           
            children: List.generate(controller.data.length, (index) {
             return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).cardColor,
                ),
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.only(right: 30),

               child: Row (
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
                        Text(controller.data[index].name,style: TextStyle(color: Colors.white,fontSize: 22),),
                        Text(controller.data[index].descripction,style: TextStyle(color: Colors.white,fontSize: 15)) 
                      ],),
                 
                      Padding(
                        padding: const EdgeInsets.only(left:13.0),
                        child: Column(
                          children: [
                            Text(controller.data[index].price,style: TextStyle(color: Colors.white,fontSize: 20),),
                           IconButton(
                            onPressed: () {
                              controller.init(controller.data[index].name,
                                  controller.data[index].descripction, 100);
                            },
                            icon: Icon(CupertinoIcons.cart),color: Colors.white,)
                          ],
                        ),
                      ) 
                ],),
             );
            }),
          );
        },
      ),
    );
  }
}