import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/core/TextFormFieldEmail.dart';
import 'package:hamzawyapp/core/TextFormFieldPassword.dart';
import 'package:hamzawyapp/core/TextFormFieldPhone.dart';
import 'package:hamzawyapp/features/auth/createAccount/controller/cubit/create_account_cubit.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/component/bodyCreateAccount.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/component/ButtonSinup.dart';
import 'package:hamzawyapp/features/auth/createAccount/view/component/TextFormFieldName.dart';

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
                title: Text(
                  "Create Account",
                  style: TextStyle(color: Color(0xffFFF2BC)),
                ),
                backgroundColor: Color(0xffD84012),
              ),
              backgroundColor: Color(0xffFFF2BC),
              body: BodyCreateAccount(controller:controller,));
        },
      ),
    );
  }
}
