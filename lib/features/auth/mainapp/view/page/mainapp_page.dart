import 'package:flutter/cupertino.dart';
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
                            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              
                actions: [
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'ord');
                      },
                      icon: Icon(CupertinoIcons.cart))
             ,    IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'se');
                      },
                      icon: Icon(CupertinoIcons.settings))
                ],
              ),
                          
              backgroundColor:  Theme.of(context).backgroundColor,
              body: mainbody(
                controller: controller,
              ));
        },
      ),
    );
  }
}
