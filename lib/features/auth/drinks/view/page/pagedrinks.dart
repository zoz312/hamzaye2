import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/drinks/controller/cubit/drinks_cubit.dart';
import 'package:hamzawyapp/features/auth/drinks/view/component/bodydrinks.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DrinksCubit>(
      create: (context) => DrinksCubit(),
      child: BlocBuilder<DrinksCubit, DrinksState>(
        builder: (context, state) {
          DrinksCubit controller = context.read<DrinksCubit>();
          return Scaffold(
            appBar: AppBar(
                             backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            
              title: Text('Drinks'),
            ),
                      
              backgroundColor:  Theme.of(context).backgroundColor,
            body: BodyDrinks(controller: controller)
          );
        },
      ),
    );
  }
}