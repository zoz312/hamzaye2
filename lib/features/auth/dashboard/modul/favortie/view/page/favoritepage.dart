import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/favortie/controller/cubit/favorite_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/favortie/view/compontent/bodyfavorite.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/controller/cubit/food_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/view/compontent/bodyfood.dart';

class favoritepage extends StatelessWidget {
  const favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FavoriteCubit>(
      create: (context) => FavoriteCubit(),
      child: BlocBuilder<FavoriteCubit, FavoriteState>(
        builder: (context, state) {
          final FavoriteCubit controller = context.read<FavoriteCubit>();
          return Scaffold(
            backgroundColor: Theme.of(context).backgroundColor,
            body:state is Foodloading?
            const Center(child:  CircularProgressIndicator(backgroundColor:  Color(0xffFFF2BC),color: Color.fromARGB(255, 221, 216, 215),),):
            state is Foodempty ?
            const Icon(CupertinoIcons.delete):
             ListView.builder(
              itemCount: controller.food.length,
              itemBuilder: (_, int index) => bodyfavo(foodModel: controller.food[index],controller: controller,)
            ),
          );
        },
      ),
    );
  }
}
