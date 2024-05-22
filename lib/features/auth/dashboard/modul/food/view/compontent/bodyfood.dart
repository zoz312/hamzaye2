import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/controller/cubit/food_cubit.dart';
import 'package:hamzawyapp/features/auth/dashboard/modul/food/model/QuntityModel/qunmod.dart';

class bodyfood extends StatelessWidget {
  const bodyfood(
      {super.key, required this.foodModel, required this.controller});
  final FoodModel foodModel;
  final FoodCubit controller;

  @override
  Widget build(BuildContext context) {
    int cont = 0;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        foodModel.name ?? 'rezo',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(foodModel.desc ?? 'yameeee',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text('\$',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          Text((foodModel.ava ?? 0).toString(),
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                        ],
                      ),
                      Text((foodModel.que ?? 0).toString(),
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: .5,
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: foodModel.fav == 1
                        ? const Icon(CupertinoIcons.heart_fill,
                            color: Colors.white)
                        : const Icon(CupertinoIcons.heart,
                            color: Colors.white),
                    onTap: () {
                      if (foodModel.fav == 1) {
                        controller.addfav(foodModel.id ?? 0, 0);
                      } else {
                        controller.addfav(foodModel.id ?? 0, 1);
                      }
                      print('id ' + '${foodModel.id}');
                      print('f ' + '${foodModel.fav}');
                    },
                  ),
                  Container(
                    width: .5,
                    height: 50,
                    color: Colors.black,
                  ),
                 
                  IconButton(
                    onPressed: () {
                      controller.delte(foodModel.id ?? 0);
                    },
                    icon: Icon(CupertinoIcons.delete),
                  )
                  /*  InkWell(
                    child: foodModel.fav == 1
                        ? const Icon(CupertinoIcons.cart,color: Colors.blue)
                        : const Icon(CupertinoIcons.cart,color: Colors.blue),
                    onTap: () {
                      if(foodModel.cart ==1){
                      controller.addcart(foodModel.id ?? 0,0);}
                     else{
                      controller.addcart(foodModel.id ?? 0,1);
                     }
                    },
                  ),*/
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
