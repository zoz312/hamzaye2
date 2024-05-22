import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/core/TextFormFieldEmail.dart';
import 'package:hamzawyapp/core/TextFormFieldPassword.dart';
import 'package:hamzawyapp/core/TextFormFieldPhone.dart';
import 'package:hamzawyapp/core/cubit/pernet_cubit.dart';
import 'package:hamzawyapp/features/auth/createAccount/controller/cubit/create_account_cubit.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/component/bodyCreateAccount.dart';



import '../../../../../core/Emailvaild.dart';
import '../../../../../core/MyVaidPass.dart';
import '../../../../../core/NameVaild.dart';
import '../../../../../core/PhoneVild.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAccountCubit>(
      create: (context) => CreateAccountCubit(),
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          final CreateAccountCubit controller= context.read<CreateAccountCubit>();
          return Scaffold(
              appBar: AppBar(
                actions: [
                  FilledButton(
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
                ],
                title: Text(
                  PernetCubit.instance.local['create account']??'',
                  style:Theme.of(context).appBarTheme.titleTextStyle,
                ),
                backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
              ),
              backgroundColor:  Theme.of(context).backgroundColor,
              body: BodyCreateAccount(controller:controller,));
        },
      ),
    );
  }
}
