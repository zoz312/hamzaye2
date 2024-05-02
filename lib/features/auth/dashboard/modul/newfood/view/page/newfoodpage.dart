import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hamzawyapp/features/auth/NewPassword/controller/cubit/newpass_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/newfood/controller/cubit/newfood_cubit.dart';

class pagenew extends StatelessWidget {
  const pagenew({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NewfoodCubit>(
      create: (context) => NewfoodCubit(),
      child: BlocBuilder<NewfoodCubit, NewfoodState>(
        builder: (context, state) {
          NewfoodCubit contoller = context.read<NewfoodCubit>();
          return Scaffold(
            appBar: AppBar(),
              body: ListView(
            children: [
              TextFormField(
                controller: contoller.namecontroller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    label: Text("Name food"),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
                    
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
                    hintText: "Enter name food"),
              ),
              TextFormField(
                controller: contoller.desccontroller,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                    label: Text("descriptin"),
                    labelStyle: TextStyle(color: Colors.black, fontSize: 20),
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
                    hintText: "Enter decription"),
              ),
              
              TextFormField(
                controller: contoller.avacontrooler,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  label: Text("available"),
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
                ),
              ),
              IconButton(
                icon: Icon(CupertinoIcons.photo),
                onPressed: contoller.poicktake,
              ),
              IconButton(
                icon: Icon(CupertinoIcons.camera),
                onPressed: contoller.poicktake,
              ),
              
              TextButton(
                  onPressed:contoller.addnewfood, child: Text('add food'))
            ],
          ));
        },
      ),
    );
  }
}
