import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/login/view/component/image1.dart';
import 'package:hamzawyapp/features/auth/verification/controller/cubit/verification_cubit.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

// ignore: camel_case_types
class body_verification extends StatelessWidget {
  body_verification({super.key, required this.controller});
  VerificationCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerificationCubit>.value(
      value: controller,
      child: BlocBuilder<VerificationCubit, VerificationState>(
        builder: (context, state) {
          return ListView(
            children: [
              SizedBox(
                height: 70,
              ),
           //   image3(),
              Center(
                child: const Text(
                  'Verify your Phone',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              PinCodeTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                length: 4,
                obscureText: true,
                obscuringCharacter: '*',
               
                blinkWhenObscuring: true,
              
                validator: (v) {
                  if (v!.length < 3) {
                    return "I'm from validator";
                  } else {
                    return null;
                  }
                },
                controller: controller.pin,
                pinTheme: PinTheme(
                  inactiveColor:Theme.of(context).cardColor,
                  fieldOuterPadding: EdgeInsets.all(10),
                  selectedColor:Theme.of(context).cardColor,
                  activeColor:Theme.of(context).cardColor,
                  errorBorderColor:Colors.red,
                  selectedFillColor:Colors.white,
                 inactiveFillColor:Colors.white,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 50,
                  activeFillColor: Colors.white,
                ),
                cursorColor: Colors.black,
                animationDuration: const Duration(milliseconds: 300),
                enableActiveFill: true,
              
                keyboardType:TextInputType.number,
                boxShadows: const [
                  BoxShadow(
                    offset: Offset(0, 1),
                    color: Colors.black12,
                    blurRadius: 10,
                  )
                ],
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                // onTap: () {
                //   print("Pressed");
                // },
              
                beforeTextPaste: (text) {
                  debugPrint("Allowing to paste $text");
                  //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                  //but you can show anything you want here, like your pop up saying wrong paste format or etc
                  return true;
                },
              ),
               const SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 99),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'newpass');
                    controller.ontapconf();
                  },
                  color: Theme.of(context).cardColor,
                  minWidth: 100,
                  height: 50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(11)),
                  child:  Text(
                    'Ok',
                    style: TextStyle(fontSize: 20, color:  Theme.of(context).backgroundColor,),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
