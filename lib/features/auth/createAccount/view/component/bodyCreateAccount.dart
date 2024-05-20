import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import '../../../../../core/Emailvaild.dart';
import '../../../../../core/MyVaidPass.dart';
import '../../../../../core/NameVaild.dart';
import '../../../../../core/PhoneVild.dart';
import '../../../../../core/TextFormFieldEmail.dart';
import '../../../../../core/TextFormFieldPassword.dart';
import '../../../../../core/TextFormFieldPhone.dart';
import '../../../login/view/component/image1.dart';
import '../../controller/cubit/create_account_cubit.dart';




class BodyCreateAccount extends StatelessWidget {
  BodyCreateAccount({super.key, required this.controller});
  CreateAccountCubit controller;
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAccountCubit>.value(
      value: controller,
      child: BlocBuilder<CreateAccountCubit, CreateAccountState>(
        builder: (context, state) {
          return Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/100),
            child: ListView(
              children: [
             //   Text("${MediaQuery.of(context).size.width}"),
                SizedBox(height: MediaQuery.of(context).size.height/7 ,),
               TextFormField(
              controller: controller.name,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              strutStyle: StrutStyle(height:MediaQuery.of(context).size.height/500 ),
              decoration: InputDecoration(
                  label: Text("Name"),
                  labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                  suffixIcon: Icon(Icons.person),
                  iconColor: Colors.black,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xffD84012),
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
                        color: const Color(0xffD84012),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Enter your Name"),
              validator: NameVaild().myVaild,
            ),
                SizedBox(
                 height: MediaQuery.of(context).size.height/40,
                 
                ),
              TextFormField(
            keyboardType: TextInputType.phone,
            controller: controller.phone,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                label: Text("Phone Number"),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                suffixIcon: Icon(Icons.phone),
                iconColor: Colors.black,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
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
            strutStyle: StrutStyle(height:MediaQuery.of(context).size.height/500 ),
          ),
                SizedBox(
                   height: MediaQuery.of(context).size.height/40,
                ),
            TextFormField(
            
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+com"))
            ],
            controller: controller.email,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: InputDecoration(
                label: Text("Email"),
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                suffixIcon: Icon(Icons.email),
                iconColor: Colors.black,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintStyle: TextStyle(color: Colors.black),
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Enter your email"),
            validator: EmailVaild().myVaild,
          
           strutStyle: StrutStyle(height:MediaQuery.of(context).size.height/500 ),
          ),
                SizedBox(
                   height: MediaQuery.of(context).size.height/40
                ),
                TextFormField(
            controller: controller.password,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscureText: true,
            decoration: InputDecoration(
                suffixIcon: Icon(Icons.password),
                iconColor: Colors.black,
                filled: true,
                labelText: "Password",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color(0xffD84012),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: const Color.fromARGB(251, 235, 175, 9),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(251, 235, 175, 9),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(10)),
                hintText: "Enter your Password"),
            validator: PassVaild().myVaild,
            strutStyle: StrutStyle(height:MediaQuery.of(context).size.height/500 ),
          ),
                SizedBox(
                 height: MediaQuery.of(context).size.height/40
                ),
               Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: FilledButton(
          onPressed: () {
          
          
          },
          child: Text(
            "Sin up",
            style: TextStyle(color:Color(0xffFFF2BC), fontSize: 18),
          ),
          style:ButtonStyle(
              backgroundColor:MaterialStatePropertyAll( Color(0xffD84012)),
             
              padding:MaterialStatePropertyAll( EdgeInsets.symmetric(horizontal:MediaQuery.of(context).size.width/30 , vertical:MediaQuery.of(context).size.height/80)),
              shape:MaterialStatePropertyAll( RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))))),
    )
         ,
                SizedBox(
                 height: MediaQuery.of(context).size.height/80
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "have an Account ?",
                      style: TextStyle(fontSize: 18),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'login');
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xffD84012),
                              decoration: TextDecoration.underline),
                        ))
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
