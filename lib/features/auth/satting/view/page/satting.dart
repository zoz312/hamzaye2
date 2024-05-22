import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/core/cubit/pernet_cubit.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PernetCubit(),
      child: BlocBuilder<PernetCubit, PernetState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Settings'),
              backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  child: FilledButton(
                      onPressed: () {
                        PernetCubit.instance.changemode();
                        print(PernetCubit.instance.themeMode);
                      },
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.moon,
                            color: Theme.of(context).backgroundColor,
                          ),
                          Icon(CupertinoIcons.sun_max,
                              color: Theme.of(context).backgroundColor)
                        ],
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(
                              Theme.of(context).cardColor),
                          shape: MaterialStatePropertyAll(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50))))),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
