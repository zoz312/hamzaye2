import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/ForgetPasswod/controller/cubit/forgetpassword_cubit.dart';

import '../../../../../core/PhoneVild.dart';
import '../../../../../core/TextFormFieldPhone.dart';
import '../../../login/view/component/image1.dart';
import 'buttonForgetcon.dart';

class bodyFoget extends StatelessWidget {
  bodyFoget({super.key, required this.controller});
  ForgetpasswordCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgetpasswordCubit>.value(
     value: controller,
      child: BlocBuilder<ForgetpasswordCubit, ForgetpasswordState>(
        builder: (context, state) {
          return Container(
            color: Theme.of(context).backgroundColor,
            padding: const EdgeInsets.all(20.0),
            child: Form(
                child: ListView(
              children: [
                 SizedBox(
                  height:MediaQuery.of(context).size.height/2,
                ),
             //   image3(),
                Text(
                  "Don't worry ! It happens. Please enter the phone number we will send the OTP in this Phone Number.",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  controller: controller.phone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                      label: Text("Phone Number"),
                      labelStyle: TextStyle(color: const Color.fromARGB(255, 59, 58, 58), fontSize: 20),
                      suffixIcon: Icon(Icons.phone),
                      iconColor: Colors.black,
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).cardColor,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      hintStyle: TextStyle(color: Colors.black),
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: const Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffD84012),
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10)),
                      hintText: "Enter your phone number"),
                  validator: PhoneVaild().myVaild,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                buttonForgetcon()
              ],
            )),
          );
        },
      ),
    );
  }
}
