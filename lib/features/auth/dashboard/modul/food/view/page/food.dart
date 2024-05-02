import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/controller/cubit/food_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/view/compontent/bodyfood.dart';

class foodPage extends StatelessWidget {
  const foodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FoodCubit>(
      create: (context) => FoodCubit(),
      child: BlocBuilder<FoodCubit, FoodState>(
        builder: (context, state) {
          final FoodCubit controller = context.read<FoodCubit>();
          return Scaffold(
            backgroundColor: Color(0xffD84012),
            body:state is Foodloading?
            const Center(child:  CircularProgressIndicator(backgroundColor:  Color(0xffFFF2BC),color: Color.fromARGB(255, 221, 216, 215),),):
            state is Foodempty ?
            const Icon(CupertinoIcons.delete):
             ListView.builder(
              itemCount: controller.food.length,
              itemBuilder: (_, int index) => bodyfood(foodModel: controller.food[index],controller: controller,)
            ),
          );
        },
      ),
    );
  }
}
